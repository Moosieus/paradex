# Changelog

## v0.3.0 (2024-11-03)
* Added `Paradex.extensions/1` which presently consists of `[ Paradex.FieldName ]`.
  * This allows Postgrex to parameterize field names in ParadeDB query objects, solving issue [#4](https://github.com/Moosieus/paradex/issues/4).
* Updated docs to include instructions for the above.

## v0.2.0 (2024-10-27)
* Added `lenient` and `conjunction_mode` options to `parse` (non-breaking).
* Added `lenient` option to `parse_with_field` as the 2nd argument, making `conjunction_mode` the 3rd (minor breaking change).

## v0.1.0 (2024-10-19)
Initial Release.
