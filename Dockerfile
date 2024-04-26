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
    iproute2

# 포트를 열어 놓지 않고, 컨테이너가 실행될 때 바로 Bash 쉘을 시작
CMD ["bash"]
