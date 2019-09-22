{-# LANGUAGE DataKinds #-}

module Infra.APIServer
  ( app
  ) where

import           Servant

type SansyoAPI = Get '[ JSON] String

sansyoAPI :: Proxy SansyoAPI
sansyoAPI = Proxy

sansyoServer :: Server SansyoAPI
sansyoServer = testGet
  where
    testGet :: Handler String
    testGet = return "Hi, I'm Sansyo. Hey son shoes 先週."

app :: Application
app = serve sansyoAPI sansyoServer
