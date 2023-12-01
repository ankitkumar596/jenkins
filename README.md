# jenkins upgrade through war file

cd /usr/share/java

wget https://updates.jenkins.io/download/war/2.414.2/jenkins.war

systemctl restart jenkins

jenkins --version

