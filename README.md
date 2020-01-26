# ghi-auto-create

Shell script using [ghi](https://rubygems.org/gems/ghi/versions/1.2.0) to create Github issues by reading .txt files.

## Quickstart

[ghi](https://rubygems.org/gems/ghi/versions/1.2.0) is required. Install with: 

```
  gem install ghi # sudo may be needed
  gem config --auth <username> # use github username
```

Then, add `ghi-auto-create.sh` to your repository. Then run:

```
  source ./ghi-auto-create.sh <filename> # run ghi-auto-create
```
