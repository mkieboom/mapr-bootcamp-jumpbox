FROM mkieboom/mapr-jumpbox
CMD /bin/bash

# Set the VNC password
ENV VNC_PW=maprbootcamp

# Switch to root user
USER root

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

ADD launch-bootcamp.sh /launch-bootcamp.sh
RUN chmod +x /launch-bootcamp.sh

RUN sudo -E /launch-jumpbox.sh && \
    sudo -E /launch-bootcamp.sh

#RUN bash /launch-bootcamp.sh

CMD /bin/bash

## switch back to default user (mapr)
#USER mapr

