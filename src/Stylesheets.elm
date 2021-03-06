port module Stylesheets exposing (..)

import Css.File exposing (..)
import MainStyles


port files : CssFileStructure -> Cmd msg


cssFiles : CssFileStructure
cssFiles =
    toFileStructure
        [ ( "styles.css"
          , compile
                [ MainStyles.css
                ]
          )
        ]


main : CssCompilerProgram
main =
    Css.File.compiler files cssFiles
