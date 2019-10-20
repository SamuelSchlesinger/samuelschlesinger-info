module Server (app) where

import API
import Servant
import qualified FrontEnd
import qualified Dispatch

server :: FilePath -> Server API
server staticPath = homeGet :<|> contactGet :<|> contactPost :<|> serveDirectoryFileServer staticPath where
  homeGet     = return FrontEnd.home 
  contactGet  = return FrontEnd.contact
  contactPost = Dispatch.contact

app :: FilePath -> Application
app = serve (Proxy @API) . server
