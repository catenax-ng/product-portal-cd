git config user.name github-actions
git config user.email github-actions@github.com
git add chart/portal-backend/values-dev.yaml
git commit -m "Add new image for backend service"
success=1
attempts=0
until [ $success == 0 ] || [ $attempts == 10 ]
do
    (( attempts++ ))
    git pull --rebase
    git push
    success=$?;
done
if [ $success != 0 ];
then
    echo "Gave up after $attempts attempts"
fi
