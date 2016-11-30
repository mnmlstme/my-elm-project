module Components.Hello exposing (..)

import Html exposing (Html, section, div, h1, p, span, text)
import Html.Attributes exposing (class, style)
import Svg exposing (svg, g, circle)
import Svg.Attributes exposing (r, height, width, transform)

import String


-- hello component
hello : Int -> Html a
hello model =
    let radius = model + 10
        rs = toString radius
        ds = toString (2 * radius)
        dim = ds ++ "px"
        bg =  svg [] [
            g [transform ("translate(" ++ rs ++ "," ++ rs ++ ")")] [
                circle [r rs] []
            ]
        ]
        rightPath = "M0 0L" ++ rs ++ " 0L" ++ rs ++ " " ++
            ds ++ "L0 " ++ ds ++ "L" ++ rs ++ " " ++ rs ++ "Z"
        leftPath = "M0 0L" ++ rs ++ " 0L0 " ++ rs ++
            "L" ++ rs ++ " " ++ ds ++ "L0 " ++ ds ++ "Z"
        urlSvgStart = "url('data:image/svg+xml,<svg xmlns=\"http://www.w3.org/2000/svg\">"
        urlSvgEnd = "</svg>')"
        leftShape = urlSvgStart ++
            "<path d=\"" ++ leftPath ++ "\"/>" ++
            urlSvgEnd
        rightShape = urlSvgStart ++
            "<path d=\"" ++ rightPath ++ "\"/>" ++
            urlSvgEnd
    in
        div [class "textShape",
                style [("height", dim), ( "width", dim)]] [
            div [class "textShape-left",
                    style[("shapeOutside", leftShape)]] []
            , div [class "textShape-right",
                    style[("shapeOutside", rightShape)]] []
            , bg
            , section [class "flow"] [
                p [class "stanza"] [
                    span [class "line"] [ text "`Twas brillig, and the slithy toves" ]
                    , span [class "line"] [ text "  Did gyre and gimble in the wabe:" ]
                    , span [class "line"] [ text "All mimsy were the borogoves," ]
                    , span [class "line"] [ text "  And the mome raths outgrabe." ]
                ]
                , p [class "stanza"] [
                    span [class "line"] [ text "\"Beware the Jabberwock, my son!" ]
                    , span [class "line"] [ text "  The jaws that bite, the claws that catch!" ]
                    , span [class "line"] [ text "Beware the Jubjub bird, and shun" ]
                    , span [class "line"] [ text "  The frumious Bandersnatch!\"" ]
                ]
                , p [class "stanza"] [
                    span [class "line"] [ text "He took his vorpal sword in hand:" ]
                    , span [class "line"] [ text "  Long time the manxome foe he sought --" ]
                    , span [class "line"] [ text "So rested he by the Tumtum tree," ]
                    , span [class "line"] [ text "  And stood awhile in thought." ]
                ]
                , p [class "stanza"] [
                    span [class "line"] [ text "And, as in uffish thought he stood," ]
                    , span [class "line"] [ text "  The Jabberwock, with eyes of flame," ]
                    , span [class "line"] [ text "Came whiffling through the tulgey wood," ]
                    , span [class "line"] [ text "  And burbled as it came!" ]
                ]
                , p [class "stanza"] [
                    span [class "line"] [ text "One, two! One, two! And through and through" ]
                    , span [class "line"] [ text "  The vorpal blade went snicker-snack!" ]
                    , span [class "line"] [ text "He left it dead, and with its head" ]
                    , span [class "line"] [ text "  He went galumphing back." ]
                ]
                , p [class "stanza"] [
                    span [class "line"] [ text "\"And, has thou slain the Jabberwock?" ]
                    , span [class "line"] [ text "  Come to my arms, my beamish boy!" ]
                    , span [class "line"] [ text "O frabjous day! Callooh! Callay!\"" ]
                    , span [class "line"] [ text "  He chortled in his joy." ]
                ]
                , p [class "stanza"] [
                    span [class "line"] [ text "`Twas brillig, and the slithy toves" ]
                    , span [class "line"] [ text "  Did gyre and gimble in the wabe;" ]
                    , span [class "line"] [ text "All mimsy were the borogoves," ]
                    , span [class "line"] [ text "  And the mome raths outgrabe." ]
                ]
            ]
        ]
