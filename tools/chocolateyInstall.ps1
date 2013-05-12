#Set the standard 4 parameters
$packageName = 'speccy'
$fileType = 'exe'
$silentArgs = "/S"
$url = 'https://www.piriform.com/speccy/download/slim/downloadfile'

Install-ChocolateyPackage $packageName $fileType $silentArgs $url
