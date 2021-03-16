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
