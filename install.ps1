# Comment

$CWD = $PSScriptRoot
$BACKUP_FOLDER = Join-Path $CWD backups

function Make-Link ($target, $link) {
    New-Item -Path $link -ItemType SymbolicLink -Value $target
}

function Detach-Backup ($target) {
    if (Test-Path -Path $target) {
        Move-Item -Path $target -Destination $BACKUP_FOLDER 
    }
}

$LocalVimFolder = Join-Path $HOME vimfiles
$VIM_FOLDER = Join-Path $CWD vim 

Detach-Backup $LocalVimFolder
Make-Link $VIM_FOLDER $LocalVimFolder

