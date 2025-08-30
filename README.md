![](images/vizoros-logo-smaller.png)
# Vizoros Super Peer
These are just some of the features of our Super Peer.
+ It's Free.
+ Multi-tenant architecture (just create a new peer)
+ Create UNLIMITED peers without restrictions just be a good citizen.
+ Transfer any kind of data or service using container image technology like Docker.
+ Start your own network of peers without hidden remote dependent corporate servers of any kind.
+ You are up and running in seconds without complicated configuration, manuals, and instructions.
+ Individual users have the power of a full autonomous first class peer architecture -- not just a peer client or peer agent.

# Vizoros Super Peer installation Guide #

## Prerequiste software and configuration required
- Latest stable version of Docker<br>
  [Docker for Mac](https://docs.docker.com/desktop/install/mac-install/)<br>
  [Docker for Window](https://docs.docker.com/desktop/install/windows-install/)<br>
- Latest stable version of Java (at least 1.8 or newer)<br>
  [Java Adoptium](https://adoptium.net/temurin/releases/)<br>
- Docker container needs minimum of approximately 3GB.  
- MacOS we support Bash 3.2.57+ or (ideally) latest<br>
  [Homebrew (brew) to get the latest Bash release](https://brew.sh/)<br>
- Windows 10/11 we support Command Prompt (cmd.exe), Cygwin, MSYS, and WSL2.

## These are instructions with or without a Desktop present.

### U/Linux/macOS (works with Cygwin, MSYS, and WSL2 bash shell on Windows)<br>
The following packages are required for WSL2/Ubuntu (equivalent U/Linux) non-Desktop installations:<br>
sudo apt install bash bind9-dnsutils ncurses openjdk-21-jre-headless<br><br>
Instructions: open a terminal and copy paste commands into an empty directory like "peer" ...
```
curl -fsSL https://raw.githubusercontent.com/vizoros/peer/main/install-headless.sh | bash
```
### Windows 10/11 native Command Prompt (cmd.exe)
Instructions: open Command Prompt (cmd.exe) and copy paste commands into an empty folder like "peer" ...
```
curl -fsSLO https://raw.githubusercontent.com/vizoros/peer/main/install-headless.cmd && cmd /c install-headless.cmd
```
When the entire installation and configration is completed, a browser url will appear.
That's it!

# News, Contact, Videos, and Support
[Vizoros Website](https://bit.ly/vzos-website)<br>
[Vizoros Docker Hub](https://bit.ly/vzos-docker)<br>
[Vizoros YouTube Videos](https://bit.ly/vzos-youtube)<br>
[Vizoros Group X (Twitter)](https://bit.ly/vzos-twitter)<br>

[Email Vizoros Team for support issues](mailto:vizoros.issues@gmail.com?subject=[Super%20Peer]%20GitHub%20Instructions)
