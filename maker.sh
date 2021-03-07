#/bin/bash

# another track
echo "getting some shit"
sleep 15
echo "started"
wget https://raw.githubusercontent.com/iamLiquidX/trackerlistx/main/trackers.txt
sed -i '$!N; /^\(.*\)\n\1$/!P; D' trackers.txt
sleep 1
wget https://trackerslist.com/best.txt
sed -i '$!N; /^\(.*\)\n\1$/!P; D' best.txt
sleep 1
wget https://trackerslist.com/all.txt
sed -i '$!N; /^\(.*\)\n\1$/!P; D' all.txt
sleep 1
wget https://trackerslist.com/http.txt
sed -i '$!N; /^\(.*\)\n\1$/!P; D' http.txt
sleep 1

# anime tracker
wget https://raw.githubusercontent.com/DeSireFire/animeTrackerList/master/AT_all.txt
wget https://raw.githubusercontent.com/DeSireFire/animeTrackerList/master/AT_best.txt 
wget https://raw.githubusercontent.com/DeSireFire/animeTrackerList/master/AT_all_udp.txt
wget https://raw.githubusercontent.com/DeSireFire/animeTrackerList/master/AT_all_https.txt
wget https://raw.githubusercontent.com/DeSireFire/animeTrackerList/master/AT_all_http.txt

# delete anime stuff
rm -f *AT*.txt

# Tracker Normal
wget https://ngosang.github.io/trackerslist/trackers_best.txt
sed -i '$!N; /^\(.*\)\n\1$/!P; D' trackers_best.txt
wget https://ngosang.github.io/trackerslist/trackers_all.txt
sed -i '$!N; /^\(.*\)\n\1$/!P; D' trackers_all.txt
wget https://ngosang.github.io/trackerslist/trackers_all_udp.txt
sed -i '$!N; /^\(.*\)\n\1$/!P; D' trackers_all_udp.txt
wget https://ngosang.github.io/trackerslist/trackers_all_http.txt
sed -i '$!N; /^\(.*\)\n\1$/!P; D' trackers_all_http.txt
wget https://ngosang.github.io/trackerslist/trackers_all_https.txt 
sed -i '$!N; /^\(.*\)\n\1$/!P; D' trackers_all_https.txt

#more tracker 
wget https://raw.githubusercontent.com/hezhijie0327/Trackerslist/main/trackerslist_combine.txt 
wget https://raw.githubusercontent.com/hezhijie0327/Trackerslist/main/trackerslist_exclude.txt
wget https://raw.githubusercontent.com/hezhijie0327/Trackerslist/main/trackerslist_tracker.txt
wget https://raw.githubusercontent.com/eshaan7/daily-trackerslist/master/trackers_best.txt --output-document=track21.txt
wget https://raw.githubusercontent.com/eshaan7/daily-trackerslist/master/trackers_stable.txt

# getting more
wget https://gitee.com/banbendalao/hosts_optimize_tracker_links/raw/master/tracker.txt --output-document=tracker1.txt
wget https://newtrackon.com/api/all --output-document=all1.txt
sed -i '$!N; /^\(.*\)\n\1$/!P; D' all1.txt
wget https://newtrackon.com/api/live --output-document=live1.txt
sed -i '$!N; /^\(.*\)\n\1$/!P; D' live1.txt
wget https://newtrackon.com/api/stable --output-document=stable1.txt
sed -i '$!N; /^\(.*\)\n\1$/!P; D' stable1.txt
wget https://raw.githubusercontent.com/1265578519/OpenTracker/master/tracker.txt --output-document=trackerr1.txt

sleep 10
wget https://newtrackon.com/api/http --output-document=http1.txt
sed -i '$!N; /^\(.*\)\n\1$/!P; D' http1.txt
wget https://newtrackon.com/api/udp --output-document=udp1.txt
sed -i '$!N; /^\(.*\)\n\1$/!P; D' udp1.txt

clear
echo "grabbing shit has been dOne now shit now"

# combine all text
echo "combine now"
find . -type f -name '*.txt' -exec cat {} + >> tracker1.txt
echo "combine done now upload to github"
echo "to doing that you must git status then using upload.sh"

# check duplicate
sort tracker1.txt | uniq | tee trackerX1.txt
awk 1 ORS='\n\n' trackerX1.txt > trackerX.txt

# checking space
grep "\S" tracker1.txt > tracker12.txt
awk 1 ORS='\n\n' tracker12.txt > trackerX_dup.txt

#move
mv trackerX_dup.txt Output
mv trackerX.txt Output
clear
