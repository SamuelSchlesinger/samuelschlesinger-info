module Dispatch where

import API
import Servant (Handler)

contact :: ContactRequest -> Handler ContactResponse
contact _ = return ContactSuccess
