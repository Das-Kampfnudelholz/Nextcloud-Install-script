# Nextcloud-Install-script

Unofficial scripts for installing Nextcloud



### Supported operating Systems

| Operating System | Version | nginx support      | PHP Version |
| ---------------- | ------- | ------------------ | ----------- |
| Ubuntu           | 14.04   | :red_circle:       |             |
|                  | 18.04   | :white_check_mark: | 8.0         |
|                  | 20.04   | :white_check_mark: | 8.0         |

### Supported Wings operating systems

| Operating System | Version | Supported          |
| ---------------- | ------- | ------------------ |
| Ubuntu           | 18.04   | :white_check_mark: |
|                  | 20.04   | :white_check_mark: |


To use the installation scripts, simply run this command as root.

```bash
bash <(curl -s https://raw.githubusercontent.com/Das-Kampfnudelholz/Nextcloud-Install-script/main/nextcloud.sh)
```

_Note: On some systems, it's required to be already logged in as root before executing the one-line command (where `sudo` is in front of the command does not work)._


## Firewall setup

The installation scripts can install and configure a firewall for you. The script will ask whether you want this or not. It is highly recommended to opt-in for the automatic firewall setup.
