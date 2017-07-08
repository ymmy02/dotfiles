if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
#source ~/.bashrc

#Macports

# Homebrew
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

if [ x${WINDOW} = x ]; then
  PS1="\[\033[35m\]§kohei§\[\033[0m\]:\u \W$ "
else
  export PS1="\[\033[35m\]§kohei§\[\033[0m\]:\u[${WINDOW}] \W$ "
fi


# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/ymmy/GoogleCloudPlatform/google-cloud-sdk/path.bash.inc ]; then
  source '/Users/ymmy/GoogleCloudPlatform/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/ymmy/GoogleCloudPlatform/google-cloud-sdk/completion.bash.inc ]; then
  source '/Users/ymmy/GoogleCloudPlatform/google-cloud-sdk/completion.bash.inc'
fi
