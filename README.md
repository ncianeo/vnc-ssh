# vnc-ssh
Securely connect to VNC(opened to localhost) from remote via SSH port fowarding

## Installation
1. In host, open VNC server using -localhost option.
~~~bash
vncserver -localhost -geometry {vnc screen resolution} :{display number}
~~~
2. Add your client ssh key to host server.
3. Clone vnc-ssh.sh file to your client and edit it to set your connection settings.

## Usage
Execute vnc-ssh.sh
