#!/bin/bash -x

isPartTime=1
isFullTime=2
maxHrsInMonth=10

empRatePerHr=20
numberOfWorkingDays=20

totalEmpHrs=0
totalWorkingDays=0

function getWorkingHrs(){
empCheck=$((RANDOM%3))

case $1 in
        $isFullTime)
                empHrs=8
                        ;;
        $isPartTime)
                empHrs=4
                        ;;
        *)
                empHrs=0
                        ;;
esac

echo $empHrs

}

while [[ $totalEmpHrs -lt $maxHrsInMonth && $totalWorkingDays -lt $numberOfWorkingDays ]]
do

((totalWorkingDays++))
empCheck=$((RANDOM%3))

workingHrs=`expr $getWorkingHrs $empCheck`

totalEmpHrs=$(($workingHrs+$totalEmpHrs));

done

totalSalary=$(($totalEmpHrs*$empRatePerHr))
