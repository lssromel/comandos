#!/bin/sh
sudo docker run -t -i -p 5010:5010 --name result_container result_app python manage.py runserver 0.0.0.0:5010 
