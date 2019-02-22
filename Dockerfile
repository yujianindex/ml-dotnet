FROM microsoft/dotnet:2.0.7-sdk-2.1.200
# Install
RUN  ln -s /lib/x86_64-linux-gnu/libdl.so.2 /lib/x86_64-linux-gnu/libdl.so \
    && apt update -y \
    && apt install libgdiplus -y \
    && apt-get autoclean ; apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
	&& mkdir /usr/share/fonts/win/Fonts -p
COPY ./*.ttc  /usr/share/fonts/win/Fonts

