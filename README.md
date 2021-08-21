# cs492d-2021-fall-assignments
### Table of contents

- [MAC](#mac)
- [Windows](#windows)

## MAC

### 1. Install Xquartz 

* Install Xquartz in https://www.xquartz.org/releases/XQuartz-2.7.11.html
*  Open a terminal and run `defaults write org.xquartz.X11 enable_iglx -bool true` and then re-open Xquartz

### 2. Edit the configuration 

* Edit the configuration in ` /etc/ssh/ssh_config` and `/etc/ssh/sshd_config` 

   `$ sudo vi /etc/ssh/ssh_config`
   ```shell
   ForwardAgent yes
   ForwardX11 yes
   ForwardX11Trusted yes
   ```

   ![ssh_config](./docs/ssh_config.png)

   `$ sudo vi /etc/ssh/sshd_config`
   ```shell
   X11Forwarding yes
   ```

   ![sshd_config](./docs/sshd_config.png)

### 3. Connect to the Kcloud using -XY option
`$ ssh -XY -i {PEM_KEY} ubuntu@{IP_ADDRESS} -p 22`
### 4. Go back to step 2 and set the configuration of the server in the same way.
```shell
$ sudo vi /etc/ssh/ssh_config 
$ sudo vi /etc/ssh/sshd_config
```
### 5. Install libraries
Run:

```shell
wget https://raw.githubusercontent.com/63days/cs492-2021-fall-assignments/main/install_essential.sh?token=AJAJYDVDUO5LFZQHNTMRJYDBFIVTY -O install_essential.sh && sh install_essential.sh
```
For test, run ` $ xclock `

You should be able to see a GUI clock.

![xclock](./docs/xclock.png)

## Windows
### 1. Install XMing
* Install Xming in https://sourceforge.net/projects/xming/ (Just keep pressing the next.)

* After the installation, check Xming is running.

![xming_running](./docs/xming_running.png)
### 2. Install & Setup PuTTY

* Install PuTTY in https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html 
* Run PuTTY and enter the IP Address

![putty](./docs/putty.png)

* Go to SSH/Auth menu and load a private key (*Refer to https://docs.oracle.com/en/cloud/paas/goldengate-cloud/tutorial-change-private-key-format/ if you have to change the format of the ssh private key.*)

![putty_auth](./docs/putty_auth.png)

* Go to X11 menu and check "Enable X11 forwarding".

![putty_setup](./docs/putty_setup.png)

### 3. Edit the configuration
After conecting to the server,
* Edit the configuration in ` /etc/ssh/ssh_config` and `/etc/ssh/sshd_config` 

   `$ sudo vi /etc/ssh/ssh_config`
   ```shell
   ForwardAgent yes
   ForwardX11 yes
   ForwardX11Trusted yes
   ```

   ![ssh_config](./docs/ssh_config.png)

   `$ sudo vi /etc/ssh/sshd_config`
   ```shell
   X11Forwarding yes
   ```

   ![sshd_config](./docs/sshd_config.png)

### 4. Install libraries
Run:

```shell
wget https://raw.githubusercontent.com/63days/cs492-2021-fall-assignments/main/install_essential.sh?token=AJAJYDVDUO5LFZQHNTMRJYDBFIVTY -O install_essential.sh && sh install_essential.sh
```
For test, run ` $ xclock `

You should be able to see a GUI clock.
![window_xclock](./docs/window_xclock.png)





