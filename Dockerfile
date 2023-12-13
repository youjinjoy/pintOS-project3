FROM ubuntu:18.04

# 저장소 리스트 캐시 삭제
RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y gcc-multilib g++-multilib

# 필요한 패키지 설치
RUN apt-get install -y vim build-essential git cmake net-tools gdb clang

# 작업 디렉토리 설정
WORKDIR /work
