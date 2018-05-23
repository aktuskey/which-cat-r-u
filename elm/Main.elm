module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


main : Html msg
main =
    div [ class "page" ]
        [ h1 [ class "page__heading-h1" ] [ text "Which Cat Are You?!" ]
        , h3 [ class "subtitle" ] [ text "We all know you're dying to know." ]
        , p [ class "body" ] [ text "Quizzes for cats!" ]
        , ourLink "http://www.google.com" "Click Me!"
        , ourLink "http://www.thedodo.com" "More Cute Cats!"
        , ourLink "http://www.elm-lang.org" "Built with Love on Elm"
        ]


ourLink url label =
    div []
        [ a [ class "page__link", href url ] [ text label ] ]
