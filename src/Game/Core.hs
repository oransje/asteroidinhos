module Game.Core (gameLoop) where

import Graphics.Gloss

import Game.State (initialState)
import Game.Render (window, draw, background)
import Game.Update (fps, tic)
import Game.Events (handler)

gameLoop :: IO ()
gameLoop = 
     play window background fps initialState draw handler tic