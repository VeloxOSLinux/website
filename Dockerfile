FROM nginx:alpine

# Verzeichnisse säubern, um sicher zu sein
RUN rm -rf /usr/share/nginx/html/* && rm -rf /etc/nginx/conf.d/*

# Dateien kopieren
COPY dist /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
