module Main exposing (..)

import Html
import String


countWords =
    String.words >> List.length


main =
    "Aitor está jugando en el sofá"
        |> countWords
        |> toString
        |> Html.text
