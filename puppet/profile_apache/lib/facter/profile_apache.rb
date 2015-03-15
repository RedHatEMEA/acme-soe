#
# report whether we have the Apache profile installed

Facter.add("profile_apache") do
    setcode do
        true
    end
end
