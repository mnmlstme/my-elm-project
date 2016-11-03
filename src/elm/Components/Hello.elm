module Components.Hello exposing (..)

import Html exposing (Html, div, h1, text)
-- import Html.Attributes exposing ()
import Svg exposing (svg, g, circle)
import Svg.Attributes exposing (r, height, width, transform)

import String

-- hello component
hello : Int -> Html a
hello model =
    let radius = model + 10
    in
        div [] [
            h1 [] [
                text ( "Hello, Elm" ++ ( "!" |> String.repeat model ) )
            ]
            , svg [height (toString (2 * radius) ++ "px"),
                    width (toString (2 * radius) ++ "px")] [
                g [transform ("translate(" ++ toString radius ++ "," ++ toString radius ++ ")")] [
                    circle [r (toString radius)] []
                ]
            ]
        ]
