FROM haskell:8.6.3

RUN cabal update && cabal install split && cabal install multiset

CMD ["ghci"]