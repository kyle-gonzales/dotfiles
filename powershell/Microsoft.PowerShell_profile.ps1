#Aliases
Set-Alias tt tree

#Prompts

# Default theme
#oh-my-posh init pwsh | Invoke-Expression

# custom theme
oh-my-posh init pwsh --config 'C:/Users/Kyle/Documents/dotfiles/powershell/mortem.omp.json' | Invoke-Expression

# remote theme
# oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/onehalf.minimal.omp.json' | Invoke-Expression

#Functions
# function whereis ($command)
# {
#     Get-Command -Name $command -ErrorAction SilentlyContinue |
#     Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
# }

# Modules https://github.com/devblackops/Terminal-Icons
Import-Module Terminal-Icons

#Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineKeyHandler -Key Tab -Function Complete
Set-PSReadLineOption -PredictionViewStyle ListView
