FROM nginx:alpine
LABEL author="XXX LTD"
COPY /nginx/default.conf /etc/nginx/conf.d/
COPY /dist /usr/share/nginx/html
EXPOSE 8080 80 443
CMD ["nginx", "-g", "daemon off;"]