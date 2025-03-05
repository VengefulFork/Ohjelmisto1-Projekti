import mariadb

tk_yhteys = mariadb.connect(
        host='localhost',
        port= 3306,
        database= 'peli_projekti',
        user= 'player',
        password= '12345',
        autocommit=True
)

def lentäminen():
    # SQL Komentoja varten
    curs = tk_yhteys.cursor()

    pelaajan_sijainti = "ESSA"
    # Haetaan kaikki lentoyhtydet joita kentällä jolla pelaaja tällä hetkellä on.
    sql = f"SELECT lopetuspiste FROM airport, yhteys WHERE airport.ident = yhteys.aloituspiste AND ident = '{pelaajan_sijainti}'"
    sql2 = f"SELECT aloituspiste FROM airport, yhteys WHERE airport.ident = yhteys.lopetuspiste AND ident = '{pelaajan_sijainti}'"
    curs.execute(sql)
    yhteydet = curs.fetchall()
    curs.execute(sql2)
    yhteydet.extend(curs.fetchall())

    # Tulostetaan yhteydet pelaajalle
    for rivi in yhteydet :
        print (rivi[0])

    valittu_kenttä = input("\nAnna kenttä jolle haluat lentää = ").upper()
    # Testataan onko pelaajan valitsema kenttälle olemassa yhteyksissä jos on siirretään pelaaja sinne.
    for i in yhteydet :
        if valittu_kenttä in i :
            pelaajan_sijainti = valittu_kenttä

    print(f"Pelaajan nykyinen sijainti {pelaajan_sijainti}")
    return

lentäminen()