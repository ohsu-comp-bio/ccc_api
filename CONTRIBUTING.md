
Each API 'team' is responsible for a project in the 'proto' directory.

The core CCC api is defined in the file 'proto/core_api.list'. All proto files 
to be included in the build of the API need to be included in this list. 

All contributions need to be able to build without error.

The git repo, https://github.com/ohsu-computational-biology/ccc_api (master branch)
is the 'official' version. 

Pull requests to the master branch must be +1 by at least one other API team. 

For each release of the CCC infrastructure, a branch will be made that will work against
that system.

Swagger docs, while auto generated, will be included in the git repo, as they can
be viewed using the online Swagger Editor, for example: 

http://editor.swagger.io/#/?import=https://github.com/ohsu-computational-biology/ccc_api/raw/master/swagger/proto/framespace/framespace.swagger.json

Swagger docs must be rebuilt for API changes to match a branches proto-schema 
before it will be considered for pull request.