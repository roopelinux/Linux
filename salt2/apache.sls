apache2:
  pkg.installed

/var/www/html/index.html:
  file.managed:
    - source: salt://index.html

/etc/apache2/mods-enabled/userdir.conf:
 file.symlink:
   - target: ../mods-available/userdir.conf

/etc/apache2/mods-enabled/userdir.load:
 file.symlink:
   - target: ../mods-available/userdir.load

apache2restart2:
  service.running:
    - name: apache2
    - watch:
      - file: /etc/apache2/mods-enabled/php7.0.conf

