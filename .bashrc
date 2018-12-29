#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return



PS1='[\u@\h \W]\$ '
if [ -f ~/.dircolors ]; then
    eval `dircolors ~/.dircolors`
fi


#$GAME_DATA/alias_generator $GAME_DATA/aliases
#. $GAME_DATA/aliases
#cd $GAME_DATA/unlocked 
#unalias $(/usr/bin/ls | /usr/bin/sed "s/.*\///") 2> /dev/null
alias ls='ls --color=auto'
alias more='more -d '
#cd

unset -f gawkpath_append
unset -f gawkpath_default
unset -f gawkpath_prepend

unset -f gawklibpath_append
unset -f gawklibpath_default
unset -f gawklibpath_prepend


#PATH=${HOME}/.local/bin:${PATH}

OLD_PATH=${PATH}
PATH=${HOME}/.local/bin

GAME_BIN=${HOME}/.local/bin
GAME_DATA=${HOME}/.local/archland_data

GET_DIR=${GAME_DATA}/get
INVENTORY_DIR=${GAME_DATA}/inventory
ITEMS_DIR=${GAME_DATA}/items

export OLD_PATH

export GAME_DATA
export GAME_BIN

export GET_DIR
export INVENTORY_DIR
export ITEMS_DIR


showed_intro_path=$GAME_DATA/showed_intro.mem
if [[ ! -e "$showed_intro_path" ]]
then
	/usr/bin/touch "$showed_intro_path"
	intro
else
	echo -e "\e[97mWelcome back! \e[0mIf it's been a while, the \e[92mintro \e[0mand"\
		"\e[92minventory \e[0mcommands should be helpful."
fi
