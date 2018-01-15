FROM mkieboom/mapr-jumpbox-base

# Set the VNC password
ENV VNC_PW=maprbootcamp

# Switch to root user
USER root

# Install ssh client and nfs libraries
RUN yum install -y openssh-clients nfs-utils nfs-utils-lib && \
    yum clean all && \
    rm -rf /var/cache/yum

# Add the MapR desktop background picture
ADD mapr_background.png /headless/.config/
ADD xfce4-desktop.xml /headless/.config/xfce4/xfconf/xfce-perchannel-xml

# Add a launch script creating the mapr group and user
ADD launch-jumpbox.sh /launch-jumpbox.sh
RUN sudo -E chmod +x /launch-jumpbox.sh

# Add the desktop hyperlinks
ADD terminal.desktop /headless/Desktop/
ADD mapr_mcs.desktop /headless/Desktop/
ADD mapr_bootcamp_labs.desktop /headless/Desktop/

# Make all hyperlinks executable
RUN chmod +x /headless/Desktop/*.desktop

# Mount the MapR cluster in /mapr
ADD /mount-maprfs-script.sh /
RUN chmod +x /mount-maprfs-script.sh
RUN sudo mkdir /mapr

ADD /mount-maprfs-launch.sh /headless/Desktop/
RUN chmod +x /headless/Desktop/*.sh

CMD sudo -E /launch-jumpbox.sh
