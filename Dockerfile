FROM debian:stable-slim

# Install dependencies
RUN apt-get update && \
    apt-get install -y fortune-mod cowsay netcat-traditional bash && \
    rm -rf /var/lib/apt/lists/*

# Add /usr/games to PATH (where cowsay and fortune are installed)
ENV PATH="/usr/games:${PATH}"

WORKDIR /app
COPY wisecow.sh /app/wisecow.sh
RUN chmod +x /app/wisecow.sh

EXPOSE 4499
CMD ["/app/wisecow.sh"]
