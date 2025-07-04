# Ivy Tomee Demo 2

## Quick Start

Tested on Windows 11 in Powershell.

Set your `JRE_HOME` and `JAVA_HOME` and `PATH` env vars to a Java 11 installation.

Clone the repo

CD into the repo root

Run the following:

```
ant download-tomee
ant clean
ant dist
ant deploy-to-tomee
cd tomee/apache-tomee-plume-8.0.6/bin
./startup.bat
```

Then visit http://localhost:8080/myapp-0.1-dev/hello in your browser.
