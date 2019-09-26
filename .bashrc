export PATH=/opt/local/mpich2/bin:$PATH

eval "$(starship init bash)"

#########################################
#                alias                  #
#########################################

alias rep="source ~/.bash_profile"

##### ls alias #####
alias ls="ls -G"
alias la="ls -a"
alias ll="ls -l"
####################
alias jobs="jobs -l"
alias date='LANG=en_US.UTF-8 date'

#########################################
#              end alias                #
#########################################

# set bash vim mode
set -o vi
