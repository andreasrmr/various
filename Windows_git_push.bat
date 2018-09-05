@ECHO OFF
cd..
echo "---------DB-------------"
cd db
git add .
git commit -m "."
git push
echo "--------java----------"
cd ../java
git add .
git commit -m "."
git push
echo "---------js------------"
cd ../js
git add .
git commit -m "."
git push
echo "--------scripts----------"
cd ../scripts
git add .
git commit -m "."
git push
echo "-----visualparagdigm-----"
cd ../visualparagdigm
git add .
git commit -m "."
git push
pause
