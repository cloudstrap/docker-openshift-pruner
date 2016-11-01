FROM openshift/origin

MAINTAINER CloudStrap <support@cloudstrap.io>

LABEL io.k8s.display-name="OpenShift Pruner" \
      io.k8s.description="Prunes old builds, deployments and images."

COPY pruner /usr/bin/

USER 1001
ENTRYPOINT ["pruner"]
