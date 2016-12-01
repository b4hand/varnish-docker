# varnish-docker
Docker container for Varnish 4.1.

Uses
[phusion/baseimage:0.9.19](https://github.com/phusion/baseimage-docker)
as its base image, and the official Varnish repositories for the
Varnish version.

`varnishncsa` logs are forwarded via syslog so they are available to
`docker logs`.

## Environment variables
* `VARNISH_OPTIONS`: Specifies your command line options to
  `varnishd`. At minimum, you'll need to specify a location for the
  VCL using the `-f` option or use the `-b` option to specify a
  backend.
* `VARNISHNCSA_LOGFORMAT`: Specifies your format string for
  `varnishncsa`. This is configurable, but the default is pretty sane.
