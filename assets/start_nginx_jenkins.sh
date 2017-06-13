service nginx start
service jenkins start
echo "esperando 10 segundos ate o jenkins subir..."
sleep 10
wget http://localhost:8080/login?from=%2F
cat /var/lib/jenkins/secrets/initialAdminPassword
echo "Use essa chave para desbloquear o jenkins"
