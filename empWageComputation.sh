echo "Welcome to Employee Wage Computation Program"

ispresent=1
randomCheck=$((RANDOM%2))
if [[ $ispresent -eq $randomCheck ]]
then
empRatePerHr=20
empHrs=8
echo "Employee is Present"
echo "Salary = "$(($empRatePerHr*$empHrs))
else
echo "Employee is Absent"
echo "Salary = 0"
fi
