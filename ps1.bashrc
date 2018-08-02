GREEN=92m;
YELLOW=93m;
RED=31m;
HOST_COLOR=$GREEN;
USER_COLOR=$YELLOW;
if [[ $EUID -ne 0 ]]
then
        PS1="\[\e[$USER_COLOR\]\u\[\e[m\]@\[\e[1;$HOST_COLOR\]$(hostname -f)\[\e[m\]:$ ";
else
        PS1="\[\e[$USER_COLOR\]\u\[\e[m\]@\[\e[1;$HOST_COLOR\]$(hostname -f)\[\e[m\]:# ";
fi
