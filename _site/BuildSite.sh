chmod +x BuildSite.sh

bundle install
bundle exec jekyll build

git --work-tree _site commit -m "Deploy Site $(date)"
git push origin gh_pages --force
