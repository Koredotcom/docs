FROM squidfunk/mkdocs-material:9.5.10

# Install build dependencies and runtime dependencies
RUN apk add --no-cache --virtual .build-deps gcc libc-dev libxslt-dev musl-dev python3-dev && \
    apk add --no-cache libxslt

# Install all Python packages (some may require compilation)
RUN pip install --no-cache-dir lxml>=3.5.0 && \
    pip install --no-cache-dir \
      mkdocs-git-revision-date-localized-plugin \
      git+https://github.com/tibitoth/mkdocs-git-committers-plugin-2.git@master \
      mkdocs-glightbox

# Now remove build dependencies
RUN apk del .build-deps

RUN git config --global --add safe.directory /github/workspace

EXPOSE 8000

ENTRYPOINT ["mkdocs", "serve", "--dev-addr=0.0.0.0:8000" ]

CMD ["--config-file=mkdocs.tr.yml"]
