# !/bin/bash

# kasutaja paroolita lisamine
echo "Sisestage uue kasutaja kasutajanimi: $kasutajanimi "

read kasutajanimi

useradd $kasutajanimi

echo "$kasutajanimi on edukalt lisatud"
