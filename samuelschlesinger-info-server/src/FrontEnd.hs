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
  H.meta ! A.name "viewport"  ! A.content "width=device-width, initial-scale=1, shrink-to-fit=no"

bootstrap_4_3_1 :: H.Html
bootstrap_4_3_1 = do 
  H.link   ! A.rel "stylesheet" 
           ! A.href "https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
  H.script ! A.src "https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" $ pure ()

jquery_3_3_1 :: H.Html 
jquery_3_3_1 = do
    H.script ! A.src "https://code.jquery.com/jquery-3.3.1.slim.min.js" $ pure ()

popper_1_14_7 :: H.Html
popper_1_14_7 = do
  H.script ! A.src "https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" $ pure ()

includes :: H.Html
includes = do
  bootstrap_4_3_1
  jquery_3_3_1
  popper_1_14_7

home :: H.Html
home = H.docTypeHtml $ do
  H.head $ do
    H.title "Samuel Schlesinger's Homepage"
    metas
    includes
    
contact :: H.Html
contact = H.docTypeHtml $ do
  H.head $ do
    H.title "Contact Samuel Schlesinger"
    metas
    includes
