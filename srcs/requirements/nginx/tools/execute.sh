docker build -t nginx . >/dev/null 2>&1
if [ $? -eq 0 ]; then
        echo "NGINX part has been built."
    else
        echo "ERROR:"
        echo "---"
        echo " "
        docker build -t nginx .
        echo " "
        echo "---"
        echo "NGINX build failed."
        exit 1
    fi
      
echo "Launch with -it ? (y/n)"
read answer
if [ "$answer" = "y" ]; then
    echo "Use 'exit' to stop container"
    docker run -it nginx
else
    docker run nginx
fi