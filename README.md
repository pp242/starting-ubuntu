##Devops Installing Xbuntu and using it

This readme for for mac users only, do not touch if otherwise.

Download vagrant from
	
	https://www.vagrantup.com/downloads.html
	
Install it for Mac OS X	, for 64-bit.

<hr />

Download virtual box from 

	https://www.virtualbox.org/wiki/Downloads

Click on the OS X hosts to download

<hr/>
 
Once downloaded run the files and follow instructions for them to install them both

Enter the terminal and open a folder that you want to create the virtual machine from.

Enter 
	
	vagrant init ubuntu/xenial64

into the console, the following message should show: "A `Vagrantfile` has been placed in this directory." 

Once seen open the sublime using the syntax

	subl . 
	
And enter the file called Vagrantfile.


(This is optional) delete all commented code apart from the top two lines

Input the following code between the lines with: "config.vm.box = "ubuntu/xenial64" " and " end "
	
	  config.vm.network "private_network" , ip: "192.168.10.100"
	  config.hostsupdater.aliases = ["development.local"]

Save the file and go back to the terminal

Type in 
	
	vagrant up
	
into the console and once that is done, input

	vagrant ssh

This should lead you into the box's terminal where 
	
	ubuntu@ubuntu-xenial:~$ 
	
should be seen as the side log thing. 

Exit the terminal by writing

	exit

Type in 

	cat /etc/hosts
	
Then type in	

	vagrant plugin install vagrant-hostsupdater
	
Then type

	vagrant reload
	
The type in

	vagrant ssh		

And you should be back into the box's terminal, input in

	type sudo apt-get install nginx -y

and after input

	type sudo apt-get update -y
	
Go to google chrome and then type into the search bar

	http://development.local/	

Once you are done and want to leave the box's terminal type

	exit

to leave 


