@ECHO OFF
echo "---------DB-------------"
cd db
git pull
echo "--------java----------"
cd ../java
git pull
echo "---------js------------"
cd ../js
git pull
echo "--------scripts----------"
cd ../scripts
git pull
echo "-----visualparagdigm-----"
cd ../visualparagdigm
git pull
pause