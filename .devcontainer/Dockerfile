FROM fedora:40
ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=${USER_UID}
# [Optional] Uncomment this section to install additional OS packages.
RUN dnf install -y curl git
RUN groupadd --gid ${USER_GID} ${USERNAME} \
    && useradd --uid ${USER_UID} --gid ${USER_GID} -m ${USERNAME}
RUN echo ${USERNAME} ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/${USERNAME} \
    && chmod 0440 /etc/sudoers.d/${USERNAME}
USER ${USERNAME}
WORKDIR /home/${USERNAME}
RUN sh -c "$(curl -fsLS https://chezmoi.io/get)"
