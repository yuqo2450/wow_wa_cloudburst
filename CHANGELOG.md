# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

## [v11.0.2] - 2024-10-29

### Added

- Support for game version 11.0.2

### Changed

- Use new C_Spell object to get spell information

## [v10.2.7] - 2024-05-30

### Added

- Name to dynamic information

### Changed

- Updated to support game version 10.2.7
- Improved code quality by refactoring

### Fix

- Use correct percentage for healing stored

## [v10.2.6] - 2024-03-31

### Changed

- Updated to support game version 10.2.6

### Fixed

- Stacks displays correct amount of healing stored

## [v10.2.0] - 2023-11-04

### Changed

- Updated import string to game version 10.2.0

## [v2.0.0] - 2023-11-04

### Added

- Listening on event `PLAYER_TOTEM_UPDATE`
- Code for stacks to file base

### Changed

- Reworked _trigger_ and _untrigger_ functions to use new event
- Weak Aura is supported in WoW version 10.1.7

### Fixed

- An issue where stagger was not correctly displayed after using purifying brew

## [v1.0.2] - 2022-12-26

### Added

- Working aura

[v1.0.2]: https://github.com/yuqo2450/wow_wa_cloudburst/compare/v1.0.2
[v2.0.0]: https://github.com/yuqo2450/wow_wa_cloudburst/compare/v1.0.2...v2.0.0
[v10.2.0]: https://github.com/yuqo2450/wow_wa_cloudburst/compare/v2.0.0...v10.2.0
[v10.2.6]: https://github.com/yuqo2450/wow_wa_cloudburst/compare/v10.2.0...v10.2.6
[v10.2.7]: https://github.com/yuqo2450/wow_wa_cloudburst/compare/v10.2.6...v10.2.7
[v11.0.2]: https://github.com/yuqo2450/wow_wa_cloudburst/compare/v10.2.7...v11.0.2
