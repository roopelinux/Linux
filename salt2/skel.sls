/etc/skel/public_html:
  file.directory:
    - makedirs: True

/etc/skel/public_html/index.html:
  file.managed:
    - source: salt://skelhomma/index.html
