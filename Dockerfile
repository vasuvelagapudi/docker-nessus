FROM centos:7
RUN yum update 
RUN yum install -y wget
    
RUN wget -O /tmp/Nessus-6.9.2-es7.x86_64.rpm \
    "https://s3.ap-south-1.amazonaws.com/innodemo/Nessus-6.9.2-es7.x86_64.rpm"
RUN yum localinstall /tmp/Nessus-6.9.2-es7.x86_64.rpm    
    
EXPOSE 8834

ENTRYPOINT [ "/opt/nessus/sbin/nessusd" ]
