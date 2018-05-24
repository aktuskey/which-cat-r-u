module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


main : Html msg
main =
    div [ class "page page__home-bg" ]
        [ h1 [ class "page__heading-h1" ] [ text "Catfeed Quizzes" ]
        , h3 [ class "page__heading-h2" ] [ text "All Quizzes. All About Cats." ]
        , p [ class "body" ] [ text "Select a quiz to begin!" ]
        , ourLink "http://www.google.com" "Click Me!!"
        , ourLink "http://www.thedodo.com" "More Cute Cats!"
        , quiz "http://www.google.com" "Which Cat Are You?"
        , footer "© 2018. Plz don't steal." "https://twitter.com/LaserTuskey" "http://www.elm-lang.org" "https://www.ruby-lang.org/en/"
        ]


ourLink url label =
    div []
        [ a [ class "page__link", href url ] [ text label ] ]


quiz quizUrl quizTitle =
    div [ class "quiz-tile" ]
        [ a [ href quizUrl ]
            [ div [ class "quiz-tile__img", style [ ( "background-image", "url(images/flower-kitten.jpg)" ) ] ] []
            , h3 [ class "quiz-tile__title" ] [ text quizTitle ]
            ]
        ]


footer copyright twitterUrl elmUrl rubyUrl =
    div [ class "footer" ]
        [ span [ class "footer__copyright" ]
            [ text copyright ]
        , span
            [ class "footer__text" ]
            [ text "Built with ♥ by " ]
        , a
            [ class "footer__link", href twitterUrl ]
            [ text "@LaserTuskey" ]
        , span
            [ class "footer__text" ]
            [ text " on " ]
        , a
            [ class "footer__link", href elmUrl ]
            [ text "Elm" ]
        , span
            [ class "footer__text" ]
            [ text " + " ]
        , a
            [ class "footer__link", href rubyUrl ]
            [ text "Ruby" ]
        ]
