import Html exposing (..)
import Html.Attributes exposing (..)
import Html.App as Html
import Html.Events exposing ( onClick )

-- component import example
import Components.Hello exposing ( hello )


-- APP
main : Program Never
main =
  Html.beginnerProgram { model = model, view = view, update = update }


-- MODEL
type alias Model = Int

model : number
model = 0


-- UPDATE
type Msg = NoOp | Increment

update : Msg -> Model -> Model
update msg model =
  case msg of
    NoOp -> model
    Increment -> model + 1


-- VIEW
-- Html is defined as: elem [ attribs ][ children ]
-- CSS can be applied via class names or inline style attrib
view : Model -> Html Msg
view model =
    div [
        class "container",
        style [("margin-top", "30px"), ( "text-align", "center" )]] -- inline CSS (literal)
    [
        hello model                                                                     -- ext 'hello' component (takes 'model' as arg)
        , p [] [ text ( "Elm Webpack Starter" ) ]
        , button [ onClick Increment ] [                  -- click handler
            text "FTW!"
        ] ]


-- CSS STYLES
styles : { img : List ( String, String ) }
styles =
  {
    img =
      [ ( "width", "33%" )
      , ( "border", "4px solid #337AB7")
      ]
  }
