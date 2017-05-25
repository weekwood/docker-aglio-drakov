FROM node:6.10.3

RUN yarn global add drakov
RUN yarn global add aglio

RUN mkdir -p /app

ENV BLUEPRINT_TOOLS_DOC_INDEX api.apib
ENV BLUEPRINT_TOOLS_THEME_TEMPLATE default
ENV BLUEPRINT_TOOLS_THEME_VARIABLES default

COPY . /app

ENTRYPOINT ["/app/docker-entrypoint.sh"]

EXPOSE 3000 3001
