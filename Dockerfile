# Filename: Dockerfile
FROM ubuntu:20.04

RUN apt update \
    \
    && apt -y install apt-transport-https curl gnupg git build-essential clang python-dev python3-dev\
    \
    && curl -fsSL https://bazel.build/bazel-release.pub.gpg | gpg --dearmor > bazel.gpg \
    \
    && mv bazel.gpg /etc/apt/trusted.gpg.d/ \
    \
    && echo "deb [arch=amd64] https://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list \
    \
    && apt update \
    \
    && apt -y install bazel \
    \
    && apt update && apt -y full-upgrade

ENTRYPOINT ["bazel"]