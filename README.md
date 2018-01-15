#JUMPBOX-BASE

docker build -t mkieboom/mapr-jumpbox-base .

docker run -it --privileged -p 5901:5901 -p 80:6901 mkieboom/mapr-jumpbox-base /bin/bash


# MAPR-JUMPBOX
docker build -t mkieboom/mapr-jumpbox .

docker run -it --privileged -p 5901:5901 -p 80:6901 mkieboom/mapr-jumpbox /bin/bash



docker run -it \
--cap-add SYS_ADMIN \
--cap-add SYS_RESOURCE \
--device /dev/fuse \
-e MAPR_CLUSTER=demo.mapr.com \
-e MAPR_CLDB_HOSTS=MAPRN01 \
-e MAPR_CONTAINER_USER=mapr \
-e MAPR_CONTAINER_GROUP=mapr \
-e MAPR_CONTAINER_UID=5000 \
-e MAPR_CONTAINER_GID=5000 \
-e MAPR_MOUNT_PATH=/mapr \
-p 5901:5901 \
-p 80:6901 \
mkieboom/mapr-jumpbox



# MAPR-BOOTCAMP-JUMPBOX
docker build -t mkieboom/mapr-bootcamp-jumpbox .

docker run -it --privileged -p 5901:5901 -p 80:6901 mkieboom/mapr-jumpbox /bin/bash



docker run -it \
--cap-add SYS_ADMIN \
--cap-add SYS_RESOURCE \
--device /dev/fuse \
-e MAPR_CLUSTER=demo.mapr.com \
-e MAPR_CLDB_HOSTS=MAPRN01 \
-e MAPR_CONTAINER_USER=mapr \
-e MAPR_CONTAINER_GROUP=mapr \
-e MAPR_CONTAINER_UID=5000 \
-e MAPR_CONTAINER_GID=5000 \
-e MAPR_MOUNT_PATH=/mapr \
-p 5901:5901 \
-p 80:6901 \
mkieboom/mapr-jumpbox-fuseposix



docker run -it \
--cap-add SYS_ADMIN \
--cap-add SYS_RESOURCE \
--device /dev/fuse \
-e MAPR_CLUSTER=demo.mapr.com \
-e MAPR_CLDB_HOSTS=MAPRN01 \
-e MAPR_CONTAINER_USER=mapr \
-e MAPR_CONTAINER_GROUP=mapr \
-e MAPR_CONTAINER_UID=5000 \
-e MAPR_CONTAINER_GID=5000 \
-e MAPR_MOUNT_PATH=/mapr \
-p 5901:5901 \
-p 80:6901 \
mkieboom/mapr-pacc-jumpbox-docker

