#!/usr/bin/env bash

# Charaters
# LIB: TUI
# Made by: Oak atsume
# License: TacoByte-Adminstration 
# Note: Used for an open-source project.
export ASCIILINES=(
    '═' # Index 0
    '║' # Index 1
    '╚' # Index 2
    '╝' # Index 3
    '╠' # Index 4
    '╣' # Index 5
    '╔' # Index 6
    '╗' # Index 7
)

Variables() {
    shopt -s checkwinsize
    (
        :
        :
    )
    export Size=$((LINES * COLUMNS - COLUMNS))
    export Y=${LINES}
    export X=${COLUMNS}
    export _X_="${LINES}"
    export _Y_="${COLUMNS}"
    #export MiddleX="$(( X / 2 ))"
} # Declare variables

RandomPick() {
    if [[ -z "${1}" ]]; then
        echo -e "[\e[1m\e[7m${FUNCNAME[0]}\e[m]: \e[5m\e[41mError\e[m\e[1m Line: (\e[4m${BASH_LINENO[0]}\e[m\e[1m) Missing value\e[m"
    else
        local arr=("$@")
        printf '%s\n' "${arr[RANDOM % $#]}"
    fi
} # Pick Random from input data

DrawWindow() {

    for ((a = 0; a <= Y; a++)); do
        echo -ne "\e[${a};${X}H${ASCIILINES[1]}"
        echo -ne "\e[${a};0H${ASCIILINES[1]}"
    done # Draw down X: Limit to Y: Max edge down line

    for ((a = 0; a <= X; a++)); do
        echo -ne "\e[${X};${a}H${ASCIILINES[0]}" # Drawns total down line
        if [[ "${a}" == "${X}" ]]; then
            echo -ne "\e[${X};${a}H${ASCIILINES[3]}" # Draws Left face border
            echo -ne "\e[${X};0H${ASCIILINES[2]}"    # Draws Right face border
        fi
    done

    for ((a = 0; a <= X; a++)); do
        echo -ne "\e[3;${a}H${ASCIILINES[0]}" # MAIN
    done                                      # Draw straight X cord in line 3

    echo -ne "\e[3;0H${ASCIILINES[4]}"    # Draws Index[4] at line 3
    echo -ne "\e[3;${X}H${ASCIILINES[5]}" # Draws Index[5] at line 3

    for ((a = 0; a <= X; a++)); do
        echo -ne "\e[0;${a}H${ASCIILINES[0]}"
        if [[ "${a}" == "${X}" ]]; then
            echo -ne "\e[0;0H${ASCIILINES[6]}"
            echo -ne "\e[0;${X}H${ASCIILINES[7]}"
        fi
    done # Draw straight X cord in line 0

    printf "\n\n\n"

}
WindowSetTitle() {
    if [[ -z "${1}" ]]; then
        echo -e "[\e[1m\e[7m${FUNCNAME[0]}\e[m]: \e[5m\e[41mError\e[m\e[1m Line: (\e[4m${BASH_LINENO[0]}\e[m\e[1m) Missing value\e[m"
    else
        local Count=0
        while read -n1 -r INS; do
            echo "${INS}" >/dev/null
            ((Count++))
        done <<<"${1}"
        if [[ -z "${2}" ]]; then
            local TitleLine="2"
        else
            local TitleLine="${2}"
        fi
        local Middle="$(((X / 2) - Count))"
        echo -ne "\e[1m\e[${TitleLine};${Middle}H${1}\e[m"
    fi
    printf "\n"
}
WindowWrite() {
    if [[ -z "${1}" ]]; then
        echo -e "[\e[1m\e[7m${FUNCNAME[0]}\e[m]: \e[5m\e[41mError\e[m\e[1m Line: (\e[4m${BASH_LINENO[0]}\e[m\e[1m) Missing value\e[m"
        echo -e "\n[${FUNCNAME[0]}]: 1: X 2: Y"
        return 1
    else
        local Count=0
        local LocationX="$((${1} + 4))"
        local LocationY="$((${2} + 2))"
        if [[ "${LocationX}" -ge "${Y}" ]]; then
            return 5
        elif [[  "${LocationY}" -ge "${X}" ]]; then
            return 5
        else
            echo -ne "\e[${LocationX};${LocationY}H${3}"
        fi
    fi
}
ConsoleClear() {
    printf "\e[2J\e[f"
}


DrawLogo(){
	local Num=0
	for (( a=0; a<="${#Logo[@]}"; a++ )); do
		((Num++))
		WindowWrite "${Num}" "$(( ${X} / 2 - ${#Logo[${a}]} ))" "${Logo[$a]}"
	done
}

# EnviromentVariable
# ConsoleClear
# DrawWindow
# WindowSetTitle "Hewwo world!"
# WindowWrite 1 0 "Hello there!"
# WindowWrite 2 0 "owo"
# WindowWrite 3 0 "hi!"
# # local CX="$(( Y / 2 ))"
# #     export CX="$(( CX - AA ))"


HighLight(){
	local Position="${1}"
	local Option="${2}"
	local Color="\e[48;2;211;211;211m"
	WindowWrite "${Position}" 1 "${Color}${Option}\e[m"
}
Logo=(
     '-------------'
     '."".    ."", '
     '|  |   /  /  '
     '|  |  /  /   '
     '|  | /  /    '
     '|  |/  ;-._  '
     '}  ` _/  / ; '
     '|  /` ) /  / '
     '| /  /_/\_/\ '
     '|/  /      | '
     '(    \  -  | '
     ' \    `.  /  '
     '  |      |   '
     '  |      |   '
     '-------------'
)
ConsoleClear
Variables
DrawWindow
WindowSetTitle "Snap!"
DrawLogo
read -rt "1" <> <(:) || :
ConsoleClear
DrawWindow
WindowSetTitle "Snap!"

Options=(
	'Back-It-Up!' # 0 # 1 
	'Restore-It!' # 1 # 2 
	'Update-It! ' # 2 # 3
	'Exit-It!   ' # 3 # 4
)

Position=0
InLoop=true
while $InLoop; do
	#ConsoleClear
	case "${Position}" in
		'0')
			WindowWrite  1 1 "${Options[1]}"
			WindowWrite  2 1 "${Options[2]}"
			WindowWrite  3 1 "${Options[3]}"
			;;
		'1')
			WindowWrite  0 1 "${Options[0]}"
			WindowWrite  2 1 "${Options[2]}"
			WindowWrite  3 1 "${Options[3]}"
			;;
		'2')
			WindowWrite  0 1 "${Options[0]}"
			WindowWrite  1 1 "${Options[1]}"
			WindowWrite  3 1 "${Options[3]}"
			;;
		'3')
			WindowWrite  0 1 "${Options[0]}"
			WindowWrite  1 1 "${Options[1]}"
			WindowWrite  2 1 "${Options[2]}"
			;;
	esac
	HighLight "${Position}" "${Options[${Position}]}"
	read  -r -sn1 key
	case "${key}" in
		'B') # DOWN
			if [[ "${Position}" != "${#Options[@]}" ]]; then
				Position="$(( Position + 1 ))"
			fi
			;;
		'A') # UP
			if [[ "${Position}" != "0" ]]; then
				Position="$(( Position - 1))"
			fi

			;;
		'q')
			exit 4
			;;
		'')
			case "${Position}" in
				0)
					SaveFolder="/sdcard/snapback"
					ConsoleClear
					WindowSetTitle "Snap! [Back-It-Up!]"
					DrawWindow
					WindowWrite 4 1 "Checking for saved BackUp's"
					if [[ -d "${SaveFolder}" ]]; then
						WindowWrite 5 1 "Woop's! there is already a saved BackUp!"
					else
						mkdir "${SaveFolder}"
						Num=5
						for a in $HOME/* ; do
							((Num++))
							WindowWrite "${Num}" 1 "${a} > ${SaveFolder}"
							if [[ ! -h "${a}" ]]; then
								cp -r "${a}" "${SaveFolder}" 2>/dev/null
							fi
						done
					fi
					;;
				1)
					ConsoleClear
					WindowSetTitle "Snap! [Restore-It!]"
					DrawWindow
					
					;;
				2)
					ConsoleClear
					WindowSetTitle "Snap! [Update-It!]"
					DrawWindow
					
					;;
				3)
					ConsoleClear
					WindowSetTitle "Snap! [Exit-It!]"
					DrawWindow
					
					;;
			esac
			;;
	esac
done
#DrawLogo
#HighLight 1  "Welcome to SNAP!"
#HighLight 2  "[1]: Back-it-Up!"
#HighLight 3  "[2]: Restore-it!"
#HighLight 4  "[3]: Update-it!"
#HighLight 5  "[4]: Exit-It!"
# #HighLight 6 "Exit-It!"# #




#while [[ ${Game} ]];  do
#        #ConsoleClear
#        read -t 0.5 -r -sn1 key
#        case "${key}" in
#                'A') { Locations["CursorY"]="$(( ${Locations[CursorY]} - 1 ))"; Cursor='A'; } ;;
#                'B') { Locations["CursorY"]="$(( ${Locations[CursorY]} + 1 ))"; Cursor='B'; } ;;
#                'C') { Locations["CursorX"]="$(( ${Locations[CursorX]} + 1 ))"; Cursor='C'; } ;;
#                'D') { Locations["CursorX"]="$(( ${Locations[CursorX]} - 1 ))"; Cursor='D'; } ;;
#                'q') { printf "\e[?25h"; exit; } ;; # Quit and re-enable cursor
#                *)
#                        if [[ -z "${key}" ]]; then
#                        case "${Cursor}" in
#                                'A') { Locations["CursorY"]="$(( ${Locations[CursorY]} - 1 ))"; Cursor='A'; } ;;
#                                'B') { Locations["CursorY"]="$(( ${Locations[CursorY]} + 1 ))"; Cursor='B'; } ;;
#                                'C') { Locations["CursorX"]="$(( ${Locations[CursorX]} + 1 ))"; Cursor='C'; } ;;
#                                'D') { Locations["CursorX"]="$(( ${Locations[CursorX]} - 1 ))"; Cursor='D'; } ;;
#                        esac
#                        fi
#                ;;
#        esac
#        ConsoleClear
#        DetectHit 5 10
#        DetectFinish 20 3
#        echo -ne "\e[${Locations[CursorY]};${Locations[CursorX]}H${Cursor}"
#done
