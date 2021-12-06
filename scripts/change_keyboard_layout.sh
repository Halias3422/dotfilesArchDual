layout=$(setxkbmap -query | grep variant)
if [[ $? == 0 ]]
then
	setxkbmap -layout us
else
	setxkbmap -layout us -variant intl
fi
