chocolatey-packages
===================

This is a repository of the packages I maintain for the [Chocolatey Package Manager](http://chocolatey.org/).

## Author

- Author:: Stefan Scherer


[MIT License](https://github.com/StefanScherer/chocolatey-packages/blob/master/LICENSE.md)

## Building the packages

See documentation [Creating Chocolatey Packages](https://github.com/chocolatey/chocolatey/wiki/CreatePackages)

### Building Your Package

Open a command line in the directory where the nuspec is and type **cpack** - that's it.

### Testing Your Package

To test the package you just built, with the command line still open (and in the current working directory in the same folder as the newly created `*.nupkg` file) type:  

```cmd
 cinst packageName -source %cd%
```

## Install Chocolatey

```@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%systemdrive%\chocolatey\bin
```

