echo "NOTE: for future removal - exports and folder are prefixed rm_pc or RM_PC for easy identification and removal"
mkdir ~/rm_pc
cd ~/rm_pc
git clone https://github.com/petecarapetyan/contrasting.git
git clone https://github.com/petecarapetyan/precontrast.git
git clone https://github.com/petecarapetyan/precontrast_docker_vagrant.git
export RM_PC_HOME=~/rm_pc
export RM_PC_MYSQL_PORT=blah
export RM_PC_VAGRANT_IP=192.168.33.13
export RM_PC_DOCKER_NGINX_PORT=8573
export RM_PC_DOCKER_REST_PORT=blah
export RM_PC_DOCKER_MYSQL_PORT=blah
export RM_PC_DOCKER_MYSQL_PORT=blah
export RM_PC_REMOTE_REST=http://172.99.79.10:8123/
export RM_PC_DOCKER_=blah