from Reitinluoja import reitinluoja
from Lentäminen import lentäminen
from lentokoneet import lentokonetyypit
from koneen_valinta import koneen_valitsin
from Etäisyydet import koordinaatit
from Matkanlaskija import lennon_tiedot_laskin


maali = reitinluoja()[1]
pelaajan_sijainti = reitinluoja()[0]
matka = int
kokonaan_kuljettu_matka = 0
kokonais_aika = 0
kokonais_co2 = 0
ensimmäinen_toisto = True

while maali[0][1] != pelaajan_sijainti[1] :

        if ensimmäinen_toisto :
            pelaajan_nimi = input("Anna nimesi = ")
            print(f"Hei {pelaajan_nimi}")
            print(maali)
            ensimmäinen_toisto = False
        pelaajan_vanha_sijainti = pelaajan_sijainti
        pelaajan_sijainti = lentäminen(pelaajan_sijainti)

        pelaajan_kone = koneen_valitsin(lentokonetyypit)

        matka = koordinaatit(pelaajan_vanha_sijainti, pelaajan_sijainti)
        lennon_tiedot = lennon_tiedot_laskin(matka, pelaajan_kone)

        print(f"Matkasi kentältä {pelaajan_vanha_sijainti[0]} kentälle {pelaajan_sijainti[0]}\n"
              f"oli {matka} kilometria ja valitsemallasi koneella {pelaajan_kone['malli']} siihen meni {lennon_tiedot[0]}"
              f" minuuttia ja tuotti {lennon_tiedot[1]} kiloa hiilidioksidia")


        kokonaan_kuljettu_matka += matka
        kokonais_aika += lennon_tiedot[0]
        kokonais_co2  += lennon_tiedot[1]





print("\nTrumpetit soi koska voitit pelin")

