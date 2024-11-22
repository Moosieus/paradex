# Changelog

## v0.3.2 (2024-11-22)
* `::fieldname` casts have been updated to `::paradedb.fieldname`. This change is backwards compatible to `0.10.0`.
* Test/example migrations have been updated to demo Paradex `0.13.0`'s new index creation syntax.
* Be mindful that upgrading to ParadeDB `0.13.0` will require you to revise your existing migrations.

## v0.3.1 (2024-11-10)
* There are no code changes in this release. `README.md` has been updated to include compatibility with ParadeDB `0.12.x`.
* Included `CHANGELOG.md` and fixed macro groupings in hexdocs.

## v0.3.0 (2024-11-05)
* Added `Paradex.extensions/0` which presently consists of `[ Paradex.FieldName ]`.
  * This allows Postgrex to parameterize field names in ParadeDB query objects, solving issue [#4](https://github.com/Moosieus/paradex/issues/4).
* Updated docs to include instructions for the above.

*If you've configured everything correctly and are receiving an error that `fieldname` doesn't exist, try updating ParadeDB.*

## v0.2.0 (2024-10-27)
* Added `lenient` and `conjunction_mode` options to `parse` (non-breaking).
* Added `lenient` option to `parse_with_field` as the 2nd argument, making `conjunction_mode` the 3rd (minor breaking change).

## v0.1.0 (2024-10-19)
Initial Release.
