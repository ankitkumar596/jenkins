# jenkins upgrade through war file

cd /usr/share/java

wget https://updates.jenkins.io/download/war/2.414.2/jenkins.war

systemctl restart jenkins

jenkins --version

# Reset Jenkins password

Disable Jenkins Security

sudo vi /var/lib/jenkins/config.xml 

Modify the value between the <useSecurity> tags and set the value to false. <useSecurity>true</useSecurity> to <useSecurity>false</useSecurity> 

sudo systemctl restart jenkins

# Reset Jenkins Admin’s Password
Click on People on the left-hand navigation menu.
Click on the Admin.
Delete the user account.
Navigate to Jenkins / Manage Jenkins.
Click on Configure Global Security
Check the Enable Security check box
Under Security Realm, select Jenkins’ own user database
In the Authorization section, select Logged-in users can do anything.
Unselect Allow anonymous read access.
Click Save to save your changes.

# Create New Jenkins Admin User

Once you have completed the tasks above, you will be redirect to a page where a new Admin user can be created. Fill in your new details and then click Create First Admin User.
