team: engineering-enablement
pipeline: build-resource
tasks:
- type: docker-push
  image: platformengineering/build-resource
  username: platformengineering
  password: ((docker-hub-pe.password))
