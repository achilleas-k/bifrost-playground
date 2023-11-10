FROM quay.io/centos-boot/fedora-tier-1:eln

# Install cloud init to set up user on first boot
RUN sudo dnf install -y zsh vim tmux openssh cloud-init
