from Reitinluoja import reitinluoja
from Lentäminen import lentäminen

maali = reitinluoja()[1]
pelaajan_sijainti = reitinluoja()[0]
ensimmäinen_toisto = True

while maali[0][1] != pelaajan_sijainti[1] :

        if ensimmäinen_toisto :
            pelaajan_nimi = input("Anna nimesi = ")
            print(f"Hei {pelaajan_nimi}")
            print(maali)
            ensimmäinen_toisto = False
        pelaajan_sijainti = lentäminen(pelaajan_sijainti)



