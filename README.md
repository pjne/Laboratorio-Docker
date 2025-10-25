# Docker Exercise 02

## Nginx (Tasks 1–4)
Build:
docker build -t my-web-server:v2 .

Run:
docker run -d -p 8080:80 --name my-server my-web-server:v2

## Flask (Tasks 5–6)
cd python-app
docker build -t my-python-app .
docker run -d -p 5000:5000 --name python-server my-python-app

## Evidencias sugeridas
- Docker Desktop (Images y Containers)
- Navegador: http://localhost:8080 y http://localhost:5000 (+ /health)
- Salidas: `docker ps`, `docker logs python-server`
