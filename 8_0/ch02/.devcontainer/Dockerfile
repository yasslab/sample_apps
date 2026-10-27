FROM rubylang/ruby:3.2.11-dev-jammy

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=1000

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    bash-completion \
    ca-certificates \
    libsqlite3-dev \
    libyaml-dev \
    openssh-client \
    sqlite3 \
    sudo \
  && groupadd --gid ${USER_GID} ${USERNAME} \
  && useradd --uid ${USER_UID} --gid ${USER_GID} -m -s /bin/bash ${USERNAME} \
  && usermod --append --groups sudo ${USERNAME} \
  && echo "${USERNAME} ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/${USERNAME} \
  && chmod 0440 /etc/sudoers.d/${USERNAME} \
  && mkdir -p /home/${USERNAME}/.bundle \
  && chown -R ${USERNAME}:${USERNAME} /home/${USERNAME} \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

ENV BUNDLE_PATH=/home/${USERNAME}/.bundle
ENV GEM_HOME=${BUNDLE_PATH}/ruby/3.2.0
ENV GEM_PATH=${GEM_HOME}
ENV PATH=${GEM_HOME}/bin:${PATH}

ENV SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt
ENV SSL_CERT_DIR=/etc/ssl/certs
ENV NODE_OPTIONS=--use-openssl-ca

COPY codespaces-prompt.sh /etc/profile.d/codespaces-prompt.sh

RUN chmod 0644 /etc/profile.d/codespaces-prompt.sh \
  && echo 'source /etc/profile.d/codespaces-prompt.sh' >> /home/${USERNAME}/.bashrc \
  && echo 'if [ -f /usr/share/bash-completion/bash_completion ]; then source /usr/share/bash-completion/bash_completion; fi' >> /home/${USERNAME}/.bashrc

USER ${USERNAME}

RUN gem install bundler -v 2.5.6
