
current_bib_file=$1
if [ "$1"=="" ]; then 
    current_bib_file='report.bib'
fi
echo "updating ${current_bib_file}"
xclip -o >> ${current_bib_file}
echo >> ${current_bib_file}
cat ${current_bib_file} |grep @| tail -1 | cut -d'{' -f 2 | cut -d',' -f 1 | tr -d '\r\n' | xclip  -sel clip

