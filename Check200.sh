#/bin/bash
response=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:9889)
if [ "$response" == "200" ]; then
echo "Код ответа: $response"
#"Тест успешно пройден!"
curl -s -X POST https://api.telegram.org/bot6496646075:AAG77ORDHogHY7S0jZ83hxnnG31kO-ZbXhU/sendMessage -d chat_id=253758547  -d text="Тест успешно пройден!"
exit 0
else
echo "Код ответа: $response"
curl -s -X POST https://api.telegram.org/bot6496646075:AAG77ORDHogHY7S0jZ83hxnnG31kO-ZbXhU/sendMessage -d chat_id=253758547  -d text="Тест не пройден!"
exit 1
fi