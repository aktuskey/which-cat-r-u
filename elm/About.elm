module About exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


about : Html msg
about =
    div [ class "page page__home-bg" ]
        [ h1 [ class "page__heading-h1" ] [ text "Hello World!" ] ]
