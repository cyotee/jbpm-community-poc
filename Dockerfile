FROM jboss/jbpm-workbench

MAINTAINER "Robert Greathouse" "cyotee@gmail.com"

RUN /opt/jboss/wildfly/bin/add-user.sh --silent -a robert 0p3ns0urc3
RUN /opt/jboss/wildfly/bin/add-user.sh --silent -a admin c@nd1c3
RUN /opt/jboss/wildfly/bin/add-user.sh --silent -a nevin 0p3ns0urc3

ADD installs/poc-dependencies/* $JBOSS_HOME/standalone/deployments/$KIE_CONTEXT_PATH.war/WEB-INF/lib/
ADD installs/poc-dependencies/* $JBOSS_HOME/standalone/deployments/$DASHBUILDER_CONTEXT_PATH.war