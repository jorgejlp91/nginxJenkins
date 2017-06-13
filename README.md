# nginxJenkins

Utilizar o arquivo build.sh para gerar a imagem e startar o container.

Após isso, dentro do container, executar o arquivo /home/start_nginx_jenkins.sh, que ele vai subir o jenkins e o nginx.

Após isso, caso não seja exibido a key no prompt, a key pode ser obtida em:
/var/lib/jenkins/secrets/initialAdminPassword, essa key serve para desbloquear o jenkins.

Acesse o jenkins na url http://localhost:9090/login?from=%2F e insira a senha.

Para completar a configuração do jenkins, é necessário rodar o arquivo /home/config_jenkins_job.sh

Acessar a url http://localhost/lanchefacil (se ao clicar no link, redirecionar para a porta 8099, remover a porta) para ver a aplicação e acessar a url http://localhost:9090 para acessar o jenkins

# TroubleShooting 

Em ambientes corporativos, pode ser que ao realizar o apt-get update, aconteça o erro "Hash Sum mismatch" por conta do Proxy e/ou DNS.
É recomendado inserir no dockerfile a seguinte linha antes do update:

RUN rm -rf /var/lib/apt/lists/*

Na versão 2 do jenkins, existe um mecanismo de segurança onde é salvo uma key no seguinte diretório:

/var/lib/jenkins/secrets/initialAdminPassword 

Ao executar a primeira vez, pode ser que no seja exibida no prompt essa key, portanto acessar a url : http://localhost:9090/login?from=%2F e inserir essa chave e terminar a configuração (No é necessário instalar plugins, isso será feito ao executar o arquivo /home/config_jenkins_job.sh) 
