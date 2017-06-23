#!/bin/bash
sudo docker create --name tmp -it procesado
sudo docker start tmp
sudo docker cp tmp_procesado/prueba.py tmp:/workspace/Procesado/prueba2.py
sudo docker exec tmp python /workspace/Procesado/prueba2.py
sudo docker cp tmp:/workspace/Procesado/prueba.html tmp_resultados/prueba.html
sudo docker cp tmp_resultados/prueba.html result_container:/workspace/result_app/web/templates/web/data/renting/consultoria.html
sudo docker stop tmp
sudo docker rm tmp
