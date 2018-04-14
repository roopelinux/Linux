libapache2-mod-php:
  pkg.installed

/etc/apache2/mods-enabled/php7.0.conf:
  file.managed:
    - source: salt://php7.0.conf

apache2restart:
  service.running:
    - name: apache2
    - watch:
      - file: /etc/apache2/mods-enabled/php7.0.conf


