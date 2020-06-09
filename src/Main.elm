module Main exposing (..)

import Element exposing (Element, column, el, height, padding, px, rgb255, row, spacing, width)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import List


main =
    Element.layout
        []
        (createGrid 7 12)


createGrid : Int -> Int -> Element msg
createGrid n_cols n_rows =
    row
        [ spacing 1 ]
        (List.repeat n_cols (createColumn n_rows))


createColumn : Int -> Element msg
createColumn n_rows =
    column
        [ spacing 1 ]
        (List.repeat n_rows createBox)


createBox : Element msg
createBox =
    el
        [ Background.color (rgb255 60 208 112)
        , width (px 100)
        , height (px 37)
        ]
        Element.none
