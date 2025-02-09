rm -rfv .git
git init
git add .
git commit -m "init"
git remote add origin https://github.com/Orthemes/hub.orthemes.com.git
git branch -m hub
git checkout --orphan master
for i in `ls --almost-all | grep -v "README.md" | grep -v ".git"` ; do rm -rf $i; done;
git add .
git commit -m "init"
git push -u --force --all origin
git checkout hub
