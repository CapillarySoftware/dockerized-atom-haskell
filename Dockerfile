FROM localhost:5000/atom

ENV PATH "$PATH:~/stack-bin"

COPY $PWD/stack ~/stack-bin/stack

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
