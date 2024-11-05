docker images -a -q -f "dangling=true" | xargs -r docker rmi
