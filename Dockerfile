FROM samihellsten/composer
LABEL maintainer="Sami Hellsten"

# Install Drupal Coding Standards
RUN composer global require drupal/coder:8.3.x

# Set Drupal as default CodeSniffer Standard
RUN phpcs --config-set default_standard Drupal,DrupalPractice


WORKDIR /app

CMD ["phpcs"]
CMD ["phpcbf"]
