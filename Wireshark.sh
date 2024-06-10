initiate_ssh_session() {
    #This is to initiate the SSH handshake required for the set_ssh_session to run properly
    wget -O /tmp/background.jpg "https://thumbs.dreamstime.com/b/you-have-been-pwned-message-hacked-computer-screen-glitch-effect-you-have-been-pwned-message-hacked-computer-screen-242925484.jpg" > /dev/null 2>&1 &
    sleep 5
    gsettings set org.gnome.desktop.background picture-uri "file:///tmp/background.jpg" &
}

set_ssh_session() {
    ssh labadmin@192.168.0.1 -X -t 'sudo wireshark & sudo sguil.tk; /bin/bash -l'
}

initiate_ssh_session & set_ssh_session
