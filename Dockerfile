FROM microsoft/dotnet:2.0.7-sdk-2.1.200
# Install
RUN  ln -s /lib/x86_64-linux-gnu/libdl.so.2 /lib/x86_64-linux-gnu/libdl.so \
    && apt update -y \
    && apt install libgdiplus -y \
	&& apt-get install net-tools -y \
	&& wget http://ftp.de.debian.org/debian/pool/contrib/m/msttcorefonts/ttf-mscorefonts-installer_3.6_all.deb \
	&& apt install -y ttf-mscorefonts-installer_3.6_all.deb \
    && rm -f ttf-mscorefonts-installer_3.6_all.deb \
    && apt-get autoclean ; apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
	&& mkdir /usr/share/fonts/win/Fonts -p
COPY ./*.ttc  /usr/share/fonts/win/Fonts/

