FROM server
RUN apt-get update && apt-get upgrade -y
RUN apt-get install default-jdk -y
RUN apt-get install wget -y
RUN apt-get install git -y
RUN wget https://ci.opencollab.dev/job/NukkitX/job/Nukkit/job/master/lastSuccessfulBuild/artifact/target/nukkit-1.0-SNAPSHOT.jar
RUN chmod +x start.sh
CMD ["bash","start.sh"]
