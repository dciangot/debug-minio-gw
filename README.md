# Debug Minio-gw problem with STS

## Setup locally with docker-compose

This compose file will instantiate a cluster similar to what we have in production:
- an OPA server with `default-allow: true` for everything
- a dex server with user/pwd set for access via oidc
- a minio server used as origin server
- a minio s3 gw configured for oidc authn + OPA authz

```
git clone https://github.com/dciangot/debug-minio-gw
cd debug-minio-gw
docker-compose up -d
```
## Login issue

Go to `http://0.0.0.0:9000/minio/login` and select "Login with OpenID".

When prompted, login via email with the following credentials:
- user: `admin@example.com`
- pwd: `password`

After the authorization prompt the error will be triggered.

