<!--
N.B.: This README was automatically generated by https://github.com/YunoHost/apps/tree/master/tools/README-generator
It shall NOT be edited by hand.
-->

# Diaspora for YunoHost

[![Integration level](https://dash.yunohost.org/integration/diaspora.svg)](https://dash.yunohost.org/appci/app/diaspora) ![Working status](https://ci-apps.yunohost.org/ci/badges/diaspora.status.svg) ![Maintenance status](https://ci-apps.yunohost.org/ci/badges/diaspora.maintain.svg)

[![Install Diaspora with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=diaspora)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install Diaspora quickly and simply on a YunoHost server.
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview

Distributed social networking service

**Shipped version:** 0.7.18.1~ynh1

## Screenshots

![Screenshot of Diaspora](./doc/screenshots/Diaspora_latest.png)

## Disclaimers / important information

- There is currently no LDAP integration
- the installation is very long, especially the frontend building step
- As upstream doesn't support it, there is no possibility to change the endpoint/url of diaspora\*. Please choose it carefully!
- The main permission should be granted to "visitors". In other term, diaspora is intented to be a public application. Only deviate from that if you know what you are doing!

## Documentation and resources

* Official app website: <https://diasporafoundation.org/>
* Official user documentation: <https://wiki.diasporafoundation.org/FAQ_for_users>
* Official admin documentation: <https://wiki.diasporafoundation.org/FAQ_for_pod_maintainers>
* Upstream app code repository: <https://github.com/diaspora/diaspora>
* YunoHost Store: <https://apps.yunohost.org/app/diaspora>
* Report a bug: <https://github.com/YunoHost-Apps/diaspora_ynh/issues>

## Developer info

Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/diaspora_ynh/tree/testing).

To try the testing branch, please proceed like that.

``` bash
sudo yunohost app install https://github.com/YunoHost-Apps/diaspora_ynh/tree/testing --debug
or
sudo yunohost app upgrade diaspora -u https://github.com/YunoHost-Apps/diaspora_ynh/tree/testing --debug
```

**More info regarding app packaging:** <https://yunohost.org/packaging_apps>
