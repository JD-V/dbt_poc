Welcome to your new dbt project!


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices


### Commands:
| command | usage | 
| :-----: | :-----: |
| dbt run | To run dbt jobs|
| dbt run --full-refresh --select <model_name> | To run dbt full refresh job for a specified model. The usual dbt run command will fail in case of schema change when we have on_schema_change = 'fail' set on any of the model config. so you must use --full-refresh --select <model_name> arg |
| dbt compile | To complie the project and make sure all references are correct |
| dbt snapshot | To recreate scd type 2 based tablesd defined under snapshots/ |
| dbt test | To run all the tests |
| dbt test --select <model_name> | To run tests associated with selected models |
| dbt seed | To load all the files under seed/ |
| dbt deps | To install third party packages defined in packages.yml |
| dbt docs generate | To generate documentation | 
| dbt docs serve | Light weight server to host dbt documentation html site |


### schema.yml
schema.yml file present under models/, is used to define generic and custom generic tests
generic tests are the built in tests available in dbt.
custom generic tests needs to be defined by you based on customised requirements and can be placed under macros

### packages.yml
schema.yml file present at root level, it defines the external packages which help extend dbt functionality.
To explore the packages visit hub.dbt.com