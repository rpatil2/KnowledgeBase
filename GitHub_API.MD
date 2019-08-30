# Playing with GitHub API

## Get latest commit from a specific branch for a specific file or folder in the repo
```
curl -X GET "https://api.github.com/repos/rpatil2/gitops-istio/commits?sha=1.1&path=prod&per_page=1"
```

The response will return the latest commit for folder 'prod' from branch '1.1'

Specify your **branch** with "_sha=_",  your **folder/file name** with "_path=_" and **number of commits** can be controller with "_per_page=_"

_**Note:**_ default branch is 'master' so you can skip 'sha' for master branch
