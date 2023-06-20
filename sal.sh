echo "Enter the name of the employee"
read a
echo "Enter the basic pay"
read b
da=` expr  $b \* 60 / 100 ` 
echo " dearness allowance = $da"
hra=` expr $b \* 5 / 100 `
echo " house rent allowance = $hra"
pf=` expr $b \* 10 / 100 `
echo " provident fund = $pf"
c=` expr $b + $da `
d=` expr $hra - $pf `
total_pay=` expr $c + $d `

echo " total pay = $total_pay"

