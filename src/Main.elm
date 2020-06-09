module Main exposing (..)

import Element exposing (Element, height, px, rgb255, text, width)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font


main =
    Element.layout
        []
        createTitleRow


daysOfWeek : List String
daysOfWeek =
    [ "Sunday"
    , "Monday"
    , "Tuesday"
    , "Wednesday"
    , "Thursday"
    , "Friday"
    , "Saturday"
    ]


createTitleRow : Element msg
createTitleRow =
    Element.row
        []
        (List.map
            (\x -> createBox x)
            daysOfWeek
        )



-- createRow : Element msg
-- createRow =
--     Element.row
--         []
--         (List.repeat 7 createBox)


createBox : String -> Element msg
createBox boxText =
    Element.el
        [ width (px 100)
        , height (px 37)
        , Background.color (rgb255 255 255 255)
        , Border.color (rgb255 20 20 20)
        , Border.width 1
        , Font.color (rgb255 0 0 0)
        , Font.center
        , Font.size 16
        ]
        (text boxText)
