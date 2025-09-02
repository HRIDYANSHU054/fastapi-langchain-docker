# declare what image we need to use
# FROM username/image_name:latest
# FROM image_name:latest
FROM python:3.13.7-slim-trixie

# run the following command from inside the proj folder
# docker build -f Dockerfile -t deploy-ai-agent .
# docker run -it deploy-ai-agent
# exit

# docker build -f Dockerfile -t hridyanshu1/deploy-ai-agent:latest .
# docker push hridyanshu1/deploy-ai-agent:latest

# python -m http.server 8000
# docker run -it -p 3000:8000 deploy-ai-agent
# (dockerEnabledPort:internalAppRunningPort)
CMD ["python", "-m", "http.server", "8000"]