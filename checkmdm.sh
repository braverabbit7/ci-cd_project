curl -s -o response.txt http://localhost:9889
md5sum_response=$(md5sum response.txt | awk '{ print $1 }')