cp /home/jenkins_config.xml /var/lib/jenkins/config.xml
service jenkins restart
wget http://127.0.0.1:8080/jnlpJars/jenkins-cli.jar
java -jar jenkins-cli.jar -s http://127.0.0.1:8080/ install-plugin git

java -jar jenkins-cli.jar -s http://127.0.0.1:8080/ create-job LancheFacil-Compile-Test < /home/config_job.xml
