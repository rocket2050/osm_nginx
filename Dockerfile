FROM ubuntu
RUN apt-get -y update
RUN apt-get install wget -y
RUN apt-get install git -y
RUN apt-get -y update
CMD apt-add-repository -y ppa:ansible/ansible
RUN apt-get -y update
RUN apt-get -y install ansible
WORKDIR /etc/ansible/roles/
RUN git clone https://github.com/opstree-ansible/osm_nginx.git
RUN mv osm_nginx/site.yml .
RUN ansible-playbook site.yml
