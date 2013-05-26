# chef-aria2

[![Build Status](https://travis-ci.org/cmur2/chef-aria2.png)](https://travis-ci.org/cmur2/chef-aria2)

## Description

Installs [aria2](http://aria2.sourceforge.net/) and optionally configures a RPC-enabled daemon process.

## Usage

Use `recipe[aria2::default]` for simply installing the aria2 package. Use `recipe[aria2::daemon]` for additionally setting up and configuring an aria2c RPC-enabled daemon process.

## Requirements

### Platform

It should work on all OSes providing an aria2 package. For RPC functionality you need a recent version that's only available since Debian Wheezy.

For supported Chef/Ruby version see [Travis](https://travis-ci.org/cmur2/chef-aria2).

## Recipes

### default

Nothing to do.

### daemon

With `node['aria2']['user']` you can configure the user under which the daemon should be run, defaults to 'nobody'.

The daemon process gets */etc/aria2.conf* passed as it's configuration file which itself gets populated from the hash under `node['aria2']['conf']` where you may e.g. specify the RPC user and password and the like.

## License

chef-aria2 is licensed under the Apache License, Version 2.0. See LICENSE for more information.
