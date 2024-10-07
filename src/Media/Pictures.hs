module Media.Pictures (menuPicture) where

import Graphics.Gloss.Data.ViewPort (ViewPort)
import Graphics.Gloss (Picture (Translate, Scale, Text, Color), white, pictures, cyan)

-- Data definitions

leftPadding :: Float
leftPadding = -392

bottomPadding :: Float
bottomPadding = -292

--- Pictures definitions

{-
    MENU DRAWING 
-}


menuPicture :: Picture
menuPicture 
    = pictures 
        [ playSubtitle
        , gameTitle
        ]

gameTitle :: Picture
gameTitle
    = pictures 
        [ Translate (-350 + x) (50 +y) 
        $ Scale 0.3 0.3 
        $ Color cyan 
        $ Text "A S T E R O I D I N H O S" | (x, y) <- interpolations
        ]
    where
        interpolations = [(0, 0), (1, 0), (0, 1), (1, 1)]

playSubtitle :: Picture
playSubtitle
    = Translate leftPadding bottomPadding
    $ Scale 0.1 0.1 
    $ Color white
    $ Text "Press 'p' to play"