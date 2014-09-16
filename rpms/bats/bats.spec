Name:           bats
Version:        0.4.0
Release:        1%{?dist}
Summary:        Bash Automated Testing System
Group:          System Environment/Base
License:        other
URL:    	https://github.com/sstephenson/bats/
Source0:        https://github.com/sstephenson/bats/archive/bats-master.zip


%description
Bats is a TAP-compliant testing framework for Bash. It provides a simple way to verify that the UNIX programs you write behave as expected.


%prep
%setup -n bats-master

%build

%install
./install.sh %{buildroot}/usr


%files
%{_bindir}/*
%{_libexecdir}/*
%{_mandir}/man1/*
%{_mandir}/man7/*

%changelog
* Thu Aug 14 2014 <nstrug@redhat.com> - 0.4.0-1
- First RPM build
