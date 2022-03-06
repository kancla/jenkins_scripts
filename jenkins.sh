#!/bin/bash
#Description : let's install jenkins in centos 
#Author : KANEZA 


echo -e "\n let's install jenkins on centos \n"

sleep 2

if 
	[ ${USER} = root ] 

then 

	echo -e "\n let's start the jenkins installation .\n"

else 

	echo -e "\n you need to be a root user .\n"

fi
 sleep 2

 yum install java-1.8.0-openjdk-devel

 sleep 2

  wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo 

  sleep 2

  if 

	  [ $? != 0 ]

	  sleep 2

  then

	  echo -e "\n you need to install the wget . \n"
	   fi

	   sleep 2

	   yum install wget -y

	   sleep 2

	   sudo sed -i 's/gpgcheck=1/gpgcheck=0/g' /etc/yum.repos.d/jenkins.repo        


	   sleep 2

	   yum install jenkins

	   sleep 2

	   systemctl start jenkins

	   sleep 2

	   systemctl status jenkins

	   if
		   [ $? != 0 ]

	   then

		   echo -e "\n SOMETIMES THE SYSTEM HAS FIREWALL ENABLED. IN THAT CASE,WE NEEDTO OPEN THE PORT \n"
	   fi
	   sleep 2

	   firewall-cmd --permanent --zone=public --add-port=8080/tcp

	   sleep 2

	   firewall-cmd --reload

	   sleep 2
	   echo -e "\n jenkins installation was successfull . \n"

	   sleep 2


	   [root@localhost ~]# vi jenkins.sh
	   [root@localhost ~]#  92L, 1076C written
	   [root@localhost ~]# cat jenkins.sh
	   #!/bin/bash
	   #Description : let's install jenkins in centos
	   #Author : KANEZA


	   echo -e "\n let's install jenkins on centos \n"

	   sleep 2

	   if
		   [ ${USER} = root ]

	   then

		   echo -e "\n let's start the jenkins installation .\n"

	   else

		   echo -e "\n you need to be a root user .\n"

	   fi
	    sleep 2

	    yum install java-1.8.0-openjdk-devel

	    sleep 2

	     wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo

	     sleep 2

	     if

		     [ $? != 0 ]

		     sleep 2

	     then

		     echo -e "\n you need to install the wget . \n"
		      fi

		      sleep 2

		      yum install wget -y

		      sleep 2

		      sudo sed -i 's/gpgcheck=1/gpgcheck=0/g' /etc/yum.repos.d/jenkins.repo        

		      sleep 2

		      yum install jenkins

		      sleep 2

		      systemctl start jenkins

		      sleep 2

		      systemctl status jenkins

		      sleep 2

		      systemctl enable jenkins


		      sleep 2


		      if
			      [ $? != 0 ]

		      then

			      echo -e "\n SOMETIMES THE SYSTEM HAS FIREWALL ENABLED. IN THAT CASE,WE NEEDTO OPEN THE PORT \n"
		      fi
		      sleep 2

		      firewall-cmd --permanent --zone=public --add-port=8080/tcp

		      sleep 2

		      firewall-cmd --reload

		      sleep 2

		      echo -e "\n jenkins installation was successfull . \n"

		      sleep 2

