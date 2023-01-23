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
	                        workHours=8;;
	                $isPartTime)
	                        workHours=4;;
	                *)
	                        workHours=0;;
	        esac
	     echo $workHours
	}
	function calcDailyWage() {
	 local worker=$1
	wage=$(($worker*$empRatePerHr))
	echo $wage
	}
		while [[ $totalEmpHr -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
		do
		((totalWorkingDays++))
		workHours=$(getWorkingHours $((RANDOM%3)))
	totalEmpHr=$(($totalEmpHr+$workHours))
	empDailyWage[$totalWorkingDays]=$(calcDailyWage $(($workHours))) 
	done
	totalSalary=$(calcDailyWage $(($totalEmpHr))) 
	echo "Daily Wage " ${empDailyWage[@]}
	echo "Employee has earned Rs.$totalSalary salary in a month ( Total working hour : $totalEmpHr )"
