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

You can configure the Docker Compose environment variables for docker/.env  respectively. These environment files sets the environment for most containers in the Docker Compose setup, and some variables affect multiple containers and others only single ones.

NOTE
If you feel like that, you can choose to use your own data bases like PostgreSQL, Redis, etc. For that you need meet system requirements which you can see at docs.inspark.ru/ru/system/install/standalone


## Log in to Inspark
You can access Inspark now via your web browser by visiting http://localhost:HTT_PORT. Note that many browsers now default to https - if yours is one of them, please make sure it uses http.

Log in with the default username and password:

username: root

password: masterkey

---

## Emulation of controller performance
A controller emulator is needed if you want to test and visually see the capability of the controller, without equipment itself.
In the **Inspark-docker** directory there is the emulator script, called **controller-emulator.sh**

This script can be launched using the following command:
```
bash ./controller-emulator.sh ATAT2020 <Host ip>
```
- Where `bash ./controller-emulator.sh` is command itself.

- `ATAT2020` - serial number of the controller we use in our test configuration

- `<Host ip>` - ip address of the host where the **Inspark Platform instance** is located, to which we will add the controller.

At this point **controller emulator** is fully setup and ready to be use in **IPI**!

## Configuration file import
Now is the time to import our **configuration file** wich contains pre-config **Objects**, **Categories** and **Devices**, for this specific test case. However in a future production cases you can also make configuration for you instance, in sake of backup for example.

The process of import is simple and quick, all you need to do is search up word "Import" in searchbar from up-left corner menu.
In the open window click `Import` button, then click `+ Select data files`, from this window you must find and choose your downloaded config file, and then select `Upload data`, that's it.

Now then you imported a config, test elements will apear in your instacnce, and you can see them on "Objects" or "Devices" sections for example.





