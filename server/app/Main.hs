module Main where

import           Infra.APIServer          ( app )
import           Network.Wai.Handler.Warp ( run )

main :: IO ()
main = do
  putStrLn "Listening at 8080..."
  run 8080 app
