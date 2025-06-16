FROM quay.io/fedora-ostree-desktops/silverblue:42
RUN dnf copr enable -y atim/starship && \
    dnf copr enable -y che/nerd-fonts && \
    dnf config-manager addrepo --from-repofile https://kubecolor.github.io/packages/rpm/kubecolor.repo && \
    dnf install -y \
    bat \
    fd-find \
    fira-code-fonts \
    fzf \
    git-absorb \
    git-delta \
    helix \
    hub \
    kubecolor \
    make \
    nerd-fonts \
    pam-u2f \
    pamu2fcfg \
    python3-pip \
    ripgrep \
    starship \
    syncthing \
    tilix \
    yq \
    zoxide \
    zsh && \
    dnf clean all && \
    bootc container lint && \
    mkdir -p /nix
