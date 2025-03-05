import mariadb

tk_yhteys = mariadb.connect(
        host='localhost',
        port= 3306,
        database= 'peli_projekti',
        user= 'player',
        password= '12345',
        autocommit=True
)

def lentäminen(pelaajan_sijainti):
    # SQL Komentoja varten
    curs = tk_yhteys.cursor()


    # Haetaan kaikki lentoyhtydet joita kentällä jolla pelaaja tällä hetkellä on.
    sql = f"SELECT lopetuspiste FROM airport, yhteys WHERE airport.ident = yhteys.aloituspiste AND ident = '{pelaajan_sijainti[0][1]}'"
    sql2 = f"SELECT aloituspiste FROM airport, yhteys WHERE airport.ident = yhteys.lopetuspiste AND ident = '{pelaajan_sijainti[0][1]}'"
    curs.execute(sql)
    yhteydet = curs.fetchall()
    curs.execute(sql2)
    yhteydet.extend(curs.fetchall())

    # Haetaan vielä identia vastaavan kentän nimi pelaajalle
    kentät_nimet = []
    for a in yhteydet :
        curs.execute(f"SELECT name, ident FROM airport WHERE ident = '{a[0]}'")
        kentät_nimet.extend(curs.fetchall())

    # Tulostetaan yhteydet pelaajalle
    print(f"Olet kentällä {pelaajan_sijainti[0][0]} josta valittavat yhteydet ovat : ")
    for rivi in kentät_nimet :
        print (f"\nKentän nimi on {rivi[0]} ja ICAO-koodi: {rivi[1]}")

    valittu_kenttä = input("\nAnna kentän ICAO-koodi jolle haluat lentää = ").upper()
    # Testataan onko pelaajan valitsema kenttälle olemassa yhteyksissä jos on siirretään pelaaja sinne.

    for i in yhteydet :
        if valittu_kenttä in i :
            pelaajan_sijainti = valittu_kenttä
            print(f"Pelaajan nykyinen sijainti {pelaajan_sijainti}")



    return

# pelaajan_sijainti = "ESSA"
#
# lentäminen(pelaajan_sijainti)