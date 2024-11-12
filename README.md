# Nushell config

My nushell custom config

## 1. Install nushell

A) Using homebrew
```
brew install nu
```

B) or using cargo


```
curl https://sh.rustup.rs -sSf | sh
```

and then

```
cargo install nu
```

## 2. Install oh-my-posh

```
brew install jandedobbeleer/oh-my-posh/oh-my-posh
```

or

```
curl -s https://ohmyposh.dev/install.sh | bash -s
```

## 3. Configure oh-my-posh

Replace ``~/dev/nushell`` with the location of this repository clone

```
oh-my-posh init nu --config ~/dev/nushell/robbyrusell-host.omp.json
```

## 4. Add the `config.nu` file to `$nu.env-path`

```
vim $nu.env-path
```

Add the following as the last line, replacing ``~/dev/nushell`` with the location of this repository clone

```
source ~/dev/nushell/config.nu
```