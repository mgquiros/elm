module Main exposing (..)

import Html


type alias Item =
    { name : String
    , qty : Int
    , freeQty : Int
    }


cart : List Item
cart =
    [ { name = "Lemon", qty = 1, freeQty = 0 }
    , { name = "Apple", qty = 5, freeQty = 0 }
    , { name = "Pear", qty = 10, freeQty = 0 }
    ]


setFreeQty : Int -> Int -> Item -> Item
setFreeQty minQty freeQty item =
    if item.qty >= minQty then
        { item | freeQty = freeQty }
    else
        item


newCart : List Item
newCart =
    List.map ((setFreeQty 5 1) >> (setFreeQty 10 3)) cart


main : Html.Html msg
main =
    Html.text (toString newCart)
