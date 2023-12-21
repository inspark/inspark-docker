# Inspark Platform IoT

## Getting started

The porject include docker compose configs for quick setup Inspark IoT platform.

The project is launching the platform exclusively for test purposes for brief acquaintance. Some modules require a license, which must be obtained upon request. (www.inspark.ru)

## Clone project from GitHub repository

Clone Inspark Platform's repo in your terminal with the following command:
```
git clone https://github.com/inspark/inspark-docker.git
```

Once that command completes successfully, you should see a new inspark-docker folder in your current directory.

## Launch Platform through docker compose

Navigate to the folder you created in step 1:
```
cd inspark-docker

```
copy the license to the folder ./docker/inspark-license.lic

When working on master branch, run the following commands to run development mode using docker compose:

```
docker compose up
```


TIP
The platform will launch with options wich specified within files like .env and ./docker/.env.
If you need to change port options which need to get access via http, you can change port number in file .env, HTTP_PORT variable.


## Configuring docker compose

You can configure the Docker Compose environment variables for  with docker/.env  respectively. These environment files set the environment for most containers in the Docker Compose setup, and some variables affect multiple containers and others only single ones.

NOTE
If you feel like that, you can choose to use your own data bases like PostgreSQL, Redis, etc. For that you need meet system requirements which you can see at docs.inspark.ru/ru/system/install/standalone


## Log in to Inspark
You can access Inspark now via your web browser by visiting http://localhost:HTT_PORT. Note that many browsers now default to https - if yours is one of them, please make sure it uses http.

Log in with the default username and password:

username: root

password: masterkey


