#!/usr/bin/env bats

if ! grep -q "profile_postgres" /var/lib/puppet/client_data/catalog/`hostname`.json >&2 ; then
  echo 1
  exit 1  
fi

@test "Is postgres server installed?" {
    rpm -q postgresql-server
}

@test "Is postgres running?" {
    systemctl status postgresql
}


