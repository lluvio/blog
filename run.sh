cd /pipline/source/public

# init repository
git init

git config user.email "pleasemailus@wercker.com"
git config user.name "werckerbot"

git add .
git commit -m "deploy from $WERCKER_STARTED_BY"
result=$(git push -f "$remote" master:"$branch" 2> /dev/null)

if [ $? -ne 0 ]; then
  warning "$result"
  fail "failed pushing to github pages"
else
  success "pushed to github pages"
fi
# test