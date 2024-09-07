FROM ubuntu

RUN apt update -y && apt install wget -y && wget https://install.speedtest.net/app/cli/ookla-speedtest-1.2.0-linux-x86_64.tgz && tar -xvzf ookla-speedtest-1.2.0-linux-x86_64.tgz -C /usr/bin/

COPY speedtest-cli.json /root/.config/ookla/

ENTRYPOINT [ "speedtest" ]
