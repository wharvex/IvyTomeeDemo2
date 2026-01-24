# Ivy TomEE Demo 2

## Quick Start

### Tested On

Tested on Windows 11 in Powershell.

### Setup

Set your `JRE_HOME` and `JAVA_HOME` and `PATH` env vars to a Java 11 installation.

Install ant.

Install Oracle DB 23ai.

Set login credentials and create tables according to what this app requires.

Put the required ivy and groovy jars in your `$ANT_HOME/lib` directory.

Change the `ant.home` property in the build.xml file to point to your local `$ANT_HOME` directory.

### Action Steps

Clone the repo

CD into the repo root

Run the following:

```
ant dist
ant deploy-to-tomee
cd tomee/apache-tomee-plume-10.1.3/bin
./startup.bat
```

Then visit http://localhost:8080/myapp-0.1-dev/hello in your browser.

### Troubleshooting

If you get an `Error opening connection java.io.FileNotFoundException` error when running `ant dist` it probably means there is a new version of Tomee Plume out but I haven't updated the repo yet. You will need to visit https://tomee.apache.org/download.html and make a note of the latest version number and update all occurrences of the old number in the `build.xml` with the new number (e.g. replace occurrences of `10.1.3` with `10.1.4` or something like that).

### IntelliJ Setup

Jars needed from the TomEE lib directory:

```
IvyTomeeDemo2\tomee\apache-tomee-plume-10.1.3\lib\servlet-api.jar
IvyTomeeDemo2\tomee\apache-tomee-plume-10.1.3\lib\jakartaee-api-10.0.1-tomcat.jar
IvyTomeeDemo2\tomee\apache-tomee-plume-10.1.3\lib\bcprov-jdk15to18-1.83.jar
```

All other dependencies can be resolved with the IvyIDEA plugin.