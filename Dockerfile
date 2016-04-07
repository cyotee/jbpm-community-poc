FROM jboss/jbpm-workbench

MAINTAINER "Robert Greathouse" "cyotee@gmail.com"

RUN /opt/jboss/wildfly/bin/add-user.sh --silent -a -u robert -p 0p3ns0urc3 -g admin
RUN /opt/jboss/wildfly/bin/add-user.sh --silent -a -u admin -p cand1c3 -g admin
RUN /opt/jboss/wildfly/bin/add-user.sh --silent -a -u nevin -p 0p3ns0urc3 -g admin

ADD installs/poc-dependencies/* $JBOSS_HOME/standalone/deployments/$KIE_CONTEXT_PATH.war/WEB-INF/lib/
ADD installs/poc-dependencies/* $JBOSS_HOME/standalone/deployments/$DASHBUILDER_CONTEXT_PATH.war/WEB-INF/lib/