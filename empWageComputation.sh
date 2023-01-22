echo "Welcome to Employee Wage Computation Program"

isPartTime=1
isFullTime=2
maxHrsInMonth=10
empRatePerHr=20
numWorkingDays=20
totalEmpHr=0
totalWorkingDays=0

function getWorkingHours() {
 case $1 in $isFullTime)
                        empHrs=8;;
                $isPartTime)
                        empHrs=4;;
                *)
                        empHrs=0;;
        esac
     echo $empHrs
}
while [[ $totalEmpHr -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
((totalWorkingDays++))
empHrs=$(getWorkingHours $((RANDOM%3)))
totalEmpHr=$(($totalEmpHr+$empHrs))
done
totalSalary=$(($totalEmpHr*$empRatePerHr))
echo "Employee has earned Rs.$totalSalary salary in a month ( Total working hour : $totalEmpHr )"
