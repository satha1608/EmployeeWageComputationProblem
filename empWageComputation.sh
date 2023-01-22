echo "Welcome to Employee Wage Computation Program"

ispresent=1
randomCheck=$((RANDOM%2))
if [[ $ispresent -eq $randomCheck ]]
then
echo "Employee is Present"
else
echo "Employee is Absent"
fi
