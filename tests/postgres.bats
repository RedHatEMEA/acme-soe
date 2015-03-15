#!/usr/bin/env bats

if ! grep -q "profile_postgres" /var/lib/puppet/client_data/catalog/`hostname`.json >&2 ; then
  skip
fi

@test "Is postgres server installed?" {
    rpm -q postgresql-server
}

@test "Is http running?" {
    systemctl status postgresql
}


