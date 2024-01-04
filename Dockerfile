
FROM metabase/metabase:v0.44.0

RUN apk add --no-cache git
RUN apk add --no-cache openssh

WORKDIR /plugins

ADD https://github.com/dacort/metabase-athena-driver/releases/download/v1.2.0/athena.metabase-driver.jar /plugins 
ADD https://github.com/starburstdata/metabase-driver/releases/download/1.0.7/starburst-1.0.7.metabase-driver.jar /plugins

VOLUME /home/ec2-user/plugins:/plugins

RUN \
  addgroup -S metabase && \
  adduser -S -G metabase metabase && \
  chown -R metabase:metabase /plugins/athena.metabase-driver.jar && \
  chown -R metabase:metabase /plugins/starburst-1.0.7.metabase-driver.jar && \
  LINE="JAVA_OPTS=\"\${JAVA_OPTS} -Xmx\${JAVA_MXMEM}\"" && \ 
  sed -i $(( $( grep -n 'Setup Java Options' /app/run_metabase.sh | cut -f1 -d: ) + 1 ))"i$LINE" /app/run_metabase.sh

EXPOSE 80

ENTRYPOINT ["/app/run_metabase.sh"]


