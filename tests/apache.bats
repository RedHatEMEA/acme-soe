#!/usr/bin/env bats

# vim: filetype=sh:autoindent:tabstop=2:shiftwidth=2:expandtab

load os_helper

@test "apache, is httpd installed?" {
      tPackageExists httpd
}

@test "apache, is http running?" {
  if [ -e '/usr/bin/systemctl' ]
  then
    run systemctl status httpd
  else
    run service httpd status
  fi 
  [ "$status" -eq 0 ]
}

@test "apache, can we get a file from http://localhost/?" {
    cat > /var/www/html/index.html <<EOF
<html>
OK
</html>
EOF
    curl -o /tmp/1 http://localhost/
    diff -q /var/www/html/index.html /tmp/1
}

@test "apache, can we get that file from https://localhost/ without cert check?" {
    curl --insecure -o /tmp/2 http://localhost/
    diff -q /var/www/html/index.html /tmp/2
}

@test "apache, can we get that file from http://<my FQDN>/?" {
    curl -o /tmp/3 http://$(hostname -f)/
    diff -q /var/www/html/index.html /tmp/3
}

@test "apache, can we get that file from https://<my FQDN>/ without cert check?" {
    curl --insecure -o /tmp/4 https://$(hostname -f)/
    diff -q /var/www/html/index.html /tmp/4
}

@test "apache, can we get that file from https://<my FQDN>/ with cert check?" {
    skip "no verifyable SSL cert deployed, no point in testing"
    curl -o /tmp/5 https://$(hostname -f)/
    diff -q /var/www/html/index.html /tmp/5
}
