service nginx start
service jenkins start
wget http://localhost:8080/login?from=%2F
cat /var/lib/jenkins/secrets/initialAdminPassword > pass
