apache2:
  pkg.installed

/etc/hosts:
  file.managed:
    - source: salt://hosts

/etc/apache2/sites-available/esim.example.conf:
  file.managed:
    - source: salt://esim.example.conf

a2ensite esim.example.conf:
  cmd.run

apache2restart:
  service.running:
    - name: apache2
    - watch:
      - file: /etc/apache2/sites-available/esim.example.conf
