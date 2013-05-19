#Set the standard 4 parameters
$packageName = 'speccy'
$fileType = 'exe'
$LCID = (Get-Culture).LCID
$silentArgs = '/S /L=$LCID'
$url = 'https://www.piriform.com/speccy/download/slim/downloadfile'

Install-ChocolateyPackage $packageName $fileType $silentArgs $url
