module Game.Render (
  window,
  background,
  draw
) where

import Graphics.Gloss
import Graphics.Gloss.Data.Color

import Game.State(GameState(..))
import Media.Pictures(menuPicture)


-- Data Definitions

winWidth :: Int
winWidth = 800

winHeight :: Int
winHeight = 600

title :: String 
title = "Asteroidinhos" 

background :: Color
background = black

-- Actions definitions

window :: Display
window = InWindow title (winWidth, winHeight) (10, 10)

draw :: GameState -> Picture
draw Menu = menuPicture
draw _ =  pictures [ translate (-20) (-100) $ color ballColor $ circleSolid 30 
  , translate 30 50 $ color paddleColor $ rectangleSolid 10 50
  ]
  where
    ballColor = dark red
    paddleColor = light (light blue)