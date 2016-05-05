FROM localhost:5000/atom

ENV STACK_VERSION 1.1.0

ENV PATH "$PATH:~/stack-bin"

RUN curl -L https://www.stackage.org/stack/linux-x86_64 > ~/stack.gz

RUN cd ~/ \
&& tar xvf stack.gz \
&& rm stack.gz \
&& mkdir ~/stack-bin \
&& mv ~/stack-${STACK_VERSION}-linux-x86_64/stack ~/stack-bin/stack \
&& rm -rf stack-${STACK_VERSION}-linux-x86_64 \
&& ~/stack-bin/stack setup

RUN stack install ghc-mod \
                  pointfree \
                  pointful \
                  stylish-haskell \
                  hoogle

RUN apm install language-haskell \
                autocomplete-haskell \
                haskell-ghc-mod \
                haskell-hoogle \
                haskell-pointfree \
                ide-haskell \
                ide-haskell-repl \
                ide-haskell-stack
