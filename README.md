# CCC API

Protobuf Declaration of the CCC API

This project is designed to declare the core CCC API in a single location.

### Contributing

Each API 'team' is responsible for a project in the 'proto' directory: `ccc_api/proto/<project>`.

The core CCC API is defined in the file 'proto/core_api.list'. All proto files to be included in the build of the API need to be included in this list.

Note: A service that depends on a proto schema definition via import, the imported file should not be included in `ccc_api.list`.

All contributions need to be able to build without error.

The git repo, https://github.com/ohsu-computational-biology/ccc_api (master branch)
is the 'official' version. Each project, as denoted by `ccc_api/proto/<project>`, should work from a branch independent of master. The name of the branch should follow the format `<project>_<short_change_identifier>` (for example, `framespace_init`).

Pull requests to the master branch must be +1 by at least one other API team. 

A CCC API release will be made with each CCC Infrastructure release, the most current release will be versioned as a branch labeled with the respective version. Note this is the actual release and is not the same as the master branch.

Swagger docs, while auto generated, will be included in the git repo, as they can be viewed using the online Swagger Editor, for example: http://editor.swagger.io/#/?import=https://github.com/ohsu-computational-biology/ccc_api/raw/master/swagger/proto/framespace/framespace.swagger.json.

Swagger docs must be rebuilt for API changes to match a branches proto-schema before it will be considered for pull request. This can be done by typing `make swagger` in the repo home directory. 