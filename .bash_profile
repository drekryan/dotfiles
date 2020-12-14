export BASH_SILENCE_DEPRECATION_WARNING=1
PATH=$PATH:/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/:Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin

# Load dotfiles:
for file in ~/.{bash_prompt,aliases,private}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;