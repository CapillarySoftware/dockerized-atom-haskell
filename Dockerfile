FROM localhost:5000/atom

ENV PATH "$PATH:/root/.local/bin"

COPY $PWD/stack /root/.local/bin/stack

RUN apt-get install -y libgmp-dev

RUN stack setup \
&& stack install ghc-mod \
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

RUN apm install terminal-plus

VOLUME ["~/.atom","/work/.stack-work"]

# RUN chown -R root /work/.stack-work

CMD ["atom","-f","."]
