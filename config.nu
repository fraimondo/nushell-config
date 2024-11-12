use ~/dev/nushell/conda.nu
alias "mamba activate" = conda activate
alias "mamba deactivate" = conda deactivate
source ~/.oh-my-posh.nu
$env.PATH = ($env.PATH | split row (char esep) | prepend '/usr/local/bin')
$env.PATH = ($env.PATH | split row (char esep) | prepend $"($env.HOME)/.local/bin")

def glog [] { git log --pretty="%h»¦«%s»¦«%aN»¦«%aE»¦«%aD" -n 5 | lines | split column "»¦«" commit subject name email date | upsert date {|d| $d.date | into datetime}}

