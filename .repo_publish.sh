export temp_commit_name
temp_commit_name=init_$(date +%s)
echo repo_"$temp_commit_name" > repo_"$temp_commit_name"
rm -rfv .git
git init
git add .
temp_commit_name=init_$(date +%s)
git commit -m $temp_commit_name
git remote add origin https://github.com/Orthemes/hub.orthemes.com.git
git branch -m hub
git checkout --orphan master
for i in `ls --almost-all | grep -v "README.md" | grep -v ".git"` ; do rm -rf $i; done;
git add .
temp_commit_name=init_$(date +%s)
git commit -m $temp_commit_name
git push -u --force --all origin
git checkout hub
