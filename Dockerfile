FROM archlinux:latest

RUN pacman -Syu --noconfirm \
    && pacman -S --noconfirm python git

# Clone the repository and set the working directory
RUN cd / && \
		git clone https://github.com/Glimmr-Lang/PiccodeScriptDocs.git

# Set the working directory
WORKDIR /PiccodeScriptDocs/docs/

# Expose port 8080
EXPOSE 8080

CMD ["python3", "-m", "http.server", "-d", ".", "8080"]


