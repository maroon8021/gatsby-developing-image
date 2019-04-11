# gatsby-developing-image
This is for buildng gatsby developing server on docker

## How to use

### Building image
This image is not up to docker image so you need to build it on your local.
`docker image build -t gatsby-developing-image .`

### Run container by the image
`docker run -it -d --rm --name gatsby-app -p 50000:8000 -v $(PWD)/your-gatsby-app-dir:/site gatsby-developing-image`


## MEMO
### Trying to build image by Ubuntu image
-> Failed
```Dockerfile
FROM ubuntu

apt-get install apt-transport-https && \
apt-get install curl -y && \
curl -sL https://deb.nodesource.com/setup_11.x | bash - && \
apt-get install -y nodejs && \
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
apt-get update && apt-get install yarn -y \

RUN yarn global install gatsby
```
unknown instruction: RUN　YARN

### Why yarn is needed ?
https://github.com/gatsbyjs/gatsby/issues/13177
node11 has some problem?
