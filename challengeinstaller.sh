#! /bin/bash

#to run as root user

if [ $EUID -ne 0 ]; then
	echo "Please run as root"
	exit
fi


#checking if group already exists and adding if group doesnt exist

grep -q 'challenge\| cricket' /etc/group
if [ $? -eq 0 ]; then
	echo "Group name already exists!"
else
	
	groupadd challenge
	groupadd cricket
fi 

#checking if user already exists and adding if user doesnt exist

grep -q 'dbradman\|stendulkar\|kdev\|vrichard' /etc/passwd
if [ $? -eq 0 ]; then 
	echo "Users already exist!"
else
	useradd -c "Don Bradman" dbradman -G cricket -p bestplayer
	echo dbradman:bestplayer | chpasswd

	useradd -c "Sachin Tendulkar" stendulkar -G cricket -g challenge -p bestplayer
	echo stendulkar:bestplayer | chpasswd

	useradd -c "Kapil Dev" kdev -G cricket -p bestplayer
	echo kdev:bestplayer | chpasswd

	useradd -c "Vivian Richard" vrichard -G cricket -p bestplayer
	echo vrichard:bestplayer | chpasswd

fi

#creating readme file in stendulkar root


	cd /home/stendulkar
	touch readme.txt
	echo 'bestplayer' >> readme.txt
	

#creating .xz file in dbradman root with encrypted server details

		
	cd ..
	cd dbradman
	touch login.txt
	echo 'krvw: orfdokrvw' >> login.txt
	echo 'xvhuqdph: yulfkdug, sdvvzrug: ehvwsodbhu' >> login.txt
        xz login.txt


#creating Level-3 directory in vrichard
	
	cd ..
	cd vrichard
	mkdir Level-3
	

#creating Level-4 directory in vrichard
	
	mkdir Level-4
	cd Level-4

#creating python programs


	for i in {1..50}
	do
   		touch Program-$i.py
	done

	echo 'print("You have successfully completed all 4 levels!")' >> Program-20.py
 
	for i in {1..5}
	do
	 echo 'print("Johny Johny")' >>Program-$i.py
	done
	
	for i in {6..15}
	do
	 echo 'print("Mary had a little lamb")' >>Program-$i.py
	done

	for i in {21..30}
	do
	 echo 'print("Rain rain go away. come again another day. Lil Johny wants to pla		y")' >>Program-$i.py
	done
	
	for i in {31..40}
	do
	 echo 'print("lmnopqrst")' >>Program-$i.py
	done
	
	exit
	

