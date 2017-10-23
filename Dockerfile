FROM jekyll/jekyll

ADD . /srv/jekyll
RUN jekyll build

CMD ["jekyll", "serve"]