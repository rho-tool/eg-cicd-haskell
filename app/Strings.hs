{-# LANGUAGE QuasiQuotes #-}
module Strings (how, version, completion)
where

    import Data.Text (unpack)
    import NeatInterpolation (text)

--
    how :: String
    how = unpack [text|
        ---
        -- $ eg-cicd-haskell --how
        -- $ eg-cicd-haskell --version
        -- $ source <(eg-cicd-haskell --completion)
        ---
    |]

--
    version :: String
    version = unpack [text|
        0.6
    |]

--
    completion :: String
    completion = unpack [text|
        #!/bin/bash
        WORDS='--how --version --completion'
        complete -W "@WORDS" eg-cicd-haskell  # -d -f
    |]

--
