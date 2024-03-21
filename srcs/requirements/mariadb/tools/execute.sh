docker build -t mariadb . >/dev/null 2>&1
if [ $? -eq 0 ]; then
        echo "MariaDB part has been built."
    else
        echo "ERROR:"
        echo "---"
        echo " "
        docker build -t mariadb .
        echo " "
        echo "---"
        echo "MariaDB build failed."
        exit 1
    fi
      
echo "Launch with -it ? (y/n)"
read answer
if [ "$answer" = "y" ]; then
    echo "Use 'exit' to stop container"
    docker run -it mariadb
else
    docker run mariadb
fi