$width = 400
$height = 150

# Find Google Chrome
$chrome = "${env:ProgramFiles}\Google\Chrome\Application\chrome.exe"

if (-not (Test-Path $chrome)) {
    $chrome = "${env:ProgramFiles(x86)}\Google\Chrome\Application\chrome.exe"
}

if (-not (Test-Path $chrome)) {
    Write-Host "Google Chrome could not be found."
    exit 1
}

# Start the clock as a standalone Chrome window
Start-Process -FilePath $chrome -ArgumentList @(
    "--app=$clockURL"
    "--window-size=$width,$height"
    "--new-window"
)
