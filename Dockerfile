FROM quay.io/fedora-ostree-desktops/silverblue:42
RUN <<EOF
    dnf copr enable -y atim/starship
    dnf copr enable -y che/nerd-fonts
    dnf install -y bat fd-find fira-code-fonts fzf git-absorb git-delta hub make neovim nerd-fonts python3-pip ripgrep starship syncthing tilix zoxide zsh
    dnf clean all
    bootc container lint
    mkdir -p /nix
EOF
