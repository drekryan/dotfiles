export BASH_SILENCE_DEPRECATION_WARNING=1
PATH=usr/local/bin:$PATH:/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/:Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin

eval "$(/opt/homebrew/bin/brew shellenv)"

# Load dotfiles:
for file in ~/.{bash_prompt,aliases,private}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

#gh command completions
eval "$(gh completion -s bash)"
