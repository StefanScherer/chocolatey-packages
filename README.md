chocolatey-packages
===================

This is a repository of the packages I maintain for the [Chocolatey Package Manager](http://chocolatey.org/).

## Author

- Author:: Stefan Scherer


[MIT License](https://github.com/StefanScherer/chocolatey-packages/blob/master/LICENSE)

## Building the packages

See documentation [Creating Chocolatey Packages](https://github.com/chocolatey/chocolatey/wiki/CreatePackages)

### Building Your Package

Open a command line in the directory where the nuspec is and type

```cmd
choco pack
```

That's it.

### Testing Your Package

You can spin up a Vagrant box with `vagrant up` to create and test the package in a safe environment.
To test the package you just built, with the command line still open (and in the current working directory in the same folder as the newly created `*.nupkg` file) type:  

```cmd
choco install packageName -source %cd% -pre
```
