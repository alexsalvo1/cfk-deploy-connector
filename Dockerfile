FROM confluentinc/cp-server-connect:7.2.0
USER root
RUN  confluent-hub install --no-prompt confluentinc/kafka-connect-datagen:0.5.3 \
&& confluent-hub install --no-prompt confluentinc/kafka-connect-jms:11.0.18 \
&& confluent-hub install --no-prompt confluentinc/kafka-connect-activemq:11.0.18
USER 1001
