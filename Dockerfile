FROM grafana/grafana:2.0.2
RUN wget https://github.com/alexanderzobnin/grafana-zabbix/archive/v2.0.1.tar.gz
RUN tar zxvf v2.0.1.tar.gz
RUN mv grafana-zabbix-2.0.1/zabbix /usr/share/grafana/public/app/plugins/datasource
ADD plugin.json /usr/share/grafana/public/app/plugins/datasource/zabbix/plugin.json
