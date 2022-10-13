if [ $2 == + ]
then
	echo $somme=$(($1 + $3))
elif [ $2 == - ]
then
	echo $difference=$(($1 - $3))
elif [ $2 == * ]
then
	echo $multiplication=$(($1 * $3))
elif [ $2 == / ]
then
	echo $division=$(($1 / $3))
fi

