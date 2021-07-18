FROM ubuntu:20.04
# Do not exclude man pages & other documentation
RUN rm /etc/dpkg/dpkg.cfg.d/excludes
# Reinstall all currently installed packages in order to get the man pages back
RUN apt-get update && \
    dpkg -l | grep ^ii | cut -d' ' -f3 | xargs apt-get install -y --reinstall && \
        rm -r /var/lib/apt/lists/*
# Ensure the apt-get database is up-to-date
RUN apt-get update && apt-get install -y \
    apt-utils
# Install the man pages
RUN apt-get update && apt-get install -y \
    man-db
# Install base operations
RUN apt-get update && apt-get update && apt-get install -y \
     openssh-client wget
# Cleaning up
RUN apt-get clean && apt-get autoremove
