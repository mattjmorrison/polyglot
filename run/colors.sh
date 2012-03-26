
function language() {
    echo -e "\033[0;36m\t"
    echo "***** $1 *****"
    echo -e "\033[0m"
}

function section() {
    echo -e "\033[0;33m\t\n== $1 ==\033[0m"
}

function step() {
    echo -e "\033[1;31m$1\033[0m"
}
