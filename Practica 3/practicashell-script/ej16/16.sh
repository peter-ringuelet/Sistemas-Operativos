#!/bin/bash
if [ $# -ne 1 ]; then
	echo "Uso: $0 <extension>"
	exit 1
fi

extension=$1
reporte="reporte.txt"

touch $reporte

for userdir in /home/*; do
	if [ -d $userdir ]; then
		username=$(basename $userdir)

		count=$(find $userdir -type f -name "*.$extension" 2>/dev/null | wc -l)
	       	
		echo "$username $count" >> $reporte
	fi
done

echo "Reporte generado corretamente en $reporte"
