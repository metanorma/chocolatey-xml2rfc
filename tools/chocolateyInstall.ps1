param (
    [string]$packageVersion = "3.24.0",
    [string]$pythonExe = "python"
)

$packageUrl = "https://github.com/ietf-tools/xml2rfc/releases/download/v${packageVersion}/xml2rfc-${packageVersion}.tar.gz"
$venvDir = "${env:ChocolateyInstall}\lib\xml2rfc"

& "$pythonExe" -m venv $venvDir
& "$venvDir\Scripts\pip" install $packageUrl

$executablePath = "$venvDir\Scripts\xml2rfc.exe"
Install-BinFile -Name xml2rfc -Path $executablePath
