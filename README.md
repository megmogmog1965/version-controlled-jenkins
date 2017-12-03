# version-controlled-jenkins

Build & run jenkins as container and manage jobs as source code by git.

# Host environment

* Mac OS X
* CentOS7

> running on linux os.

* Docker version 17.09.0-ce
* docker-compose version 1.16.1

## How to use

Run containered jenkins.

```
$ cd /path/to/version-controlled-jenkins/
$ docker-compose up -d
```

You can see a running container.

```
$ docker ps

CONTAINER ID        IMAGE                              COMMAND                  CREATED             STATUS              PORTS                                              NAMES
9c928e6d1337        versioncontrolledjenkins_jenkins   "/bin/tini -- /usr..."   29 minutes ago      Up 29 minutes       0.0.0.0:8080->8080/tcp, 0.0.0.0:50000->50000/tcp   versioncontrolledjenkins_jenkins_1
```

You can access jenkins by web browser.

* http://localhost:8080

## Exposed ports

|Ports|What for                       |
|:----|:------------------------------|
|8080 |Jenkins provides http service. |
|50000|JNLP                           |

## The list of source managed files.

|File                                    |What for                            |
|:---------------------------------------|:-----------------------------------|
|jenkins_home/jobs/{job-name}/config.xml |Jenkins job settings & script code  |

> DO NOT add ``jenkins_home/config.xml``. It prevents jenkins initial setup.

## Author

[Yusuke Kawatsu]


[Yusuke Kawatsu]:https://github.com/megmogmog1965
