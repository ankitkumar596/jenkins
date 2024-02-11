# Jenkins Upgrade and Password Reset Guide

This guide provides instructions on upgrading Jenkins using a WAR file and resetting the Jenkins password.

## Jenkins Upgrade

1. Navigate to the directory where Jenkins is installed:
    ```bash
    cd /usr/share/java
    ```

2. Download the latest Jenkins WAR file:
    ```bash
    wget https://updates.jenkins.io/download/war/2.414.2/jenkins.war
    ```

3. Restart the Jenkins service:
    ```bash
    systemctl restart jenkins
    ```

4. Verify the Jenkins version:
    ```bash
    jenkins --version
    ```

## Reset Jenkins Password

1. Disable Jenkins Security:
    - Open the Jenkins configuration file:
        ```bash
        sudo vi /var/lib/jenkins/config.xml
        ```
    - Modify the value between the `<useSecurity>` tags from `<useSecurity>true</useSecurity>` to `<useSecurity>false</useSecurity>`.
    - Save and exit the file.
    - Restart Jenkins:
        ```bash
        sudo systemctl restart jenkins
        ```

2. Reset Jenkins Admin’s Password:
    - Click on "People" on the left-hand navigation menu.
    - Click on the "Admin" user.
    - Delete the Admin user account.
    - Navigate to Jenkins > Manage Jenkins.
    - Click on "Configure Global Security".
    - Check the "Enable Security" checkbox.
    - Under Security Realm, select "Jenkins’ own user database".
    - In the Authorization section, select "Logged-in users can do anything".
    - Unselect "Allow anonymous read access".
    - Click "Save" to save your changes.

## Create New Jenkins Admin User

1. After completing the previous steps, you will be redirected to a page where a new Admin user can be created.
2. Fill in the new user details and click "Create First Admin User".

