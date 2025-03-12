import mariadb
import random
from Pääohjelma import kokonaan_kuljettu_matka, kokonais_aika, kokonais_co2
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


optimal_t = 12

medium_t = 16

long_t = 20

vlong_t = 24

points_t = 0


optimal_co2 = 10000

medium_co2 = 15000

lot_co2 = 20000

vmuch_co2 = 25000

points_co2 = 0


if kokonaan_kuljettu_matka <= optimal_distance:
    points = tpoints * 4

if optimal_distance < kokonaan_kuljettu_matka <= medium_distance:
    points = tpoints * 3

if medium_distance < kokonaan_kuljettu_matka <= long_distance:
    points = tpoints * 2

if long_distance < kokonaan_kuljettu_matka <= vlong_distance:
    points = tpoints

if kokonaan_kuljettu_matka > vlong_distance:
    points = 0


if kokonais_aika <= optimal_t:
    points_t = tpoints * 4

if optimal_t < kokonais_aika <= medium_t:
    points_t = tpoints * 3

if medium_t < kokonais_aika <= long_t:
    points_t = tpoints * 2

if long_t < kokonais_aika <= vlong_t:
    points_t = tpoints

if kokonais_aika > vlong_t:
    points_t = 0


if kokonais_co2 <= optimal_co2:
    points_co2 = tpoints * 4

if optimal_co2 < kokonais_co2 <= medium_co2:
    points_co2 = tpoints * 3

if medium_co2 < kokonais_co2 <= lot_co2:
    points_co2 = tpoints * 2

if lot_co2 < kokonais_co2 <= vmuch_co2:
    points_co2 = tpoints

if kokonais_co2 > vmuch_co2:
    points_t = 0

points_t = points + points_t + points_co2

if lopetus_kenttä == pelaajan_uusi_sijainti:
    print("Olet saapunut maaliin!")
    print("Matkustit yhteensä n.",kokonaan_kuljettu_matka,"km.")
    print("Sait",points_t, "pistettä!")
