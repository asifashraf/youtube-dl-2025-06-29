cd youtube_dl

python __main__.py \
--no-check-certificate \
--sub-lang en,zh-Hans,zh-Hant,ja,ko,fr,de,it,es,pt-BR,ru,ar,id,hi \
--convert-subs srt \
--playlist-start 1 \
--sleep-interval 40 \
-f best \
-v \
-o "../../youtube-dl-downloads/%(playlist_index)s_%(title)s.%(ext)s" \
"$1"