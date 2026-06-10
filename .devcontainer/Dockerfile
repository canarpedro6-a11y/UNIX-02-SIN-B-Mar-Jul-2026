# ============================================================================
# Base Image: This instruction initializes the core OS template for our container.
# We leverage Kali Linux rolling because it natively includes modern, pre-configured 
# penetration testing and security assessment tools (Ref: Black Hat Bash, Ch. 3).
#
# Layer Caching: Docker processes instructions sequentially, mapping each one to a 
# read-only file layer. If the preceding directives remain untouched, Docker uses 
# the existing cache. Organizing static foundation layers at the top maximizes 
# building efficiency and reduces local environment rebuild times.
# ------------------------------------------------------------------------------
FROM kalilinux/kali-rolling:latest


# ----------------------------------------------------------------------------
# Environment Variables: These statements define global system parameters that control
# shell behaviors during container builds and runtime execution (Ref: BHB Ch. 1).
# - DEBIAN_FRONTEND=noninteractive: Prevents the APT package manager from launching 
#   interactive UI prompts or blocking the script to wait for manual user confirmations.
# - LANG & LC_ALL=C.UTF-8: Configures standard systemic localization and character 
#   encodings to prevent terminal processing syntax errors with international symbols.
# - TERM=xterm-256color: Instructs CLI tools and terminal editors to emulate a full 
#   color matrix screen for cleaner outputs.
# ------------------------------------------------------------------------------

ENV DEBIAN_FRONTEND=noninteractive \
    LANG=es_ES.UTF-8 \
    LC_ALL=es_ES.UTF-8 \
    TERM=xterm-256color


# ----------------------------------------------------------------------------
# Automated Pre-Configuration: Network capturing utilities like Wireshark/Tshark 
# inherently trigger interactive prompt blocks asking if non-root users should capture 
# raw packets. Since Docker image builds run headlessly without manual key inputs, 
# this command pre-seeds the Debian configuration engine database with a default 'true' 
# answer to guarantee an unblocked, fluid software installation flow.
# ------------------------------------------------------------------------------
RUN echo "wireshark-common wireshark-common/install-setuid boolean false" \
    | debconf-set-selections


# ----------------------------------------------------------------------------
# Package Management and Control Operators (Block e):
# - apt-get update vs install: 'update' syncs the local package indexes with remote 
#   repositories, while 'install' pulls and installs the physical binaries (Ref: BHB Ch. 3).
# - Flags -y and --no-install-recommends: '-y' automatically answers yes to prompts 
#   for headless automation. '--no-install-recommends' avoids optional files to save space.
# - Chaining via '&&' and '\': The '&&' control operator runs the next command only 
#   if the previous one returns an exit code of 0 (success) (Ref: BHB Ch. 1). The 
#   backslash '\' splits a massive instruction into multiple readable lines.
# - Single RUN efficiency: Bundling updates, installations, and cleanup into a single 
#   RUN instruction minimizes the generation of heavy intermediate Docker storage layers.
# - System Utilities: 'grep' parses streams using regex patterns, 'sed' and 'gawk' 
#   handle text processing and inline alterations, while 'nmap' and 'tcpdump' discover 
#   hosts and intercept raw network traffic (Ref: BHB Ch. 2 & Ch. 3).

RUN apt-get update && apt-get install -y --no-install-recommends \
    \
    # === Editores de texto y shells (intérpretes de comandos) ===
    neovim \
    vim \
    zsh \
    bash-completion \
    \
    # === Herramientas de 4ta generación ===
    # Estas son las protagonistas de las Unidades 2, 3 y 4:
    perl \
    make \
    gawk \
    sed \
    grep \
    \
    # === Utilidades básicas de UNIX ===
    # coreutils trae cat, ls, head, tail, sort, cut, tr, etc.
    # findutils trae find y xargs.
    # procps trae ps, top, kill (gestión de procesos).
    # less = paginador para leer archivos largos.
    # tree = muestra directorios como árbol.
    # jq = procesa JSON desde la línea de comandos.
    coreutils \
    findutils \
    procps \
    less \
    tree \
    jq \
    \
    # === Páginas de manual (comando `man`) ===
    # La imagen base de Kali viene sin documentación para
    # ahorrar espacio. La reinstalamos porque en el curso "man bash" o
    # "man grep" es material de consulta obligada.
    man-db \
    manpages \
    manpages-posix \
    \
    # === Red básica y utilidades de descarga ===
    curl \
    wget \
    git \
    git-lfs \
    ca-certificates \
    locales \
    \
    # === Linter (revisor automático de errores) para scripts Bash ===
    shellcheck \
    \
    # === Reconocimiento y escaneo de red ===
    # nmap = el escáner de puertos más famoso.
    # masscan = escaneo masivo de rangos grandes de IPs.
    nmap \
    masscan \
    \
    # === Captura y análisis de paquetes de red ===
    # tcpdump = capturador clásico por terminal.
    # tshark = versión de terminal de Wireshark.
    tcpdump \
    tshark \
    \
    # === Utilidades de red variadas ===
    netcat-traditional \
    socat \
    dnsutils \
    whois \
    traceroute \
    mtr-tiny \
    iproute2 \
    net-tools \
    iputils-ping \
    \
    # === Anonimato: Tor y similares ===
    # tor = cliente de la red Tor.
    # torsocks = "envoltorio" que hace pasar cualquier comando por Tor.
    # proxychains4 = encadena múltiples proxies.
    # obfs4proxy = ofusca el tráfico de Tor para evadir bloqueos.
    tor \
    torsocks \
    proxychains4 \
    obfs4proxy \
    \
    # === Cliente HTTP más legible que curl para aprender ===
    httpie \
    \
 # --- Después de instalar, activamos el idioma español ---
 # sed busca "# es_ES.UTF-8" en /etc/locale.gen y le quita el "#" para
 # activar esa línea. Luego locale-gen compila los archivos de idioma.
 && sed -i 's/# es_ES.UTF-8/es_ES.UTF-8/' /etc/locale.gen \
 && locale-gen \
 \
 # --- Limpieza final: reducir el tamaño de la imagen ---
 # apt deja archivos de caché que ya no necesitamos después de instalar.
 # Borrarlos aquí (en el mismo RUN) hace la capa final más pequeña.
 # Si los borráramos en otro RUN, seguirían ocupando en la capa anterior.
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*


# ----------------------------------------------------------------------------
#Shell Selection
# This forces Docker to execute subsequent build commands using '/bin/bash' instead 
# of the legacy standalone '/bin/sh'. Bash supports robust features like arrays, 
# structured control operators, and advanced scripting logic (Ref: BHB Ch. 1).
#
SHELL ["/bin/bash", "-c"]


# ----------------------------------------------------------------------------
# # 'WORKDIR' creates and declares the default active path inside the container. All 
# following operations, builds, and runtime terminals start inside this directory.S
WORKDIR /workspaces

# Version Control Infrastructure:
# This command configures Git system-wide to treat all directories as safe. 
# It prevents ownership errors and permission blocks when Docker mounts external 
# workspaces or repositories into the container (Ref: BHB Ch. 3).
RUN git config --system --add safe.directory '*' \
 && git config --system init.defaultBranch main \
 && git config --system pull.rebase false \
 && git lfs install --system

# ----------------------------------------------------------------------------
# Heredoc Redirection & Profile Customization (Block l):
# The 'cat >> ... <<'EOF'' construct is a 'Here Document' (Heredoc). It is a stream 
# redirection technique used to append multiple raw formatting lines into a text 
# file without invoking interactive editors (Ref: BHB Ch. 1). Here, it appends 
# custom configurations to the user profile (~/.zshrc) to override the color scheme 
# and prompt layout for better visibility during operations (Ref: BHB Ch. 2).
# Unlike 'RUN' which executes tasks during image assembly, 'CMD' sets the default 
# binary that triggers automatically when the finished container boots up. It starts 
# an interactive bash shell instance for the security analyst.
RUN cat >> /root/.bashrc <<'EOF'
# Aquí puedes poner un prompt para bash si quieres
PS1='\[\e[36m\][Analista-UIDE]\[\e[m\] \w \$ '
EOF

RUN chsh -s /usr/bin/zsh root

RUN cat >> /root/.zshrc <<'EOF'
PROMPT='%F{cyan}[Analista-UIDE]%f %F{yellow}%1~%f %(?.%F{green}✓.%F{red}✗)%f %# '
EOF

CMD ["/usr/bin/zsh"]

