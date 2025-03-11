import math

def lennon_tiedot_laskin (matka, pelaajan_kone):
    matkan_pituus = (matka / pelaajan_kone['max_nopeus_kmh']) * 60
    matkan_pituus = round(matkan_pituus)

    # Kerrotaan ensiksi matka pelaajan käyttämän koneen poltoaineen kulutuksella kg per km
    käytetty_polttoaine = matka * pelaajan_kone['poltoaineen_kulutus_kg/km']
    # Kerrotaan koko kulutettu polttoaine määrä 3.16 koska 1kg polttoainetta tuottaa noin 3.16kg co2
    tuotettu_co2 = käytetty_polttoaine * 3.16


    return matkan_pituus, round(tuotettu_co2)