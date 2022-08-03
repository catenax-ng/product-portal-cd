success=1
attempts=0
until [ $success == 0 ] || [ $attempts == 10 ]
do
    (( attempts++ ))
    git pull --rebase
    git push
    success=$?
done
if [ $success != 0 ]
then
    echo "Gave up after $attempts attempts"
else
    echo "Push was successful"
fi
