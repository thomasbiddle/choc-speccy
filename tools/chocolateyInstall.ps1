#Set the standard 4 parameters
$packageName = 'speccy'
$fileType = 'exe'
$LCID = (Get-Culture).LCID
$silentArgs = "/S /L=$LCID"
# Check this page for new versions: http://biblprog.org.ua/en/speccy/
# Please don’t use the normal version of speccy as it includes and would install silently toolbars or probably unwanted third-party adware. Chocolatey users don’t like that.
# A new slim version of Speccy gets released about a week after the normal version. Please be patient, wait for the new slim version and link it here.
$url = 'http://files2.biblprog.org.ua/soft/S/Speccy/spsetup121_slim.exe'
$filePath = "$env:TEMP\chocolatey\$packageName"
$fileFullPath = "$filePath\$packageName`Install.exe"


# Use wget to download this and use --referer=http://biblprog.org.ua/en/speccy/

try {
	if (-not (Test-Path $filePath)) {
		New-Item -ItemType directory -Path $filePath
	}

	Start-Process "wget" -ArgumentList "--referer=http://biblprog.org.ua/en/speccy/ $url -O `"$fileFullPath`"" -Wait

	Install-ChocolateyInstallPackage $packageName $fileType $silentArgs $fileFullPath
	
    Write-ChocolateySuccess "$packageName"
} catch {
    Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
    throw
}