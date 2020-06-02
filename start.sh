#!/bin/bash -x

isPartTime=1
isFullTime=2
maxHrsInMonth=10

empRatePerHr=20
numberOfWorkingDays=20

totalEmpHrs=0
totalWorkingDays=0

while [[ $totalEmpHrs -lt $maxHrsInMonth && $totalWorkingDays -lt $numberOfWorkingDays ]]
do

((totalWorkingDays++))
empCheck=$((RANDOM%3))

case $empCheck in
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

totalEmpHrs=$(($empHrs+$totalEmpHrs));

done

totalSalary=$(($totalEmpHrs*$empRatePerHr))
