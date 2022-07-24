FROM ubuntu
#WORKDIR /aws-live-master/
RUN  apt-get -y update
RUN  apt-get install -y git
RUN  git clone https://github.com/Bhagavat19/aws-live-master.git
WORKDIR  /aws-live-master/
RUN  apt-get -y install software-properties-common
RUN  apt-add-repository universe -y
RUN  apt-get -y update
#RUN  apt-get -y install mysql-server
RUN  apt-get update && apt-get upgrade -y
RUN  apt-get -y install python-pip
RUN  apt-get -y install python3-pip
RUN  apt-get -y install python3
RUN  apt-get -y install pip
#RUN  apt-get -y install python-docker
RUN  pip3 install pip
RUN  pip install flask
RUN  pip3 install pymysql boto3
RUN  apt-get install sudo
CMD  ["python3", "/aws-live-master/EmpApp.py"]
#ENTRYPOINT ["python3"]
#CMD  ["/aws-live-master/EmpApp.py"]
EXPOSE 80:80/tcp
