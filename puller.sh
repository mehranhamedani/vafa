tashilcarPath=${GOPATH}/src/gitlab.com/tashilcar
for projectPath in $tashilcarPath/*; do
    if [ "$tashilcarPath" != "$projectPath" ]
        then
            lastBranch=`git --git-dir $projectPath/.git symbolic-ref --short -q HEAD`;
            git --git-dir $projectPath/.git checkout master && git --git-dir $projectPath/.git pull origin master && git --git-dir $projectPath/.git checkout $lastBranch;
    fi
done