set_ssh_session() {
    ssh labadmin@192.168.0.1 -X -t 'sudo wireshark & sudo sguil.tk; /bin/bash -l'
}

set_ssh_session
