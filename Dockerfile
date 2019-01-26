FROM swift

RUN apt-get update
RUN apt-get install -y libsqlite3-dev libncurses-dev libblocksruntime-dev

RUN curl https://swift.org/builds/development/ubuntu1604/swift-DEVELOPMENT-SNAPSHOT-2019-01-24-a/swift-DEVELOPMENT-SNAPSHOT-2019-01-24-a-ubuntu16.04.tar.gz | tar -xz
RUN git clone https://github.com/apple/sourcekit-lsp.git

RUN export SOURCEKIT_TOOLCHAIN_PATH=/swift-DEVELOPMENT-SNAPSHOT-2019-01-24-a-ubuntu16.04

WORKDIR /sourcekit-lsp

RUN python Utilities/build-script-helper.py build --toolchain /swift-DEVELOPMENT-SNAPSHOT-2019-01-24-a-ubuntu16.04

CMD ".build/debug/sourcekit-lsp"
