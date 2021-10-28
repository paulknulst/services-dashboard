FROM b4bz/homer
COPY config.yml /www/assets/config.yml
COPY private.yml /www/assets/private.yml
COPY custom.css /www/assets/custom.css
COPY icons /www/icons

RUN sed -i s/"<meta name=\"robots\" content=\"noindex\">"/"<meta name=\"description\" content=\"This site contains list with services used by f1nalboss.de and with links to the service. Most of them are public accessible\"\/><meta name=\"robots\" content=\"index, follow\"\/><meta name=\"twitter:card\" content=\"This site contains list with services used by f1nalboss.de and with links to the service. Most of them are public accessible\"\/><meta property=\"og:title\" content=\"f1nalboss.de\" \/><meta property=\"og:description\" content=\"This site contains list with services used by f1nalboss.de and with links to the service. Most of them are public accessible\" \/><meta property=\"og:image\" content=\"https:\/\/i.postimg.cc\/T3rnr4m4\/Untitled.png\" \/><link rel=\"canonical\" href=\"https:\/\/www.f1nalboss.de\/\"\/>"/ www/index.html