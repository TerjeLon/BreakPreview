# BreakPreview

## How to break preview
* Open PersonView and build preview
* Add a model version to the database
* Add a new field in the Person entity
* Set new model version to current
* Open PersonView and try to build preview

## How to fix preview after this
* Run `xcrun simctl --set previews delete all`
* Build preview again
