FROM centos:7

LABEL version="latest" description="meta oauth2 image"

USER root:root

RUN groupadd nginx && useradd -g nginx nginx

RUN yum provides '*/applydeltarpm' && yum install -y deltarpm && yum clean all
#切换yum源
RUN yum install -y yum-utils device-mapper-persistent-data lvm2 \
    && yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo \
    && yum clean all

RUN yum install -y deltarpm pcre-devel openssl-devel gcc curl gcc-c++ automake autoconf libtool make wget vim \
    && yum clean all
	
# 安装中文包
RUN yum install -y kde-l10n-Chinese \
    && yum -y reinstall glibc-common \
    && localedef -c -f UTF-8 -i zh_CN zh_CN.utf8 \
    && echo 'LANG="zh_CN.UTF-8"' > /etc/locale.conf \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && yum clean all
ENV LANG zh_CN.UTF-8
ENV LC_ALL zh_CN.UTF-8

CMD sleep infinity