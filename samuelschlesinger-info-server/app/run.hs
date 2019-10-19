import Server
import Network.Wai.Handler.Warp
import Options.Applicative

data ServerOpts = ServerOpts
  { port :: Port }

serverOpts :: Parser ServerOpts 
serverOpts = ServerOpts <$> argument auto (metavar "PORT")

opts :: ParserInfo ServerOpts
opts = info serverOpts $ fullDesc <> progDesc "runs Samuel Schlesinger's personal website"

main :: IO ()
main = do
  ServerOpts{..} <- execParser opts
  run port app
