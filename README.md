# PHPUNIT

A Programmer-Oriented Testing Framework for PHP. An instance of the xUnit architecture for unit testing frameworks. Checkout the [**Getting Started with PHPUnit**](https://phpunit.de/getting-started.html) page on the project website for a quick intro. Check the documentation on the [__8.x__](https://phpunit.readthedocs.io/en/8/) release.

> Since @sebastianbergmann abandoned **dbunit**, it will no more be included in this and future builds. You can read more on this issue from <a href="https://github.com/sebastianbergmann/dbunit/issues/217" target="_blank">**here**</a>

## Current Tag:

* PHPUnit:  **`8.3.4`**

## Add shortcut function via .bashrc or .zshrc

```bash
php() { docker run --rm -it -v "$(pwd)":/src -w /src  pam79/phpunit "$@"; }
```
&nbsp;

Source file to apply changes
```bash
$ source ~/.bashrc
```
&nbsp;

## Or just export it with a wrapper script as a global binary
```bash
$ mkdir -p scripts && cd scripts
$ vim phpunit.sh
```
&nbsp;

Add the following content to `phpunit.sh` file

```bash
#!/bin/sh

# A wrapper script for invoking phpunit with docker
# Put this script in $PATH as `phpunit`

VERSION="latest"

exec docker run -it --rm -v "$PWD":/src -w /src "pam79/phpunit:$VERSION" "$@"
```
&nbsp;

Install and verify if the script was installed

```bash
$ sudo install -m 0755 phpunit.sh /usr/local/bin/phpunit
$ whereis phpunit
```
&nbsp;

## The shortcut function or binary can be used as follows:
```bash
$ phpunit --version
$ phpunit --help
$ phpunit --testsuite "ModulesTest"
```
&nbsp;

Checkout PHPUnit <a href="https://phpunit.readthedocs.io" target="_blank">**official documentation**</a> for more details.
