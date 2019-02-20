# AWS CLI Docker Image

This image provides the AWS CLI.

## Usage

Linux / MacOS:
```
docker run --rm -v $HOME/.aws:/root/.aws awscli aws s3 ls --profile <YOUR_PROFILE>
```

Windows (cygwin):
```
docker run --rm -v "/$HOME/.aws":/root/.aws awscli aws s3 ls --profile <YOUR_PROFILE>
```

## Using the container as a CLI command

You can setup an alias for `awscli` on your local machine to simply start a container.

```
alias awscli='docker run --rm -itv $HOME/.aws:/root/.aws -v $(pwd):/aws aws-cli aws'
```

