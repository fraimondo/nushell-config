use ~/dev/nushell/conda.nu
alias "mamba activate" = conda activate
alias "mamba deactivate" = conda deactivate
source ~/.oh-my-posh.nu
$env.PATH = ($env.PATH | split row (char esep) | prepend '/usr/local/bin')
$env.PATH = ($env.PATH | split row (char esep) | prepend $"($env.HOME)/.local/bin")
