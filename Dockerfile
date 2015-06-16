FROM bitnami/base-ubuntu:14.04
MAINTAINER The Bitnami Team <containers@bitnami.com>

ENV BITNAMI_APP_NAME memcached
ENV BITNAMI_APP_USER memcached
ENV BITNAMI_APP_VERSION 1.4.21-2
ENV BITNAMI_APP_VOL_PREFIX=/bitnami/$BITNAMI_APP_NAME
ENV BITNAMI_APP_DIR=$BITNAMI_PREFIX/$BITNAMI_APP_NAME

RUN sh $BITNAMI_PREFIX/install.sh

ENV PATH $BITNAMI_APP_DIR/bin:$BITNAMI_PREFIX/common/bin:$PATH

VOLUME ["$BITNAMI_APP_VOL_PREFIX/logs"]
EXPOSE 11211

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["memcached", "-v"]
