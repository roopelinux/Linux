openssh-server:
  pkg.installed

/etc/ssh/sshd_config:
  file.managed:
    - source: salt://ssh/sshd_config
    - template: jinja
    - context:
      port: {{ pillar.get('port', 22) }}

sshd:
  service.running:
    - watch:
      - file: /etc/ssh/sshd_config
