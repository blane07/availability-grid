module Main exposing (..)

import Element exposing (Element, height, px, rgb255, text, width)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import List exposing (map, range)
import String exposing (fromInt)


main =
    Element.layout
        []
        createGrid


days : List String
days =
    [ "Sunday"
    , "Monday"
    , "Tuesday"
    , "Wednesday"
    , "Thursday"
    , "Friday"
    , "Saturday"
    ]


times : List String
times =
    [ "6 AM"
    , "7 AM"
    , "8 AM"
    , "9 AM"
    , "10 AM"
    , "11 AM"
    , "12 PM"
    , "1 PM"
    , "2 PM"
    , "3 PM"
    , "4 PM"
    , "5 PM"
    , "6 PM"
    , "7 PM"
    , "8 PM"
    , "9 PM"
    , "10 PM"
    ]


type BoxType
    = Header
    | Time


createGrid : Element msg
createGrid =
    Element.row
        []
        (map (\x -> createDayColumn x) days)


createDayColumn : String -> Element msg
createDayColumn day =
    let
        dayBox =
            [ createBox Header day ]

        timeBoxes =
            map (\x -> createBox Time x) times
    in
    Element.column
        []
        (dayBox ++ timeBoxes)


createBox : BoxType -> String -> Element msg
createBox boxType boxText =
    case boxType of
        Header ->
            Element.el
                [ width (px 100)
                , height (px 37)
                , Background.color (rgb255 0 0 0)
                , Border.color (rgb255 180 180 180)
                , Border.width 1
                , Font.color (rgb255 255 255 255)
                , Font.center
                , Font.size 16
                ]
                (text boxText)

        Time ->
            Element.el
                [ width (px 100)
                , height (px 37)
                , Background.color (rgb255 255 255 255)
                , Border.color (rgb255 180 180 180)
                , Border.width 1
                , Font.color (rgb255 0 0 0)
                , Font.center
                , Font.size 14
                , Element.mouseOver
                    [ Background.color (rgb255 60 208 112) ]
                ]
                (text boxText)
