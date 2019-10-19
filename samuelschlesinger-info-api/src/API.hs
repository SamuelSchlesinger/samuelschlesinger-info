module API where

import GHC.Generics (Generic)
import Servant
import Servant.HTML.Blaze (HTML)
import Text.Blaze.Html5 (Html)
import Data.Aeson (object, (.=), ToJSON(..), FromJSON(..), Value(String))

type API = 
                                                     Get '[HTML] Html       
 :<|> "contact"                                   :> Get '[HTML] Html
 :<|> "contact" :> ReqBody '[JSON] ContactRequest :> Post '[JSON] ContactResponse

data ContactRequest = ContactRequest
  deriving stock (Eq, Show, Generic)
  deriving anyclass (FromJSON)

data ContactResponse = ContactSuccess
                     | ContactFailure
  deriving stock (Eq, Show)

instance ToJSON ContactResponse where
  toJSON ContactSuccess = 
    object [  "email"    .= String "sgschlesinger@gmail.com"
            , "GitHub"   .= String "https://github.com/SamuelSchlesinger"
            , "LinkedIn" .= String "https://www.linkedin.com/in/samuel-schlesinger-8747b9b4" ]
  toJSON ContactFailure = String "failure"
