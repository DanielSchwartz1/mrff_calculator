# Unprivileged nginx: runs as UID 101 on port 8080, works with a read-only root filesystem.
FROM nginxinc/nginx-unprivileged:1.27-alpine

COPY nginx/default.conf /etc/nginx/conf.d/default.conf
COPY app /usr/share/nginx/html

EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
