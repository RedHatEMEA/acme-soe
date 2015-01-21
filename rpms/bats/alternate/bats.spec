%global         githubparent    sstephenson
%global         commit          3b33a5ac6afd7f01ff4120659e2a72b851081178
%global         shortcommit     %(c=%{commit}; echo ${c:0:7})
%global         commitdate      20141016
%global         gitversion      .%{commitdate}git%{shortcommit}

Name:           bats
Version:        0.4.0
Release:        1%{gitversion}%{?dist}
Summary:        Bash Automated Testing System

Group:          Development/Libraries
License:        MIT
URL:            https://github.com/%{githubparent}/%{name}
Source0:        https://github.com/%{githubparent}/%{name}/archive/%{commit}/%{name}-%{version}-%{shortcommit}.tar.gz

BuildArch:      noarch

Requires:       bash

%description
Bats is a TAP-compliant testing framework for Bash.
It provides a simple way to verify that the UNIX programs
you write behave as expected.
Bats is most useful when testing software written in Bash,
but you can use it to test any UNIX program.

%prep
%setup -q -n %{name}-%{commit}

%install
mkdir -p ${RPM_BUILD_ROOT}%{_prefix} ${RPM_BUILD_ROOT}%{_libexecdir} ${RPM_BUILD_ROOT}%{_mandir} 
./install.sh ${RPM_BUILD_ROOT}%{_prefix}

%clean
rm -rf $RPM_BUILD_ROOT

%check

%files
%doc README.md LICENSE man/bats.1 man/bats.7
%{_bindir}/%{name}
%{_libexecdir}/%{name}
%{_libexecdir}/bats-exec-suite
%{_libexecdir}/bats-exec-test
%{_libexecdir}/bats-format-tap-stream
%{_libexecdir}/bats-preprocess
%{_mandir}/man1/%{name}.1.gz
%{_mandir}/man7/%{name}.7.gz

%changelog
* Wed Jan 21 2015 François Cami <fcami@redhat.com> - 0.4.0-1.20141016git3b33a5a
- First package version.

