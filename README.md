# MikeNakis.GlobalConfig<br><sup><sub>My very own™ GlobalConfig for DotNet.</sub></sup>

<p align="center">
  <img title="MikeNakis.GlobalConfig Logo" src="MikeNakis.GlobalConfig-Logo.svg" width="256" />
</p>

[![Build](https://github.com/mikenakis/MikeNakis.GlobalConfig/actions/workflows/github-workflow.yml/badge.svg)](https://github.com/mikenakis/MikeNakis.GlobalConfig/actions/workflows/github-workflow.yml)

This repository contains my `.globalconfig` files.

To make use of it, add the following to your .csproj file:

```xml
<ItemGroup>
    <PackageReference Include="MikeNakis.GlobalConfig" Version="1.0.*" />
    <!-- PEARL: if any of these files is not found, msbuild responds with silent failure. -->
    <GlobalAnalyzerConfigFiles Include="$(MikeNakisConfigFiles)AllCode.globalconfig" />
    <GlobalAnalyzerConfigFiles Include="$(MikeNakisConfigFiles)ProductionCode.globalconfig" />
</ItemGroup>
```

## License

See [LICENSE.md](LICENSE.md)
