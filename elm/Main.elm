module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


main : Html msg
main =
    div [ class "page" ]
        [ h1 [ class "page__heading-h1" ] [ text "Catfeed Quizzes" ]
        , h3 [ class "page__heading-h2" ] [ text "All Quizzes. All About Cats." ]
        , p [ class "body" ] [ text "Select a quiz to begin!" ]
        , ourLink "http://www.google.com" "Click Me!"
        , ourLink "http://www.thedodo.com" "More Cute Cats!"
        , ourLink "http://www.elm-lang.org" "Built with Love on Elm"
        , quiz "http://www.google.com" "Which Cat Are You?" "/"
        ]


ourLink url label =
    div []
        [ a [ class "page__link", href url ] [ text label ] ]


quiz quizUrl quizTitle imgUrl =
    div [ class "quiz-tile" ]
        [ a [ href quizUrl ]
            [ img [ class "quiz-tile__img", src imgUrl ] []
            , h3 [ class "quiz-tile__title" ] [ text quizTitle ]
            ]
        ]
