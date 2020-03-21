FROM alpine
ENV KOPS_VERSION 1.16.0
RUN apk --no-cache add curl
RUN curl -sL https://github.com/kubernetes/kops/releases/download/v"${KOPS_VERSION}"/kops-linux-amd64 -o /usr/local/bin/kops && chmod +x /usr/local/bin/kops
RUN curl -sL https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl && chmod +x /usr/local/bin/kubectl
