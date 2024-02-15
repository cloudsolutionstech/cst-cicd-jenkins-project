## Install Maven
- Since Java is already installed, proceed with installing Maven.
- Download Maven from the official website: https://maven.apache.org/download.cgi.
- Unzip the downloaded tar file. You can use the following command:
Unzip:- tar - tar -xvzf <file_name>
- Move the extracted directory to /opt using the following command:
move:- mv apache-maven****** /opt/

## Update User Profile:
- Open the user profile file (usually .profile or .bash_profile).
- Add the following lines at the end of the file:
M2_HOME='/opt/apache-maven-******' /opt/apache-maven-3.9.4
PATH="$M2_HOME/bin:$PATH"
export PATH
- Save the file
- To apply the changes, either relaunch the terminal or execute the following command:
source .profile

## Verify Maven Installation:

- After applying the changes, verify that Maven is installed correctly by running the following command:
mvn -version

## Create a Local Folder for the Source Code:
- Create a directory named hello-world to store the source code:
mkdir -p hello-world
cd hello-world

## Generate Plugin from Jenkins Templates:
- Generate a plugin using Jenkins templates by running the following Maven command
mvn -U archetype:generate -Dfilter="io.jenkins.archetypes:"

## Build and Package the Plugin:
- Verify the project and package it using the following Maven commands:
mvn verify
mvn package

## Deploy the Plugin to Jenkins:
- Move the generated .hpi file from the target directory to the Jenkins plugin directory.
- Restart the Jenkins service to load the newly installed plugin.

## Configure and Test the Plugin in Jenkins:
- Log in to Jenkins.
- Create a new freestyle job.
- Add a build step named "Hello World" to the job.
- Run the job and check the console output to verify that the plugin is working as expected.

By following these detailed instructions, you should be able to successfully build and deploy a "Hello, World" plugin for Jenkins.


