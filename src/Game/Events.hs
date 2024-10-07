module Game.Events (handler) where

import Graphics.Gloss.Interface.Pure.Game

import Game.State(GameState(..))

handler :: Event -> GameState -> GameState
handler (EventKey (Char 'p') _ _ _) Menu = Playing 
handler _ gs = gs