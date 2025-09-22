# My nushell config

```bash
cd $nu.default-config-dir

git init
git remote add origin https://github.com/rondymesquita/dotfiles.git
git fetch
git reset --hard origin/main
```

## Setup

### Linux

```
curl -L https://github.com/nushell/nushell/releases/download/0.107.0/nu-0.107.0-x86_64-unknown-linux-gnu.tar.gz --output nushell.tar.gz

tar -xvf nushell.tar.gz
```
