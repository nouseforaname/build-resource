team: engineering-enablement
pipeline: build-resource
tasks:
- type: docker-push
  image: platformengineering/cf-resource
  username: platformengineering
  password: ((docker-hub-pe.password))
