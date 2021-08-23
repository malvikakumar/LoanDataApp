# LoanDataApp

A Flutter App to display Loan Data based on a given schema

## Install & build Steps
flutter pub get
flutter run

# Using different schemas for this UI
To use a different schema, you need to just modify the below files:
Models: Create models as per the new schema (see next section for auto generating models)
WidgetModel
SchemaApiClient and HomePage: Replace the Loan1 object with the current schema object

# To auto generate models from JSON
Below can be done to generate all data models required for a given json file/object:
Save the schema and record jsons in /jsons folder
Install plugin: Json to Dart Model
Goto the schema json file and do Ctrl+A -> Ctrl+Shift+P -> Convert from Selection to Code Generation supported classes (Shift + Ctrl + Alt + H) -> Select Schema -> yes -> lib

Note: The above auto generation works for a regular json object like record data but not for schema data due to the unique model of schema data
