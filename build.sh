docker run -v $(pwd):/work fpco/stack-build:lts-5.15 cp /usr/bin/stack /work/stack \
&& docker build -t localhost:5000/dev-haskell . \
&& sudo rm stack
