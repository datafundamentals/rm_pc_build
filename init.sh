echo "NOTE: for future removal - exports and folder are prefixed rm_pc or RM_PC for easy identification and removal"
mkdir ~/rm_pc
mkdir ~/rm_pc/work
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
#printenv
cd ~/rm_pc/contrasting
# mvn clean install -DskipTests
gradle build -x test
source ~/rm_pc/contrasting/copytodockervm.sh
cd ~/rm_pc/precontrast_docker_vagrant
cp -R ~/rm_pc/precontrast_docker_vagrant/mysql ~/rm_pc/work
cp -R ~/rm_pc/precontrast_docker_vagrant/init ~/rm_pc/work
source ~/rm_pc/work/runaDockerMysql.sh
vagrant up
vagrant shh