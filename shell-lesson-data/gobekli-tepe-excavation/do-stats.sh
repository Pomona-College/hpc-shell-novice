for datafile in "$@"
do
	echo Processing $datafile
	bash goostats.sh $datafile stats-$datafile
done
