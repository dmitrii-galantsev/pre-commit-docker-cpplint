ARG TAG=17
FROM xianpengshen/clang-tools:$TAG

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true apt-get install --no-install-recommends -y \
    git \
    make \
    python3-pip \
    virtualenv \
    && apt-get clean \
    && rm -rf /var/cache/apt/ /var/lib/apt/lists/* /etc/apt/apt.conf.d/01proxy

RUN virtualenv /venv -ppython3 && /venv/bin/pip install cpplint==1.6.1 cmake --break-system-packages
ENV PATH=/venv/bin:$PATH
