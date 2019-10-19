module FrontEnd where

import qualified Text.Blaze.Html5 as H
import qualified Text.Blaze.Html5.Attributes as A
import Text.Blaze.Html5 ((!))

keywords :: H.AttributeValue
keywords = "Sam, Samuel, Schlesinger, Giuseppe, Haskell, Programmer, Computer, Science"

metas :: H.Html
metas = do
  H.meta ! A.charset "UTF-8"
  H.meta ! A.name "keywords"  ! A.content keywords
  H.meta ! A.name "author"    ! A.content "Samuel Schlesinger"
  H.meta ! A.name "copyright" ! A.content "All rights reserved (c) 2019 Samuel Schlesinger"

home :: H.Html
home = H.docTypeHtml $ do
  H.head $ do
    H.title "Samuel Schlesinger's Homepage"
    metas
    
contact :: H.Html
contact = H.docTypeHtml $ do
  H.head $ do
    H.title "Contact Samuel Schlesinger"
    metas
