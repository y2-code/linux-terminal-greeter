# Linux Terminal Greeter 🚀

A customizable Linux startup greeter that opens a terminal on login,
displays system information, ASCII art, and a poetic time-based greeting.

---

## Features

- Automatic startup execution
- Time-based dynamic greetings
- neofetch system display
- figlet + lolcat styling
- User configuration support
- One-command installation

---

## Installation

Clone repository:

```bash
git clone https://github.com/y2-code/linux-terminal-greeter.git
cd linux-terminal-greeter
```
Install Required Packages:

```bash
sudo apt update
sudo apt install neofetch figlet lolcat python3
```
Make Scripts Executable:

```bash
chmod +x startup.sh install.sh
```
Install Autostart Configuration:

```bash
./install.sh
```
Reboot Your System:

 ```bash
reboot
