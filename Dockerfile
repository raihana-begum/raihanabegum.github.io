FROM imdadareeph/rhel7nodejs9
MAINTAINER Dr. Banani Boro <drbananiboro@gmail.com>
RUN mkdir -p /srv/drbananiboro
EXPOSE 8888
ENV PORT 8888
ADD . /srv/drbananiboro
ADD index.js /srv/drbananiboro
ADD package.json /srv/drbananiboro
WORKDIR /srv/drbananiboro
RUN npm install
CMD ["npm", "start"]
