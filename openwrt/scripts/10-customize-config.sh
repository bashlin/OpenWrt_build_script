CRTDIR=$(pwd)
echo $CRTDIR

# add openclash
mkdir package/new/luci-app-openclash
cd package/new/luci-app-openclash
git init
git remote add -f origin https://$github/vernesong/OpenClash.git
git config core.sparsecheckout true
echo "luci-app-openclash" >> .git/info/sparse-checkout
git pull --depth 1 origin master
git branch --set-upstream-to=origin/master master

cd $CRTDIR

