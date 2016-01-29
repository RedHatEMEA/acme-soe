#!/usr/bin/env bats
# This file provides a generic way of verifying a service is running
# to run this create a link to the file with the service name
# i.e. httpd.bats

service=$( basename "${BATS_TEST_FILENAME}" .bats
if [  $( basename "${BATS_TEST_FILENAME}" ) == 'running_services.bats' ]
then
  return
fi

@test "Is $service service running?" {
  if [ -e '/usr/bin/systemctl' ]
  then
    run systemctl status "$service"
  else
    run service "$service" status
  fi 
  [ "$status" -eq 0 ]
}
