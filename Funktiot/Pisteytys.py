
import mariadb
import random

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
    lopetus_kenttä = kentät_icao[random.randint(0, 1)]
    sql_lopetus = f"SELECT name, ident FROM airport WHERE ident = '{lopetus_kenttä}'"

    curs = tk_yhteys.cursor()

    curs.execute(sql_lopetus)
    lopetus_kenttä = curs.fetchall()

    return lopetus_kenttä



optimal_distance = 10000

medium_distance = 15000

long_distance = 20000

vlong_distance = 25000

tpoints = 25

distance = 2500

points = 0


if distance <= optimal_distance:
    points = tpoints * 4

if optimal_distance < distance <= medium_distance:
    points = tpoints * 3

if medium_distance < distance <= long_distance:
    points = tpoints * 2

if long_distance < distance <= vlong_distance:
    points = tpoints

if distance > vlong_distance:
    points = 0


pelaajan_sijainti = "ESSA"

if lopetus_kenttä == "ESSA":
    print("Olet saapunut maaliin!")
    print("Matkustit yhteensä n.",distance,"km.")
    print("Sait",points, "pistettä!")

