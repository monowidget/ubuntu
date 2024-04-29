# 기본 이미지로 Ubuntu 사용
FROM ubuntu:latest

# 컨테이너를 root 사용자로 실행
USER root

# 필요한 패키지 설치
RUN apt-get update && apt-get install -y curl iputils-ping traceroute wget netcat-openbsd mysql-client dnsutils

ENV IP_ADDRESS=0.0.0.0
ENV PORT=8080

CMD ["sh", "-c", "while true; do nc -zv $IP_ADDRESS $PORT; sleep 10; done"]
