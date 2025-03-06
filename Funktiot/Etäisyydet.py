import mariadb
from geopy import distance


tk_yhteys = mariadb.connect(
        host='localhost',
        port= 3306,
        database= 'peli_projekti',
        user= 'root',
        password= 'K0ir4Juoks1',
        autocommit=True
)

def koordinaatit (pelaajan_sijainti, icao1):
    sql = f"SELECT latitude_deg, longitude_deg FROM airport WHERE ident = '{pelaajan_sijainti[1]}'"
    curs = tk_yhteys.cursor()
    curs.execute(sql)
    tulos = curs.fetchall()
    #valittu_kenttä = input("\nAnna kentän ICAO-koodi jolle haluat lentää = ").upper()
    sql2 = f"SELECT latitude_deg, longitude_deg FROM airport WHERE ident = '{icao1}'"
    curs.execute(sql2)
    tulos2 = curs.fetchall()
    k_etäisyys = round(distance.distance(tulos, tulos2 ).km)

    return k_etäisyys

pelaajan_sijainti = ["OK", "ESSA"]


icao1 = "EFHK"

print(koordinaatit(pelaajan_sijainti, icao1))