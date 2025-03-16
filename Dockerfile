ARG BUILD_FROM
FROM ${BUILD_FROM}

# Copy the startup script into the image
COPY run.sh /run.sh
RUN chmod a+x /run.sh

# Expose the container’s web port (Ingress will route to this)
EXPOSE 80

CMD [ "/run.sh" ]
