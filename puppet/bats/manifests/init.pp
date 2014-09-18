# = Class: test
#
# install/configure testing framework
#
class test () {
    package { "bats":
        name   => "bats",
        ensure => latest,
    }
    
    file { "/root/.ssh":
        ensure => "directory",
        owner  => "root",
        group  => "root",
        mode   => 700,
    }
    
    ssh_authorized_key { "jenkins":
        ensure => present,
        key    => "AAAAB3NzaC1yc2EAAAADAQABAAABAQC7twgxsaWviob4nCKrSSoRs+1yyJdqA0iKUb/WFFRxIW6KzWXLENXaqpvMn0nKPFlRbcVaWFHzFiCCyDc2B1HWeH1ttCYV54TNWzY9ApkqZC/tfbM8Wg8MV0lXatRTxAq7hqwOnj6ZTELvZxCGXg4+oHdw5qzoHryyreAMr0t/851c5iwZ7bqq+Q4uG5OqviWMobQjt0QfhpqR5CNvdtPnlSEXs8yHK1WQMMCYm93LQmOW+cXjY2OG8Q9DBNlsz1zIiptJ8pWPAdKh0J8J4CwaP7MxsSoSHVLHqcORl4dVVkLxq5eQ/FfNrqPrBe5+56gFSv83k3vW42aAEg33Len1",
        type   => "ssh-rsa",
        user   => "root",
        target => "/root/.ssh/authorized_keys",
    }
}

    
        

    