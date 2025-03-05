from Reitinluoja import reitinluoja
from Lentäminen import lentäminen



while maali[0][1] != pelaajan_sijainti :
        ensimmäinen_toisto = True
        if ensimmäinen_toisto :
            pelaajan_nimi = input("Anna nimesi = ")
            pelaajan_sijainti = reitinluoja()[0]
            maali = reitinluoja()[1]
            print (f"Hei {pelaajan_nimi}")
            ensimmäinen_toisto = False




