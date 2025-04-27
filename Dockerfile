FROM ubuntu:latest

#Install curl
RUN apt-get update && apt-get install -y curl

#copy app.sh into the container
COPY app.sh /app.sh

#make it executable
RUN chmod +x /app.sh

#run the script
CMD["/app.sh"]
