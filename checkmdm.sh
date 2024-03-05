curl -s -o response.txt http://localhost:9889
md5sum_response=$(md5sum response.txt | awk '{ print $1 }')
md5sum_index=$(md5sum index.html | awk '{ print $1 }')
if [ "$md5sum_response" == "$md5sum_index" ]; then
    curl -s -X POST https://api.telegram.org/bot6496646075:AAG77ORDHogHY7S0jZ83hxnnG31kO-ZbXhU/sendMessage -d chat_id=253758547  -d text="md5 sum is ok"
else
    curl -s -X POST https://api.telegram.org/bot6496646075:AAG77ORDHogHY7S0jZ83hxnnG31kO-ZbXhU/sendMessage -d chat_id=253758547  -d text="md5 sum is not ok"
fi