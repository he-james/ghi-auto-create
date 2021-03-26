# ghi-auto-create

Shell script using [ghi](https://rubygems.org/gems/ghi/versions/1.2.0) to create Github issues by reading .txt files.

**Author's Note**: I would probably advise you now to use the [GitHub CLI](https://cli.github.com/), which may or may not have this feature,
but does have builtin issue creation. A small adaptation of this script could handle bulk issue creation if 
GH does not have that. For now, I consider this script **deprecated**.

## Quickstart

[ghi](https://rubygems.org/gems/ghi/versions/1.2.0) is required. Install with: 

```
  gem install ghi # sudo may be needed
  gem config --auth <username> # use github username
```

Then, add `ghi-auto-create.sh` to your repository. Then run:

```
  source ./ghi-auto-create.sh <filename.txt> # run ghi-auto-create
```

The script maps each line of filename.txt to an array and runs `ghi open` to open each line as a new issue.
