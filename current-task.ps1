$pathToChrome = 'C:\Program Files (x86)\Google\Chrome\Application\chrome.exe' # path for Chrome executable, change accordingly
$tempFolder = '--user-data-dir=c:\temp' # pick a temp folder for user data
$startmode = '--start-fullscreen' # '--kiosk' is another option
$currentPath = (Get-Location).tostring()
$startPage = Join-Path -Path $currentPath -ChildPath "\task.html"

Start-Process -FilePath $pathToChrome -ArgumentList $tempFolder, $startmode, $startPage