module Game.State (
    initialState,
    GameState(..)
) where

data GameState 
    = Menu | Playing | GameOver deriving(Eq, Show)

initialState :: GameState
initialState = Menu

