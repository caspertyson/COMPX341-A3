if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    exit
fi

npm install

if npm run build; then
	echo "Build Successful"
else
	echo "Build Failed"
	exit
fi

git add --all

git commit -m "$1"

git push 

npm run start
