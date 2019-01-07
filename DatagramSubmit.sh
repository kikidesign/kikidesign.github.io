today_date=`date +%Y/%m/%d-%H:%M:%S`
cd Desktop/Datagram
git add . 
git commit -m “${today_date}”
git push -u origin master