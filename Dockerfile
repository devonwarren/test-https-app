FROM nginx:stable

COPY default.conf /etc/nginx/conf.d/
COPY nginx.* /etc/ssl/

RUN chown -R nginx:nginx /var/cache/nginx &&  \
    chown -R nginx:nginx /var/log/nginx &&  \
    chown -R nginx:nginx /etc/nginx && \
    chown -R nginx:nginx /etc/ssl
RUN touch /var/run/nginx.pid && \
    chown -R nginx:nginx /var/run/nginx.pid

USER 101
