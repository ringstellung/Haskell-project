module Main where

import System.IO
import Data.List  -- para tener ucons
import Data.Maybe -- para tener fromJust
import Pila

menu :: IO Char
menu = do
        putStrLn "Programa ejemplo de manejo de pilas"
        putStrLn "   m.- Meter elemento en pila "
        putStrLn "   s.- Sacar elemento de pila "
        putStrLn "   v.- Ver elementos de pila "
        putStrLn "   f.- Finalizar programa "
        putStrLn "------------------------- Teclee opcion: "
        cad <- getLine
        -- let x = head cad
        let x = fst.fromJust.uncons $ cad
        if elem x "msvf" then return x
          else menu

bucle :: TPila Int -> IO ()
bucle p = do
           opc <- menu
           putStrLn ("Opcion: " ++ show opc)
           case opc of
             'm' -> bucle (mete 1 p)
             's' -> bucle (saca p)
             'v' -> putStrLn ("Contenido de Pila: " ++ muestra p) >> bucle p
             'f' -> putStrLn "Fin del Programa"

main :: IO ()
main = bucle vacia
