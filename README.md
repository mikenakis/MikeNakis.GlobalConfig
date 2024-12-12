# MikeNakis.GlobalConfig<br><sub><sup>My very own™ GlobalConfig for DotNet.</sub></sup>

The sole purpose of this repository is to contain some `.globalconfig` files.

Currently, this repository is meant to be cloned side-by-side with my other projects, so that each project file can contain inclusions like the following:

```xml
<ItemGroup>
    <GlobalAnalyzerConfigFiles Include="../../MikeNakis.GlobalConfig/AllCode.globalconfig" />
    <GlobalAnalyzerConfigFiles Include="../../MikeNakis.GlobalConfig/ProductionCode.globalconfig" />
</ItemGroup>
```

This repository also contains a `.csproj` file, so that, by including it within other solutions, Visual Studio will consider this repository among other repositories to pull from / push to, and will allow us to view, edit, search etc. the files in this repository.

TODO: Turn this into a NuGet package which, when referenced by a project, supplies the globalconfig files
so that the project does not need to reference an external file.

## License

See [LICENSE.md](LICENSE.md)
