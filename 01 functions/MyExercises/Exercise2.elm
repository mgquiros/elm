module Main exposing (..)

import Html
import String


upercase : String -> String
upercase name =
    if String.length name > 10 then
        String.toUpper name
    else
        name


name : String
name =
    "manuel garcía de quirós"


main : Html.Html div
main =
    let
        nameLength =
            String.length name
    in
        upercase name
            ++ " - name length: "
            ++ toString (String.length name)
            |> Html.text
