gcc -c -o ccsleep.o ccsleep.c
fbc -lib ccsleep.o
fbc sound.bas
sudo cp sound /usr/bin
