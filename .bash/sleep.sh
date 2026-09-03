function sleepstatus() {
    pmset -g | grep SleepDisabled;
}
alias sleepstatus='sleepstatus'

function sleepenable() {
    sudo pmset -a disablesleep 0;
    sleepstatus;
}
alias sleepenable='sleepenable'

function sleepdisable() {
    sudo pmset -a disablesleep 1;
    sleepstatus;
}
alias sleepdisable='sleepdisable'
