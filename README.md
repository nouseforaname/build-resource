# build-resource
This is a Concourse resource that allows triggering if another pipeline/job have succeeded

# Deploying to Concourse

You can use the docker image by defining the [resource type](https://concourse-ci.org/resource-types.html) in your pipeline YAML.

For example:

```
resource_types:
- name: build-resource
  type: docker-image
  source:
    repository: platformengineering/build-resource
```

# Source Configuration

* `api`: _required_. The Concourse API.
* `team`: _required_. The team the other pipeline is in.
* `username`: _required_. The username for the tea.
* `password`: _required_. The password for the team.
* `pipeline`: _required_. The pipeline to track.
* `job`: _required_. The job to track.


### Example
```
resources:
- name: build-resource
  type: build-resource
  source:
    api: ((concourse.api))
    username: ((concourse.username))
    password: ((concourse.password))
    pipeline: other-pipeline
    job: docker-push
```

# Behavior

## `check`
Gets the successful

## `in`
Gives metadata for the successful build

## `out`
Does nothing

### Example
```
jobs:
- name: some-random-job
  plan:
    - get: build-resource
    ....
```
