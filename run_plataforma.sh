#!/bin/bash
sudo docker run -t -i -p 5000:5000 --name plataforma_container analytics_app python analytics-app/manage.py runserver 0.0.0.0:5000
