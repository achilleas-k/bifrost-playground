FROM quay.io/centos-boot/fedora-tier-1:eln

RUN sudo dnf install -y zsh vim tmux openssh
RUN echo "Hello there" > /hello

RUN useradd achilleas
RUN usermod -aG wheel achilleas
RUN mkdir -pv /home/achilleas/.ssh
RUN echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPqEtsCdSozq0DT8sOazpizsBP65Ni6SMqrQA85Wnfs1 achilleas@Jack" > /home/achilleas/.ssh/authorized_keys
RUN cat /home/achilleas/.ssh/authorized_keys

RUN chown achilleas:achilleas -Rc /home/achilleas
RUN chmod go-rwx -Rc /home/achilleas/.ssh

RUN echo "achilleas:password42" | chpasswd
