Add-Type -AssemblyName System.Windows.Forms

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$html = Join-Path $scriptDir "screensaver.html"
# Encode spaces as %20 so the file:// URL doesn't break
$url = "file:///$($html -replace '\\','/' -replace ' ','%20')"

$edge = "${env:ProgramFiles(x86)}\Microsoft\Edge\Application\msedge.exe"
$chrome = "$env:ProgramFiles\Google\Chrome\Application\chrome.exe"

if (Test-Path $edge) { $browser = $edge }
elseif (Test-Path $chrome) { $browser = $chrome }
else {
    Start-Process $html
    exit
}

$screens = [System.Windows.Forms.Screen]::AllScreens
$i = 0

foreach ($s in $screens) {
    $b = $s.Bounds
    $args = @(
        "--new-window"
        "--start-fullscreen"
        "--no-first-run"
        "--no-default-browser-check"
        "--disable-sync"
        "--disable-infobars"
        "--disable-session-crashed-bubble"
        "--disable-extensions"
        "--disable-features=msEdgeSidebarV2,msEdgeFirstRunExperience,EdgeWelcomePage"
        "--window-position=$($b.X),$($b.Y)"
        "--window-size=$($b.Width),$($b.Height)"
        "--app=$url"
    )
    # Extra monitors need their own user-data-dir to spawn a separate process
    if ($i -gt 0) {
        $tmpDir = Join-Path $env:TEMP "solana-scr-$i"
        $args += "--user-data-dir=$tmpDir"
    }

    Start-Process $browser -ArgumentList $args
    $i++
    Start-Sleep -Milliseconds 600
}
