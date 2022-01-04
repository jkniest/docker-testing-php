# Simple docker image for php testing

This is meant to be used with DroneCI.

## What is included?
- PHP 8.1 CLI
- Additional php extensions: bcmath, pcntl, pdo, pdo_pgsql, zip exif, intl, pcov, imagick, gd
- Composer
- Forge CLI

## Usage
- `PHP 8.1` should use tag `3`
- `PHP 8` should use tag `2`
- `PHP 7.4` should use tag `1` (deprecated)
