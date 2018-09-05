@ECHO OFF
<<<<<<< HEAD
cd..
=======
cd ..
>>>>>>> 53ce179f2c902ac47f5d17f074347b92eced6c24
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
