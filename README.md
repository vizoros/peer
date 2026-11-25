<p align="center">
  <img src="images/vizoros-logo-smaller.png" alt="Vizoros logo" width="240">
</p>

<h1 align="center">Vizoros Super Peer</h1>

<p align="center">
  <b>So simple, a 10-year-old can install it. So powerful, it's a full peer of your own.</b><br>
  Copy. Paste. Done. Free, no login, and no corporate servers in the middle.<br>
  Built on a fast, lean, modern, hardened stack.
</p>

<p align="center">
  <a href="https://bit.ly/vzos-website">Website</a> ·
  <a href="https://bit.ly/vzos-docker">Docker Hub</a> ·
  <a href="https://bit.ly/vzos-youtube">Videos</a> ·
  <a href="https://bit.ly/vzos-twitter">X (Twitter)</a> ·
  <a href="mailto:vizoros.issues@gmail.com?subject=[Super%20Peer]%20GitHub%20Instructions">Support</a>
</p>

---

## 🚀 Up and running in 2 steps

No manuals. No config files. No settings to figure out. No account or login.

### Step 1: Install Docker and Java (one-time setup)

Install them like any other app: [Docker](https://docs.docker.com/get-docker/) and [Java](https://adoptium.net/temurin/releases/).

### Step 2: Copy and paste ONE command

Pick your system and follow the 3 mini-steps. Each one tells you how to open a terminal (the window where you paste the command) and gives you the command to paste.

#### 🪟 Windows 10/11

1. Open File Explorer and create a new folder named `peer`.
2. Open that folder, click the address bar at the top, type `cmd`, and press Enter. A black window opens. That's your terminal.
3. Copy and paste this command, then press Enter:

```bat
curl -fsSLO https://raw.githubusercontent.com/vizoros/peer/main/install-headless.cmd && cmd /c install-headless.cmd
```

*(Using WSL2? Follow the Linux steps below instead.)*

#### 🍎 macOS

1. Press `Cmd + Space`, type `Terminal`, and press Enter.
2. Type `mkdir peer && cd peer` and press Enter. This makes a folder named `peer` and moves into it.
3. Copy and paste this command, then press Enter:

```bash
curl -fsSL https://raw.githubusercontent.com/vizoros/peer/main/install-headless.sh | bash
```

#### 🐧 Linux and WSL2

1. Open your Terminal app.
2. Type `mkdir peer && cd peer` and press Enter. This makes a folder named `peer` and moves into it.
3. Copy and paste this command, then press Enter:

```bash
curl -fsSL https://raw.githubusercontent.com/vizoros/peer/main/install-headless.sh | bash
```

### 🎉 That's it. You now have your own peer.

> 🎥 Prefer to watch? See the [video walkthroughs](https://bit.ly/vzos-youtube).

<!-- Tip: add a screenshot or short GIF of the install here, e.g.
![Install in seconds](images/install.gif)
-->

---

## ✨ Why people love it

| | |
|---|---|
| 🆓 **Free** | No cost, no license fees. |
| ⚡ **Zero configuration** | One command and you're running. Nothing to set up. |
| 🚪 **No login required** | No accounts, no sign-ups, no passwords. Just install and go. |
| 🏠 **Unlimited peers** | Need another one? Just create a new peer. *(Be a good citizen.)* |
| 🌐 **Truly yours** | Start your own network of peers with no hidden, remote, corporate-dependent servers of any kind. |
| 💪 **A full peer, not just a client** | Individual users get the power of a fully autonomous, first-class peer architecture. |
| 📦 **Move anything** | Transfer any kind of data or service using container image technology like Docker. |
| 🔒 **Fast, lean & hardened** | A modern technology stack chosen for efficiency: quick to start, light on resources, built to be secure. |
| 🥽 **3D / AR / VR** | Lean, browser-based Vizor technology with proprietary 3D (AR/VR) support. |

---

## 🔧 Details for the curious

| Requirement | Details |
|---|---|
| **Operating system** | Most Linux distributions (Debian/glibc based), macOS, Windows 10/11 |
| **Docker** | Latest stable version: [Docker for Mac](https://docs.docker.com/desktop/install/mac-install/) · [Docker for Windows](https://docs.docker.com/desktop/install/windows-install/) |
| **Java** | 1.8+ ([Adoptium Temurin](https://adoptium.net/temurin/releases/)) |
| **Memory** | Docker container needs approximately 3 GB minimum |

<details>
<summary><b>Linux without a desktop (headless / WSL2 Ubuntu)</b></summary>

Install the required packages first:

```bash
sudo apt install bash bind9-dnsutils ncurses openjdk-21-jre-headless
```

</details>

<details>
<summary><b>macOS notes</b></summary>

Bash 3.2.57+ is supported; the latest Bash from [Homebrew](https://brew.sh/) is ideal.

</details>

<details>
<summary><b>Windows notes</b></summary>

Supported: **WSL2** and **Command Prompt (cmd.exe)**.
Not officially supported: Cygwin and MSYS, although they *should* work.

</details>

> 💡 Like to look before you run? Download the install script, read it, then run it.

---

## 💬 Need help? We're friendly.

- 🌍 [Vizoros Website](https://bit.ly/vzos-website)
- 🐳 [Vizoros on Docker Hub](https://bit.ly/vzos-docker)
- ▶️ [Vizoros on YouTube](https://bit.ly/vzos-youtube)
- 🐦 [Vizoros Group on X (Twitter)](https://bit.ly/vzos-twitter)
- ✉️ [Email the Vizoros team for support](mailto:vizoros.issues@gmail.com?subject=[Super%20Peer]%20GitHub%20Instructions)

Stuck, or have an idea? Open an issue. Like what you see? Give us a star ⭐ so others can find us!

---

## Disclaimer

This software has no warranties of any kind. We are not responsible for any losses, damages, or misuse of any kind. We try our best to create high-quality software, but we reuse open source software that also makes no warranties. Please use at your own risk.

---

<p align="center">Copyright © 2026 Vizoros Group. All rights reserved.</p>
