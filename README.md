![](images/vizoros-logo-smaller.png)
# Vizoros Super Peer
These are just some of the features of our Super Peer ...
+ It's Free.
+ First Class Peer to Peer Architecture
+ Peer to Peer decentralized container image(s) distribution. 
+ A secure and lean RESTful service architecture to integrate enterprise services.
+ Resilent service architecture that uses a try again approach to recover lost time.
+ Parallel processing (multicore), asychronous architecture, and various other optimizations.
+ Mitosis replication feature that allows every peer to spawn off an installation of more peers.
+ Docker images are compressed and encrypted for optimal decreased costs and secure network transfer.

There are many other features, configurations, options, flexibilities, and extensibilities that are not mentioned.

# Example usage
### Distribute smaller images (example reduced mysql:latest image size by 84%+)
<img src="/images/vizoros-optimized-mysql.gif" width="350" height="250"/>

### Fast decentralized concurrent image pulls (example over WIFI pulls 77 images < 18 secs)
<img src="/images/vizoros-concurrent-fast-pulls.gif" width="350" height="250"/>

### Restart concurrent image pulls where they left off (simulate a network outage)
<img src="/images/vizoros-concurrent-restart-pull.gif" width="375" height="250"/>

# Vizoros Super Peer installation Guide #
# Prerequiste software and configuration required
- Latest stable version of Docker<br>
  [Docker for Mac](https://docs.docker.com/desktop/install/mac-install/)<br>
  [Docker for Window](https://docs.docker.com/desktop/install/windows-install/)<br>
- Latest stable version of Java (at least 1.8 or newer)<br>
  [Java Adoptium](https://adoptium.net/temurin/releases/)<br>
- Docker container needs minimum of 2.5GB to 3GB.  
- MacOS we support Bash 3.2 or (ideally) newer<br>
  [Homebrew (brew) to get the latest Bash release](https://brew.sh/)<br>
- Windows 10/11 we support Command Prompt (cmd.exe), Cygwin, MSYS, and WSL.

# There are two ways to install our Vizoros Super Peer.

## First way: Github 
### Linux/macOS (Cygwin and MSYS bash shell on Windows) instructions: open a terminal and copy paste commands ...
The peer directory must not exist. 
The directory name can be any name instead of peer, but please no spaces or special characters except for dash (-) and underscore (_).<br>
$\color{red}{\texttt{IMPORTANT}}$
$\color{yellow}{\texttt{By downloading and installing, the user has read and acknowledged the license agreement.}}$
```
mkdir peer && cd peer && \
curl -sLO https://github.com/vizoros/peer/releases/download/latest/vfy-install.jar && \
curl -sLO https://github.com/vizoros/peer/releases/download/latest/vfy-peer.tar.xz && \
java -jar vfy-install.jar
```
### Windows 10/11 instructions: open Command Prompt terminal and copy paste commands ...
The peer directory must not exist.
The directory name can be any name instead of peer, but please no spaces or special characters except for dash (-) and underscore (_).<br>
$\color{red}{\texttt{IMPORTANT}}$
$\color{yellow}{\texttt{By downloading and installing, the user has read and acknowledged the license agreement.}}$
```
mkdir peer && cd peer & ^
curl -sLO https://github.com/vizoros/peer/releases/download/latest/vfy-install.jar & ^
curl -sLO https://github.com/vizoros/peer/releases/download/latest/vfy-peer.tar.xz & ^
java -jar vfy-install.jar
```
(You may see More? on old command prompt prepended to some lines, just and ignore and press.)
### To update future releases on Windows 10/11 (change directory into peer's home directory) using DOS Windows terminal (cmd.exe):
```
.\vfy-install -ua & .\vfy-install --update-container & .\vfy cmd fullservice-mode
```
### To update future releases on MacOS/Linux (change directory into peer's home directory) using Terminal in bash shell:
```
./vfy-install -ua && ./vfy-install --update-container && ./vfy cmd fullservice-mode
```
Wait until the command prompt comes back.  
When finished, either a browser is displayed or a file path to our EULA (End User License Agreement) file location is displayed.
That's it!

## Second way: Docker
1. See https://hub.docker.com/r/vizoros/install

# News, Contact, Videos, and Support
[Vizoros Website](https://bit.ly/vzos-website)<br>
[Vizoros Docker Hub](https://bit.ly/vzos-docker)<br>
[Vizoros YouTube Videos](https://bit.ly/vzos-youtube)<br>
[Vizoros Group X (Twitter)](https://bit.ly/vzos-twitter)<br>

[Email Vizoros Team for support issues](mailto:vizoros.issues@gmail.com?subject=[Super%20Peer]%20GitHub%20Instructions)
