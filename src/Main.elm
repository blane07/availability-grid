module Main exposing (..)

import Element exposing (Element, centerY, column, el, fill, padding, rgb255, spacing, text, width)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font


main =
    Element.layout [] availabilityGrid


availabilityGrid =
    column
        [ width fill, centerY, spacing 30 ]
        [ box
        , box
        , box
        ]


box : Element msg
box =
    el
        [ Background.color (rgb255 240 0 245)
        , Font.color (rgb255 0 0 0)
        , padding 10
        ]
        (text "hello world")
