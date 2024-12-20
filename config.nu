use ~/dev/nushell/conda.nu
alias "mamba activate" = conda activate
alias "mamba deactivate" = conda deactivate
source ~/.oh-my-posh.nu

let paths_to_add = [
    "/usr/local/bin",
    "/opt/homebrew/bin/",
    $"($env.HOME)/miniforge3/condabin",
    $"($env.HOME)/.local/bin"
]

for path in $paths_to_add {
    if ($path | path exists) {
        $env.PATH = ($env.PATH | split row (char esep) | prepend $path)
    }
}

# Parse git log into a structured table.
def glog [] {
  (git log --pretty="%h»¦«%s»¦«%aN»¦«%aE»¦«%aD" -n 5 
    | lines
    | split column "»¦«" commit subject name email date
    | upsert date {|d| $d.date | into datetime}
  )
}


def doubleexit [] { ^ps -p $nu.pid -o ppid= | xargs -n 1 kill -9 }

alias qnu = exit
alias quit = doubleexit

