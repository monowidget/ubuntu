# 기본 이미지로 Ubuntu 사용
FROM ubuntu:22.04

# 필요한 패키지 설치
RUN apt-get update && \
    apt-get install -y \
    iputils-ping \       # ping 도구
    curl \               # HTTP 통신 도구
    telnet \             # Telnet 클라이언트
    traceroute \         # 네트워크 경로 추적 도구
    net-tools \          # 네트워크 관리 도구 (ifconfig 등)
    iproute2             # 고급 라우팅, 트래픽 제어 도구

# 포트를 열어 놓지 않고, 컨테이너가 실행될 때 바로 Bash 쉘을 시작
CMD ["bash"]
