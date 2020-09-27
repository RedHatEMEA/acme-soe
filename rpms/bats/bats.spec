Name:           bats
Version:        0.4.0
Release:        11%{?dist}
Summary:        Bash Automated Testing System
Group:          System Environment/Base
License:        other
URL:    	https://github.com/sstephenson/bats/
Source0:        https://github.com/sstephenson/bats/archive/bats-master.zip


%description
Bats is a TAP-compliant testing framework for Bash. It provides a simple way to verify that the UNIX programs you write behave as expected.

%global debug_package %{nil}


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
* Sun Sep 27 2020 <pcfe@redhat.com> - 0.4.0-11
- do NOT build debug package

* Thu Aug 14 2014 <nstrug@redhat.com> - 0.4.0-1
- First RPM build
