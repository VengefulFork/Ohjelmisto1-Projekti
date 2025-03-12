
import mariadb
import random
from Etäisyydet import u_matka
from Reitinluoja import lopetus_kenttä
from Lentäminen import pelaajan_uusi_sijainti


tk_yhteys = mariadb.connect(
        host='localhost',
        port= 3306,
        database= 'peli_projekti',
        user= 'root',
        password= 'K0ir4Juoks1',
        autocommit=True
)

def lopetus ():
    kentät_icao = ("EFHK","ESSA")
    lopetus_k = kentät_icao[random.randint(0, 1)]
    sql_lopetus = f"SELECT name, ident FROM airport WHERE ident = '{lopetus_k}'"

    curs = tk_yhteys.cursor()

    curs.execute(sql_lopetus)
    lopetus_k = curs.fetchall()

    return lopetus_k



optimal_distance = 10000

medium_distance = 15000

long_distance = 20000

vlong_distance = 25000

tpoints = 25

points = 0


if u_matka <= optimal_distance:
    points = tpoints * 4

if optimal_distance < u_matka <= medium_distance:
    points = tpoints * 3

if medium_distance < u_matka <= long_distance:
    points = tpoints * 2

if long_distance < u_matka <= vlong_distance:
    points = tpoints

if u_matka > vlong_distance:
    points = 0


if lopetus_kenttä == pelaajan_uusi_sijainti:
    print("Olet saapunut maaliin!")
    print("Matkustit yhteensä n.",u_matka,"km.")
    print("Sait",points, "pistettä!")

