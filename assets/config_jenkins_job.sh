wget http://127.0.0.1:9090//jnlpJars/jenkins-cli.jar
java -jar jenkins-cli.jar -s http://127.0.0.1:9090/ install-plugin git

java -jar jenkins-cli.jar -s http://127.0.0.1:9090/ create-job LancheFacil-Compile-Test < /home/config_job.xml
