# php ubuntu dockerfile

# pull base image
FROM dockerfile/ubuntu

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh && /bin/bash -l

