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

layout :: H.Html -> H.Html
layout middle = do
  H.div ! A.class_ "jumbotron text-center" $ do
    H.h1 "Samuel Schlesinger"
    H.p "Researcher and software engineer" 
  middle

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
  H.body $ layout $ do
    H.nav ! A.class_ "navbar" ! A.class_ "navbar-default" $ do
      H.div ! A.class_ "container-fluid" $ do
        H.div ! A.class_ "navbar-header" $ do
          H.a ! A.class_ "navbar-brand" ! A.href "#" $ "samuelschlesinger.info"
        H.ul ! A.class_ "nav" ! A.class_ "navbar-nav" $ do
          H.li ! A.class_ "active" $ H.a ! A.href "#" $ "About Me"
          H.li                     $ H.a ! A.href "/contact" $ "Contact Me"
    H.div ! A.class_ "container" $ do
      H.div ! A.class_ "row" $ do
        H.div ! A.class_ "col-sm-6" $ do
          H.h3 "Professional Background"
          H.p "I am a 24 year old software engineer at SimSpace Corporation, working \
              \in the Haskell programming language. Technically, my interests lie in \
              \functional programming, computational complexity theory, artificial \
              \intelligence, algorithm design, computational logic, and I conduct \
              \independent research into all of these areas, as well as research for \
              \work when it is required of me. I have a strong interest in teaching \
              \and helping others learn. If you ever want to reach out to me about \
              \any of these topics, please feel free to do so."
        H.div ! A.class_ "col-sm-6" $ do
          H.h3 "Personal Background"
          H.p "I grew up in Massachusetts, in a small town by the beach. \
              \I have always been interested in analytic and continental \
              \philosophy, and I consider my interest in mathematics and \
              \computer science an extension of my interest in analytic \
              \philosophy. I am also interested in many other things, such \
              \as geopolitics, outdoor activities, writing short fiction, \
              \fitness, and a number of other areas."

contact :: H.Html
contact = H.docTypeHtml $ do
  H.head $ do
    H.title "Contact Samuel Schlesinger"
    metas
    includes
  H.body $ layout $ do
    H.nav ! A.class_ "navbar" ! A.class_ "navbar-default" $ do
      H.div ! A.class_ "container-fluid" $ do
        H.div ! A.class_ "navbar-header" $ do
          H.a ! A.class_ "navbar-brand" ! A.href "#" $ "samuelschlesinger.info"
        H.ul ! A.class_ "nav" ! A.class_ "navbar-nav" $ do
          H.li                     $ H.a ! A.href "/" $ "About Me"
          H.li ! A.class_ "active" $ H.a ! A.href "#" $ "Contact Me"
    pure ()
