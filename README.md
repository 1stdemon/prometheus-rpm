# Prometheus RPM Packages

[![Build Status](https://travis-ci.org/lest/prometheus-rpm.svg?branch=master)](https://travis-ci.org/lest/prometheus-rpm)

The repository contains the files needed to build [Prometheus][1] RPM packages
for CentOS 7.

The packages are available in [the packagecloud repository][2] and can be used
by adding the following `/etc/yum.repos.d/prometheus.repo`:

``` conf
[prometheus]
name=prometheus
baseurl=https://packagecloud.io/prometheus-rpm/release/el/7/$basearch
repo_gpgcheck=1
enabled=1
gpgkey=https://packagecloud.io/prometheus-rpm/release/gpgkey
       https://raw.githubusercontent.com/lest/prometheus-rpm/master/RPM-GPG-KEY-prometheus-rpm
gpgcheck=1
sslverify=1
sslcacert=/etc/pki/tls/certs/ca-bundle.crt
metadata_expire=300
```

## Build RPMs manually

Build all packages with:

``` shell
make all
```

or build a single package only, e.g.:

``` shell
make node_exporter
```

The resulting RPMs will be created in the `_dist` directory.

## Ansible role

An [Ansible][3] role which installs Prometheus packages from these RPMs is
available in [Github][4] or in [Galaxy][5].

[1]: https://prometheus.io
[2]: https://packagecloud.io/prometheus-rpm/release
[3]: https://www.ansible.com/
[4]: https://github.com/cogini/ansible-role-prometheus-rpm
[5]: https://galaxy.ansible.com/cogini/prometheus-rpm/
