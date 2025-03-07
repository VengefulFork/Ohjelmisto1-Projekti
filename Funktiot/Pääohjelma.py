from Reitinluoja import reitinluoja
from Lentäminen import lentäminen
from Etäisyydet import koordinaatit
from Matkanlaskija import aika


maali = reitinluoja()[1]
pelaajan_sijainti = reitinluoja()[0]
matka = int
kokonaan_kuljettu_matka = 0
ensimmäinen_toisto = True

while maali[0][1] != pelaajan_sijainti[1] :

        if ensimmäinen_toisto :
            pelaajan_nimi = input("Anna nimesi = ")
            print(f"Hei {pelaajan_nimi}")
            print(maali)
            ensimmäinen_toisto = False
        pelaajan_vanha_sijainti = pelaajan_sijainti
        pelaajan_sijainti = lentäminen(pelaajan_sijainti)

        matka = koordinaatit(pelaajan_vanha_sijainti, pelaajan_sijainti)
        lennon_kesto = aika(matka)

        print(f"Matkasi kentältä {pelaajan_vanha_sijainti[0]} kentälle {pelaajan_sijainti[0]}\n"
              f"oli {matka} kilometria ja siihen meni {lennon_kesto} minuuttia")

        kokonaan_kuljettu_matka += matka



print("\nTrumpetit soi koska voitit pelin")

