# 기본 이미지로 Ubuntu 사용
FROM ubuntu:22.04

# 필요한 패키지 설치
RUN apt-get update && \
    apt-get install -y \
    iputils-ping \
    curl \
    telnet \
    traceroute \
    net-tools \
    iproute2 \
    nginx

# Nginx 설정
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# 포트 80 열기
EXPOSE 80

# Nginx 실행
CMD ["nginx"]
