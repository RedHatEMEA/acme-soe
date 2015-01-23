#!/usr/bin/env bats

@test "There is a local AMQP server properly running" {
  if ! which qpid-python-test; then
	skip "AMQP not tested because qpid-python-test not installed, which should come with package 'qpid-python' from repository 'RH Common'."
  fi
  run qpid-python-test
  [ "$status" -eq 0 ]
}
