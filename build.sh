#!/bin/bash

docker build -t "lanchefacil" . &&

docker run --name "lanchefacil_instance" -i -t  -p 80:8099 -p 9090:8080 lanchefacil /bin/bash

exit

docker start "lanchefacil_instance"
docker exec -i -t lanchefacil_instance /bin/bash
