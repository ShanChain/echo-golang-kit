#Version:0.0.1
FROM ubuntu:14.04
MAINTAINER snow "xuefeng.zhao@shanchain.com"
ADD ./echo-golang-kit /echo-golang-kit
CMD ["/echo-golang-kit"]