FROM docker:dind

COPY run-container.sh /

RUN chmod u+x /run-container.sh

ENTRYPOINT ["/run-container.sh"]
