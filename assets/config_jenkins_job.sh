cp /home/jenkins_config.xml /var/lib/jenkins/config.xml
service jenkins restart
sleep 5
wget http://127.0.0.1:8080/jnlpJars/jenkins-cli.jar
java -jar jenkins-cli.jar -s http://127.0.0.1:8080/ install-plugin git
service jenkins restart
sleep 5
java -jar jenkins-cli.jar -s http://127.0.0.1:8080/ create-job LancheFacil-Compile-Test < /home/config_job.xml
