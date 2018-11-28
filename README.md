# fluent-plugin-nginx-error-multiline

[Fluentd](https://fluentd.org/) parser plugin to
parse nginx error logs on v1.0 (td-agent3).

Created based on the "Nginx Error Log" entry at:
https://docs.fluentd.org/v0.12/articles/common-log-formats

## Installation

### RubyGems

```
$ td-agent-gem install fluent-plugin-nginx-error-multiline
#or
$ gem install fluent-plugin-nginx-error-multiline
```

## Input Plugin Configuration
```
<source>
  @type tail
  tag nginx.error
  path /var/log/nginx/error.log
  pos_file /var/log/td-agent/nginx.error.log.pos
  multiline_flush_interval 3s
  emit_unmatched_lines true
  <parse>
    @type nginx_error_multiline
  </parse>
</source>

<match nginx.error>
  @type stdout
</match>
```

## Copyright

* Copyright(c) 2018- Carlos Montiers A.
* License
  * Apache License, Version 2.0

