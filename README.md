# Sample pipeline patterns for Concourse

## Getting started with Concourse

This project requires a [Concourse](https://concourse-ci.org/) system plus S3 and secrets management. If you don't have access to a Concourse deployment, you can use [marco-m/concourse-in-a-box](https://github.com/marco-m/concourse-in-a-box): an all-in-one Concourse CI/CD system based on Docker Compose, with Minio S3-compatible storage and HashiCorp Vault secret manager.

## Sample pipelines

* release strategies (WIP)
  * [release triggered by a git tag](release-git-tag) (WIP)
  * [release triggered by the semver resource](release-semver-res) (TODO)
* [Building a Docker image inline with the pipeline which consumes it](build-docker-image/)
* [Simple parallel fan-out](fan-out/)
* [Building Go, with and without Go modules](build-go/)
* [Temporary override of pipeline parameters](nested-param/)

Maybe:

* using https://github.com/laurentverbruggen/concourse-git-semver-tag-resource

## Sample code

Some of the pipelines use the minimal [magic8ball](./magic8ball) Go code; this shows how to extract git information such as tag or commit SHA and embed it in an executable.
