param (
    [string]$packageVersion = "3.31.0",
    [string]$pythonExe = "python"
)

$venvDir = "${env:ChocolateyInstall}\lib\xml2rfc"

& "$pythonExe" -m venv $venvDir
& "$venvDir\Scripts\pip" install "xml2rfc==$packageVersion"

$executablePath = "$venvDir\Scripts\xml2rfc.exe"
Install-BinFile -Name xml2rfc -Path $executablePath
