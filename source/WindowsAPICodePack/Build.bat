IF NOT DEFINED Configuration SET Configuration=Release
MSBuild.exe WindowsAPICodePack.sln -t:clean
MSBuild.exe WindowsAPICodePack.sln -t:restore -p:RestorePackagesConfig=true
MSBuild.exe WindowsAPICodePack.sln -m /property:Configuration=%Configuration%
git add -A
git commit -a --allow-empty-message -m ''
git push