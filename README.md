# nginxJenkins

Utilizar o arquivo build.sh para gerar a imagem e startar o container.

Após isso, dentro do container, executar o arquivo /home/start_nginx_jenkins.sh, que ele vai subir o jenkins e o nginx.

Após isso, ser salvo no arquivo /home/pass a senha para desbloquear o jenkins.

Acesse o jenkins na url http://localhost:9090 e insira a senha.

Para completar a configuração do jenkins, é necessário rodar o arquivo /home/config_jenkins_job.sh

Acessar a url http://localhost/lanchefacil para ver a aplicação e acessar a url http://localhost:9090 para acessar o jenkins
