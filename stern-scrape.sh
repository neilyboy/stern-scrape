#!/bin/bash

clear
red=$'\e[1;31m'
blue=$'\e[1;34m'
darkGray=$'\e[90m'
lightGray=$'\e[37m'
colorEnd=$'\e[0m'
bold=$'\e[1m'

echo $red"

.▄▄ ▄▄▄▄▄▄▄ ▄▄▄  ▐ ▄.▄▄ · ▄▄·▄▄▄  ▄▄▄· ▄▄▄▄▄▄ .
▐█ ▀•██ ▀▄.▀▀▄ █•█▌▐▐█ ▀.▐█ ▌▀▄ █▐█ ▀█▐█ ▄▀▄.▀·
▄▀▀▀█▐█.▐▀▀▪▐▀▀▄▐█▐▐▄▀▀▀███ ▄▐▀▀▄▄█▀▀█ ██▀▐▀▀▪▄
▐█▄▪▐▐█▌▐█▄▄▐█•███▐█▐█▄▪▐▐███▐█•█▐█ ▪▐▐█▪·▐█▄▄▌
 ▀▀▀▀▀▀▀ ▀▀▀.▀  ▀▀ █▪▀▀▀▀·▀▀▀.▀  ▀▀  ▀.▀   ▀▀▀
$colorEnd"

printf "%45s\n" "$darkGray $bold-=Neilyboy 2020=-
$colorEnd"

echo "Enter Year [Example: 2020]: "; read year;

read -p "Enter Month [ex. april]: " monthInput
monthInput=${monthInput,,}

if [ "$monthInput" = january ]
then
        monthNum=1
        monthLongNum=01
        monthUpper="January"
elif [ "$monthInput" = february ]
then
        monthNum=2
        monthLongNum=02
        monthUpper="February"
elif [ "$monthInput" = march ]
then
        monthNum=3
        monthLongNum=03
        monthUpper="March"
elif [ "$monthInput" = april ]
then
        monthNum=4
        monthLongNum=04
        monthUpper="April"
elif [ "$monthInput" = may ]
then
        monthNum=5
        monthLongNum=05
        monthUpper="May"

elif [ "$monthInput" = june ]
then
        monthNum=6
        monthLongNum=06
        monthUpper="June"
elif [ "$monthInput" = july ]
then
        monthNum=7
        monthLongNum=07
        monthUpper="July"
elif [ "$monthInput" = august ]
then
        monthNum=8
        monthLongNum=08
        monthUpper="August"
elif [ "$monthInput" = september ]
then
        monthNum=9
        monthLongNum=09
        monthUpper="September"
elif [ "$monthInput" = october ]
then
        monthNum=10
        monthLongNum=10
        monthUpper="October"
elif [ "$monthInput" = november ]
then
        monthNum=11
        monthLongNum=11
        monthUpper="November"
elif [ "$monthInput" = december ]
then
        monthNum=12
        monthLongNum=12
        monthUpper="December"
else
        echo "Invalid Month Entry!"
fi

curl -s https://www.howardstern.com/show/$monthLongNum/$year/ > tmp_file1

availDates=$(grep 'dek">' tmp_file1 | cut -d ">" -f2 | cut -d "<" -f1)

echo "Available Dates in "$monthUpper": "

echo -e -n

echo "$availDates"


echo "Enter Day [Example: 23]: ";read day;


curl -s https://www.howardstern.com/show/$year/$monthNum/$day/show-rundown-$monthInput-$day-$year/ > tmp_file2

title=$(grep -m1 "og:title" tmp_file2 | cut -d '"' -f4)

desc=$(grep -m1 description tmp_file2 | cut -d '"' -f4)

desc2=$(grep "{title:" tmp_file2 | cut -d "'" -f2 | awk 'NR != 1')

thmbLinks=$(grep 'thumb:' tmp_file2 | cut -d "'" -f6)

fname=$(grep 'og:url' tmp_file2 | cut -d "/" -f8)

echo "$title" > "$fname.txt"


echo "$desc" >> "$fname.txt"


echo "$desc2" >> "$fname.txt"


echo "Episode Thumbnails:" >> "$fname.txt"


echo "$thmbLinks" >> "$fname.txt"

echo "$blue $title $colorEnd"

echo "$lightGray $desc $colorEnd"


echo "$red Success "$fname".txt saved $colorEnd"

rm tmp_file1
rm tmp_file2
