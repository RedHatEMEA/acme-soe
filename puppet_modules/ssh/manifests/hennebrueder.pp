# = Class: ssh::hennebrueder
#
# Add Sebastian Hennebrueder keys to /root/.ssh/authorized_keys2
#
class ssh::hennebrueder ($hennebrueder_key = "present") {
  ssh_authorized_key { "sebastian.hennebrueder":
    ensure  => $hennebrueder_key,
    key     => "AAAAB3NzaC1yc2EAAAABIwAAAQEAysL3f8Uha9MMKSWO8mAQKCAksD/2hLgusSdDJY+C19S3PZPE/rhP5czl3aFstKbjU4Vla9BKeufu74+qT//z0IcxPyMpb8Ukkcmc9PKZifQztHSATBvPzGlgjQMRHqJoCjS/yy5nGTf6Sbl8noZ7qBiSGvi8Yu7XfL29wHiFHopJxzSPQj6FmfYdI/Ci84qJC2MIMpPDbiDOsBEycZ7IpWpzFPqdV28utSmuO0rP40npPm+GtEuOLblnnBEBPamni0woieJ1K1mBQ5EAFZFqRKifLZI+INKxcSGPdrxVexhvl+n3jstm1R49km5ApDDpU4UyGGSCYBU8vUDRA+ypIw==",
    type    => "ssh-rsa",
    user    => "root",
    require => [Package["sshd"], File["/root/.ssh"]]
  }
}
