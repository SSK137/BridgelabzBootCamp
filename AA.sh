for i in *
do
	name=`echo $i | awk -F. '{print $1}'`
	name1=`echo $i | awk -F. '{print $2}'`
	mkdir -p $name/$name1
	cp -r $i $name/$name1
done
