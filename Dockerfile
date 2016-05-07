FROM localhost:5000/atom

ENV PATH "$PATH:/root/.local/bin"

COPY $PWD/stack /root/.local/bin/stack

# Install build dep for ghc-mod
RUN apt-get install -y libgmp-dev

# no idea why, but if the command above
# and the command below are joined with `&&`
# all is lost

# Install haskell dev binaries
RUN stack setup \
&& stack install ghc-mod \
                 pointfree \
                 pointful \
                 stylish-haskell \
                 hoogle \

# Install atom packages
&& apm install language-haskell \
               autocomplete-haskell \
               haskell-ghc-mod \
               haskell-hoogle \
               haskell-pointfree \
               ide-haskell \
               ide-haskell-repl \
               ide-haskell-stack

VOLUME ["~/.atom","/work/.stack-work"]

CMD ["atom","-f","."]
