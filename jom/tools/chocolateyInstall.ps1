try 
{ 
    $name    = 'jom'
    $url     = 'ftp://ftp.qt.nokia.com/jom/jom.zip'
    $tools   = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
    $content = Join-Path (Split-Path $tools) 'content'

    Install-ChocolateyZipPackage $name $url $content
    
    # List the installed components
    #$bin  = Join-Path $content 'jom-1.0.11\bin'
    $jom  = Join-Path $content 'jom.exe'
    $cmd  = Join-Path $content 'ibjom.cmd'
    
	# Ignore
    @($cmd) | %{ New-Item "$_.ignore" -type file }
        
    # Update the path
    #[Environment]::SetEnvironmentVariable("Path", $env:Path + ";" + $bin, [System.EnvironmentVariableTarget]::Machine)
    #$env:Path = $env:Path + ";" + $bin
} 
catch 
{
    Write-ChocolateyFailure $name "$($_.Exception.Message)"
    throw 
}