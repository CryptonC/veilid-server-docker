FROM debian:latest

# Install initial packages
RUN apt update
RUN apt install wget gpg curl -y

# Add GPG key and add repository
RUN wget -O- https://packages.veilid.net/gpg/veilid-packages-key.public | gpg --dearmor -o /usr/share/keyrings/veilid-packages-keyring.gpg
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/veilid-packages-keyring.gpg] https://packages.veilid.net/apt stable main" | tee /etc/apt/sources.list.d/veilid.list 1>/dev/null

# Install veilid packages
RUN apt update
RUN apt install veilid-server -y

# Set up docker-init script
COPY docker-init.sh .
RUN chmod +x docker-init.sh

CMD ./docker-init.sh