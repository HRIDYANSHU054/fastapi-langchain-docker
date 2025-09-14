# declare what image we need to use
# FROM username/image_name:latest
# FROM image_name:latest
FROM python:3.13.7-slim-trixie

# Set the working directory inside the container
WORKDIR /app

# COPY ./localfolder /containerfolder
# RUN mkdir -p /app # workdir already ensures that app is created if not
COPY ./src .

# RUN echo "yies" > yies.html

# run the following command from inside the proj folder
# docker build -f Dockerfile -t deploy-ai-agent .
# docker run -it deploy-ai-agent
# exit

# docker build -f Dockerfile -t hridyanshu1/deploy-ai-agent:latest .
# docker push hridyanshu1/deploy-ai-agent:latest

# python -m http.server 8000
# docker run -it -p 3000:8000 deploy-ai-agent
# (dockerEnabledPort:internalAppRunningPort)
# we already have the command in compose file so this is extra
# CMD ["python", "-m", "http.server", "8000"]