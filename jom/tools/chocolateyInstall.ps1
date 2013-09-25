try 
{ 
    $name    = 'jom'
    $url     = 'http://download.qt-project.org/official_releases/jom/jom.zip'
    $tools   = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
    $content = Join-Path (Split-Path $tools) 'content'

    Install-ChocolateyZipPackage $name $url $content
    
    # List the installed components
    $jom  = Join-Path $content 'jom.exe'
    $cmd  = Join-Path $content 'ibjom.cmd'
    
	# Ignore
    @($cmd) | %{ New-Item "$_.ignore" -type file }
    
} 
catch 
{
    Write-ChocolateyFailure $name "$($_.Exception.Message)"
    throw 
}

