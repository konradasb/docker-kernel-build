FROM ubuntu:18.04

ARG GCC_VERSION="gcc-7"

RUN apt-get update -y && 																																\
    apt-get install -y --no-install-recommends 																					\
			bc                    																														\
			bison                 																														\
			build-essential       																														\
			ccache                																														\
			flex                  																														\
			${GCC_VERSION}        																														\
			git                   																														\
			kmod                  																														\
			libelf-dev            																														\
			libncurses-dev        																														\
			libssl-dev            																														\
			wget                  																														\
			ca-certificates																			                              \
		&& update-alternatives --install /usr/bin/gcc gcc /usr/bin/${GCC_VERSION} 10

RUN apt-get install -y --no-install-recommends 																					\
			binutils-multiarch 																																\
			${GCC_VERSION}-aarch64-linux-gnu																							  	\
		&& ln -s /usr/bin/aarch64-linux-gnu-${GCC_VERSION} /usr/bin/aarch64-linux-gnu-gcc
