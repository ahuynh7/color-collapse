# Color Collapse
A wave function collapse algorithm implementation using colors' HSL value as constraints.

### Environment
Setting up the workspace environment and building dependencies--assuming Julia is installed and added to PATH.  Navigate to the project dir then in a command line:
```
julia --project=@. --color=yes --check-bounds=yes -e 'using Pkg; Pkg.instantiate(); Pkg.build();'
julia --project=@. --color=yes --check-bounds=yes -e 'using Genie; Genie.Generator.setup_windows_bin_files(); Genie.Generator.write_secrets_file()'
```
To deploy:
```
./bin/server
```