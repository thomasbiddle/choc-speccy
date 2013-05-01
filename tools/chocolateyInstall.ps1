#Set the standard 4 parameters
$packageName = 'speccy'
$fileType = 'exe'
$silentArgs = "/S"
$url = 'http://download.piriform.com/spsetup121.exe'

Install-ChocolateyPackage $packageName $fileType $silentArgs $url
