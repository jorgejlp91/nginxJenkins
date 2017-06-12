service nginx start
service jenkins start
cat /var/lib/jenkins/secrets/initialAdminPassword > pass
cd /home/lanchefacil/lanchefacil && mvn spring-boot:run
