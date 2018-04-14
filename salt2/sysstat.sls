sysstat:
  pkg.installed

/etc/default/sysstat:
  file.managed:
    - source: salt://sysstat

restartsysstat:
  service.running:
    - name: sysstat
