#/bin/bash
list=`find . -name "*.apk"`
json='{"packages":['
isFirst='True'
for entry in $list
do
	if [ "$isFirst" == 'True' ];
	then
		isFirst='False'
	else
		json=$json','
	fi
	packageName=`echo "$entry" | awk -F".apk" '{print $1}' | cut -f2 -d'/'`
	packageName='"'$packageName'"'
	json=$json$packageName
done
json=$json']}'

echo $json > appList.json