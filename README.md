# Examples for App+OS

This repository contains sources for docker images which can be used to demo the App+OS feature. With App+OS we want to extend out container scanning capabilities to also include applications and not just OS packages and key binaries.

The images in this repository can be found on Dockerhub:
https://hub.docker.com/repository/docker/snykgoof/os-app

Adding an image to this repository:
--
When adding a new image to this repository make sure that:

- For each manifest file on the new image there is at least one similar manifest file available as a app-os deps-discovery fixture in Registry. See in the Registry repo: [/test/fixtures/docker-app-os-deps-discovery.js](https://github.com/snyk/registry/blob/develop/test/fixtures/docker-app-os-deps-discovery.js) - the corresponding test is: [/test/functional/deps-discovery.test.ts](https://github.com/snyk/registry/blob/develop/test/functional/deps-discovery.test.ts) - in-memory scm resolve

- The new image sources are added under a meaningful path: `<language>-<application name>`

- The new image is build and added to the Dockerhub repository. (Use the snykgoof account - credentials are in 1pass)
