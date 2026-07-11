# Monitor an application with autoinstrumentation

## Deploy the web application

```sh
$ az webapp deploy --name <YOUR-WEB-APP-NAME> \
    --resource-group <YOUR-RESOURCE-GROUP> \
    --src-path ./app.zip
```