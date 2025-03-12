import mariadb

tk_yhteys = mariadb.connect(
    host='localhost',
    port=3306,
    database='peli_projekti',
    user='player',
    password='12345',
    autocommit=True
)

def tk_tallenin (aloitus_pelaajan_nimi, ensimmäinen_kenttä, maali, kokonaan_kuljettu_matka, kokonais_aika, kokonais_co2, pisteet):
    curs = tk_yhteys.cursor()
    tallenus = (f"INSERT INTO edelliset_pelit (pelaajan_nimi, aloitus_kentta, maali, kuljettu_matka_km, matkan_aika_min, tuotettu_co2_kg, pisteet)"
                f"VALUES ('{aloitus_pelaajan_nimi[1]}', '{ensimmäinen_kenttä[0]}', '{maali[0][0]}', '{kokonaan_kuljettu_matka}', '{kokonais_aika}', '{kokonais_co2}', '{pisteet}') ")
    curs.execute(tallenus)
    tk_yhteys.commit()
    print(curs.rowcount, "Syötetty")
    return