# just a sine
TANGGAL=$(date +"%Y/%m/%d on time %H:%M")

#moving 
mv trackerX.txt ../
mv trackerX_dup.txt ../

#function
cd ..
git add trackerX.txt
git add trackerX_dup.txt
git commit -m "updated new tracker (dual)" -m "tracker has been grab on ${TANGGAL} so enjoyed (dual)"
git push -u origin main
clear
echo "upload done"
#cd .. && rm -f *.txt
