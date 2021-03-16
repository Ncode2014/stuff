function upload_dual() {
    echo ""
	echo "Let's go upload my shit "
	cd Output && sh upload_dual.sh
	echo ""
}

function grap() {
    echo ""
	echo "auto grapper torrent "
	bash maker.sh
    echo ""
}

function removetx() {
    echo ""
    echo "just nothing"
	rm -f *.txt
    echo ""
}

function gitkondisi() {
    echo ""
	git status
    echo ""
}

function beda() {
    echo ""
	cd Output && cp *.txt ../
	git diff
    echo ""
}

function install_tool() {
    echo ""
	sudo apt install python3 python3-pip -y
	pip3 install -r requirements.txt
    echo ""
}

function combiner() {
    echo ""
	bash combiner.sh
    echo ""
}

##
# Color  Variables
##
green='\e[32m'
blue='\e[34m'
clear='\e[0m'

##
# Color Functions
##

ColorGreen(){
	echo -ne $green$1$clear
}
ColorBlue(){
	echo -ne $blue$1$clear
}

menu(){
echo -ne "
Uploader v2 remake 
$(ColorGreen '1)') Upload Dual To Github
$(ColorGreen '2)') Grab Tracker List (For Dual)
$(ColorGreen '3)') Bersih - Bersih 
$(ColorGreen '4)') Cek Github kondisi
$(ColorGreen '5)') Cek perbedaan
$(ColorGreen '6)') Wajib Install
$(ColorGreen '7)') combine all text
$(ColorGreen '0)') Exit
$(ColorBlue 'Choose an option:') "
        read a
        case $a in
	        1) upload_dual ; menu ;;
	        2) grap ; menu ;;
	        3) removetx ; menu ;;
	        4) gitkondisi ; menu ;;
	        5) beda ; menu ;;
	        6) install_tool ; menu ;;
	        7) combiner ; menu ;;
		0) exit 0 ;;
		*) echo -e $red"Wrong option."$clear; WrongCommand;;
        esac
}

# Call the menu function
menu
