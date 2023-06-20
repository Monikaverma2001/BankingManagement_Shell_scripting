echo "WELCOME TO MONIKA PROJECT"
echo "enter the following detail of your bank"
echo "enter your account number : "
read account_number
echo "your cureent account number is : $account_number "
echo "enter your balance in your account : "
read balanc
echo name
read name
echo "username : "  $name > file1.txt
echo "your account number is : "  $account_number >> file.txt
echo "your current ammount in your bank : " >> file1.txt
echo $balanc >> file1.txt
echo -e "\n\nYOUR MINI PASSBOOK\n\n" >> file.txt
echo "press enter key to continue for shopping and transaction "
read cont
while [ $cont==1 ]
do
	echo -e "1.SHOPPING \n2.BILL PAYMENT\n3.EXIT"
	read choice
	if [ $choice -eq 1 ]
	then
		echo -e  "WELCOME \nbuy  1.pent and  2.shirt  "
	        read opt
       		if [ $opt -eq 1 ]
		then
					
				if [ $balanc -gt 400 ]
				then
					balanc=`expr $balanc - 400 `

				echo -e "order placed sucessfully done\nNow your current balance is $balanc " 
				echo -e "you buy pent of Rs.400\nCURRENT BALANCE " $balanc >> file1.txt
				else
					echo "you don't have sufficient balance"
				fi
		else

					
				if [ $balanc -gt 350 ]
				then
					balanc=`expr $balanc - 350 `

					echo -e "order placed sucessfully done\nNow your current balance is $balanc "
			       		 echo -e "you buy pent of Rs.350\nCURRENT BALANCE "$balanc >> file1.txt
				else
					echo "you don't have sufficient balance"
				fi
		fi
	elif [ $choice -eq 2 ] 
	then
		echo "you are in option 2"
		echo -e "1.enter 1 for mobile recharge\n2.enter 2 for dish rechargl\n3.enter 3 to check your balance\n"
		read temp
		if [ $temp -eq 1 ]
		then
			echo "enter you sim is either1. modern or 2. latest"
			read sim
			if [ $sim -eq 1 ]
			then
				echo "enter to recharge and pay 500 rs. from your account number $account_number press 1 to pay"
				read pay
				if [ $pay -eq 1 ]
				then
					if [ $balanc -gt 510 ]
					then
						echo "enter your phone number : "
						read phone
						balanc=`expr $balanc - 500 `

						echo -e "recharge sucessfully done\nNow your current balance is $balanc"
					        echo -e "you recharge your phone of Rs.500\nCURRENT BALANCE " $balanc >> file1.txt
					else
						echo "you don't have sufficient balance"
					fi
				fi
			else
				
				if [ $balanc -gt 300 ]
				then
					echo "enter your phone number : "
					read phone
					balanc=`expr $balanc - 300 `
					echo -e  "recharge sucessfully done\nNow your current balance is is $balanc"
				        echo -e "you recharge your phone of Rs.300\nCURRENT BALANCE  "$balanc >>file1.txt
				else
					echo "you don't have sufficient balance"
				fi
			fi
		elif [ $temp -eq 2 ]
		then

				if [ $balanc -gt 300 ]
				then
					
					balanc=`expr $balanc - 200 `
					echo "enter your dish number : "
					read dish
					echo -e  "recharge sucessfully done\nNow your current balance is $balanc\n"
					
				        echo -e "you recharge your dish ID\nCURRENT BALANCE : " $balanc >>file1.txt
				else
					echo "you don't have sufficient balance"
				fi
		elif [ $temp -eq 3 ]
		then
			echo "you have current balance $balanc "
		else
			break
		fi

	else
		echo "YOUR TRANSACTION ENTRIES RECORDS"
		cat file1.txt
		break
	fi
	echo " press enter  :  "
	read cont

done
