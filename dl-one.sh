# param 1 is video URL
# param 2 is output folder name

cd youtube_dl

# Add --cookies option to support login if needed
# Usage: Place your exported YouTube cookies.txt in the youtube_dl directory

# Add --user-agent to mimic a real browser and try to bypass bot checks
# Add --add-header for additional browser headers if needed

python __main__.py \
--no-check-certificate \
--sub-lang en,zh-Hans,zh-Hant,ja,ko,fr,de,it,es,pt-BR,ru,ar,id,hi \
--convert-subs srt \
-f best \
-v \
-o "../output/$2/%(title)s.%(ext)s" \
--cookies cookies.txt \
--user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36" \
--add-header "Accept-Language: en-US,en;q=0.9" \
"$1"
