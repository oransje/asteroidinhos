module Game.Update (
    fps, 
    tic
) where

import Game.State(GameState(..))

fps :: Int
fps = 60

tic :: Float -> GameState -> GameState
tic _ gs = gs
