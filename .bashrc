export PATH=/opt/local/mpich2/bin:$PATH


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
alias safari="open -a Safari"
alias chrome="open /Applications/Google\ Chrome.app"
alias bird="open -a Thunderbird"
alias tex="open -a /Applications/TeXShop.app"
alias gcc='gcc-5'

# earth simulator
alias login2es='ssh -l y0356 lunar.jamstec.go.jp'
# earth simulator login large source
alias eslogin='ssh -l p0206 lunar.jamstec.go.jp'
#alias eslogin='ssh -l y0356 lunar.jamstec.go.jp'

#$1:option(use '' ,ex:'-X -Y')
pilogin(){
     ssh $1 -i ~/pi_computer/id_rsa kohei@pi.ircpi.kobe-u.ac.jp
}

#scp to pi: upload
#$1:filename $2:path(~/path) $3:option(use '')
scpi2pi(){
    if [ "${1}" = "-r" ]; then
	scp -i ~/pi_computer/id_rsa ${1} ${2} kohei@pi.ircpi.kobe-u.ac.jp:/home/G15011/kohei/${3}
    else
	scp -i ~/pi_computer/id_rsa ${1} kohei@pi.ircpi.kobe-u.ac.jp:/home/G15011/kohei/${2}
    fi
}

#scp from pi: download
#$1:filename $2:path(~/path) $3:option(use '')
scppi2i(){
    if [ "${1}" = "-r" ]; then
	scp -i ~/pi_computer/id_rsa ${1} kohei@pi.ircpi.kobe-u.ac.jp:/home/G15011/kohei/${2} ./${3}
    else
        scp -i ~/pi_computer/id_rsa kohei@pi.ircpi.kobe-u.ac.jp:/home/G15011/kohei/${1} ./${2}
    fi
}

scppid2i(){
    if [ "${1}" = "-r" ]; then
	scp -i ~/pi_computer/id_rsa ${1} kohei@pi.ircpi.kobe-u.ac.jp:/data/G15011/kohei/${2} ./${3}
    else
        scp -i ~/pi_computer/id_rsa kohei@pi.ircpi.kobe-u.ac.jp:/data/G15011/kohei/${1} ./${2}
    fi
}

#########################################
#              end alias                #
#########################################

goo(){
    local str opt
    if [ $# != 0 ]; then
      for i in $*; do
        str="$str+$i"
      done
      str=`echo $str | sed 's/^\+//'`
      opt='search?num=50&hl=ja&lr=lang_ja'
      opt="${opt}&q=${str}"
    fi
    w3m http://www.google.co.jp/$opt
}

alc(){
  if [ $# != 0 ]; then
    w3m "http://eow.alc.co.jp/$*/UTF-8/?ref=sa"
  else
    w3m "http://www.alc.co.jp/"
  fi
}

csql() {
  if [ $# == 0 ]; then
    echo "Usage: csql username [database]"
  else
    mysql --ssl-ca=server-ca.pem --ssl-cert=client-cert.pem --ssl-key=client-key.pem --host=104.154.233.113 -u ${1} -p ${2}
  fi
}

# set bash vim mode
set -o vi
