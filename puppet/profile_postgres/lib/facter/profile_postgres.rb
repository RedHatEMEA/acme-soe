#
# report whether we have the postgres profile installed

Facter.add("profile_postgres") do
    setcode do
        true
    end
end
