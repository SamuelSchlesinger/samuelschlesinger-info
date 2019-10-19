module Server (app) where

import API
import Servant
import qualified FrontEnd
import qualified Dispatch

server :: Server API
server = homeGet :<|> contactGet :<|> contactPost where
  homeGet     = return FrontEnd.home 
  contactGet  = return FrontEnd.contact
  contactPost = Dispatch.contact

app :: Application
app = serve (Proxy @API) server
