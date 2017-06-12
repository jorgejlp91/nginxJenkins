# nginxJenkins

Utilizar o arquivo build.sh para gerar a imagem e startar o container.

Após isso, dentro do container, executar o arquivo /home/start.sh, que ele vai subir o jenkins, o nginx e a aplicação.

Para completar a configuração do jenkins, é necessário rodar o arquivo /home/config_jenkins_job.sh

Acessar a url http://localhost/lanchefacil para ver a aplicação e acessar a url http://localhost:9090 para acessar o jenkins
