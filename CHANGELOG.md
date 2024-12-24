# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [6.0.0] - 2024-12-24
- Updated php to version 8.4
- Updated composer to version 2.8.4
- Switch from Dronepecker to Github Actions Build

## [5.0.0] - 2023-12-01
- Updated php to version 8.3
- Updated composer to version 2.6.5
- Removed forge-cli

## [4.0.0] - 2022-12-10
- Updated php to version 8.2
- Updated composer to version 2.4.4

## [3.1.0] - 2022-01-29
- Added composer self update to build command

## [3.0.1] - 2022-01-22
- Updated composer to version 2.2.5

## [3.0.0] - 2022-01-04
- Updated php to version 8.1
- Updated composer to version 2.2.3

## [2.4.0] -- 2021-12-25
- Imagick is now installed again via PECL
- Updated composer to version 2.2.1

## [2.3.0] - 2021-09-10
- Add `forge-cli`
- Updated composer to version 2.1.6

## [2.2.0] - 2021-07-04
- Updated composer to version 2.1.3
- Move autobuild to Drone CI, instead of Docker Hub

## [2.1.0] - 2021-03-20
- Add `pcov` extension

## [2.0.1] - 2021-02-19
- Fix imagick installation

## [2.0.0] - 2021-02-19
- Updated PHP to version 8

## [1.5.3] - 2021-02-21
- Updated composer to version 2.0.9

## [1.5.2] - 2021-01-17
- Fixed invalid dockerfile format

## [1.5.1] - 2021-01-17
- Changed memory limit to unlimited for php processes
- Updated composer to version 2.0.8

## [1.5.0] - 2020-09-19
- Updated to composer 2.0.0-RC1

## [1.4.0] - 2020-09-12
- Added `gd` extension

## [1.3.0] - 2020-08-26
- Added `imagick` extension

## [1.2.0] - 2020-05-27
- Added `pcov` extension

## [1.1.0] - 2020-04-15
- Added `intl` extension

## [1.0.1] - 2020-02-16
- Bumping version to test docker hub build

## 1.0.0 -- 2020-02-16
- Added initial docker image with php 7.4 and composer

[6.0.0]: https://github.com/jkniest/docker-testing-php/compare/5.0.0...6.0.0
[5.0.0]: https://github.com/jkniest/docker-testing-php/compare/4.0.0...5.0.0
[4.0.0]: https://github.com/jkniest/docker-testing-php/compare/3.1.0...4.0.0
[3.1.0]: https://github.com/jkniest/docker-testing-php/compare/3.0.1...3.1.0
[3.0.1]: https://github.com/jkniest/docker-testing-php/compare/3.0.0...3.0.1
[3.0.0]: https://github.com/jkniest/docker-testing-php/compare/2.4.0...3.0.0
[2.4.0]: https://github.com/jkniest/docker-testing-php/compare/2.3.0...2.4.0
[2.3.0]: https://github.com/jkniest/docker-testing-php/compare/2.2.0...2.3.0
[2.2.0]: https://github.com/jkniest/docker-testing-php/compare/2.1.0...2.2.0
[2.1.0]: https://github.com/jkniest/docker-testing-php/compare/2.0.1...2.1.0
[2.0.1]: https://github.com/jkniest/docker-testing-php/compare/2.0.0...2.0.1
[2.0.0]: https://github.com/jkniest/docker-testing-php/compare/1.5.3...2.0.0
[1.5.3]: https://github.com/jkniest/docker-testing-php/compare/1.5.2...1.5.3
[1.5.2]: https://github.com/jkniest/docker-testing-php/compare/1.5.1...1.5.2
[1.5.1]: https://github.com/jkniest/docker-testing-php/compare/1.5.0...1.5.1
[1.5.0]: https://github.com/jkniest/docker-testing-php/compare/1.4.0...1.5.0
[1.4.0]: https://github.com/jkniest/docker-testing-php/compare/1.3.0...1.4.0
[1.3.0]: https://github.com/jkniest/docker-testing-php/compare/1.2.0...1.3.0
[1.2.0]: https://github.com/jkniest/docker-testing-php/compare/1.1.0...1.2.0
[1.1.0]: https://github.com/jkniest/docker-testing-php/compare/1.0.1...1.1.0
[1.0.1]: https://github.com/jkniest/docker-testing-php/compare/1.0.0...1.0.1
