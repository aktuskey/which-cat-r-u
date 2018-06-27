module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


type alias QuizInfo =
    { title : String
    , imgUrl : String
    , quizUrl : String
    , description : String
    }


quizzes : List QuizInfo
quizzes =
    [ QuizInfo
        "Which flower crown matches your purrsonality?"
        "/images/flower-kitten.jpg"
        "/"
        "Lorem ipsum blah blah blah"
    , QuizInfo
        "Which celebrity cat are you most like?"
        "/images/LilBubChristmas.jpg"
        "/"
        "Lorem ipsum dsjhfalksjdhfl"
    , QuizInfo
        "We bet we can guess your ultimate jam"
        "/images/wo05xcp.jpg"
        "/"
        "akjhs aksdhakljsdhalkj aksjdhjh"
    , QuizInfo
        "Buy some fancy collars from Petco and we’ll give you your spirit cat"
        "/images/Turquoise-cat-necklace-from-TrendyKitty-on-Etsy-13.80.jpg"
        "/"
        "al alskdja akjwihao asks"
    , QuizInfo
        "Which dog should be your new BFF?"
        "/images/370135.jpg"
        "/"
        "ak akjshfi qiyr kasjdhfl"
    , QuizInfo
        "Which badass fictional kitty are you?"
        "/images/phantasms3.jpg"
        "/"
        "mnb asdp laksdjhflaks diseoriuaosidjf askjfh"
    ]


main : Html msg
main =
    div [ class "page page__home-bg" ]
        [ navbar "Catfeed Quizzes" "All Quizzes. All About Cats." "/images/cheezburger.svg"
        , div [ class "quiz-tiles" ]
            (List.map quiz quizzes)
        , footer "© 2018. Plz don't steal." "https://twitter.com/LaserTuskey" "http://www.elm-lang.org" "https://www.ruby-lang.org/en/"
        ]


navbar title subtitle menuIconUrl =
    div [ class "navbar" ]
        [ div [ class "navbar__brand" ]
            [ h1 [ class "page__heading-h1" ] [ text title ]
            , h3 [ class "page__heading-h3" ] [ text subtitle ]
            ]
        , div [ class "navbar__icons" ]
            [ button [ class "icon icon__cheezburger navbar__menu" ] []
            ]
        ]


ourLink url label =
    div []
        [ a [ class "page__link", href url ] [ text label ] ]


quiz : QuizInfo -> Html msg
quiz info =
    div [ class "quiz-tile" ]
        [ a [ href info.quizUrl, title info.description ]
            [ div
                [ class "quiz-tile__img"
                , style
                    [ ( "background-image"
                      , "url(" ++ info.imgUrl ++ ")"
                      )
                    ]
                ]
                []
            , h3 [ class "quiz-tile__title" ] [ text info.title ]
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
