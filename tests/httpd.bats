#!/usr/bin/env bats

if ! grep -q "profile_apache" /var/lib/puppet/client_data/catalog/`hostname`.json >&2 ; then
  echo 1
  exit 1 
fi

@test "Is httpd installed?" {
    rpm -q httpd
}

@test "Is http running?" {
    systemctl status httpd
}

@test "Can we get a file?" {
    cat > /var/www/html/index.html <<EOF
<html>
OK
</html>
EOF
    wget http://localhost/
}

    
