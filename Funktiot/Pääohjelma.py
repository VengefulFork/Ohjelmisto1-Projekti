from Reitinluoja import reitinluoja
from Lentäminen import lentäminen
from lentokoneet import lentokonetyypit
from koneen_valinta import koneen_valitsin
from Etäisyydet import koordinaatit
from Matkanlaskija import lennon_tiedot_laskin
from komennot import komennot
from kartta import kartta

def pääohjelma () :
    maali = reitinluoja()[1]
    pelaajan_sijainti = reitinluoja()[0]
    kokonaan_kuljettu_matka = 0
    kokonais_aika = 0
    kokonais_co2 = 0



    pelaajan_nimi = input("Anna nimesi = ")
    aloitus = input(f"Hei, {pelaajan_nimi}! Haluatko ottaa tehtävän vastaan jos haluat syotä 1 jos et syötä 2 = ").replace(" ", "")

    if aloitus == "1" :

        while maali[0][1] != pelaajan_sijainti[1] :

                komennot()
                komento = input("Anna haluamasi komennon numero = ").replace(" ", "")
                if komento == "1" :
                    kartta()
                elif komento == "2" :
                    pelaajan_vanha_sijainti = pelaajan_sijainti
                    pelaajan_sijainti = lentäminen(pelaajan_sijainti)

                    pelaajan_kone = koneen_valitsin(lentokonetyypit)

                    matka = koordinaatit(pelaajan_vanha_sijainti, pelaajan_sijainti)
                    lennon_tiedot = lennon_tiedot_laskin(matka, pelaajan_kone)

                    print(f"\nMatkasi kentältä {pelaajan_vanha_sijainti[0]} kentälle {pelaajan_sijainti[0]}\n"
                          f"oli {matka} kilometria ja valitsemallasi koneella {pelaajan_kone['malli']} siihen meni {lennon_tiedot[0]}"
                          f" minuuttia ja tuotti {lennon_tiedot[1]} kiloa hiilidioksidia")

                    kokonaan_kuljettu_matka += matka
                    kokonais_aika += lennon_tiedot[0]
                    kokonais_co2  += lennon_tiedot[1]
                elif komento == "3" :
                    print(f"Maalisi on {maali[0][0]}, {maali[0][1]}")
        print("\nTrumpetit soi koska voitit pelin")

    elif aloitus == "2" :
        print("Olemme pettyneitä :(")
    return
pääohjelma()


