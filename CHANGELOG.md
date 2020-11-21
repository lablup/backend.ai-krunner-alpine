### 3.3.1 (2020-11-21)

* Embed the licenses of CPython and pre-installed wheels and make them available via
  `/opt/backend.ai/licenses` in user containers.

### 3.3.0 (2020-10-23)

* Replace the ttyd build with a custom built one with lower libwebsockets version
  to mitigate frequent connection timeout issue with ttyd service ports.

### 3.2 (2020-07-17)

* Update ttyd version to 1.6.1.

### 3.1 (2020-04-24)

* Update dependencies and match the plugin interface.

### 3.0 (2020-03-14)

* Update the krunner image for `alpine3.8` to Python 3.8.2 along with krunner dependencies.

### 2.0 (2019-09-22)

* Add `ttyd` as an intrinsic service binary.

### 1.0 (2019-07-25)

* Initial release for `alpine3.8` with Python 3.6.8.
