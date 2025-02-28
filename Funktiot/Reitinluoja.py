import mariadb
import random

yhteys = mariadb.connect(
        host='localhost',
        port= 3306,
        database= 'projekti',
        user= 'player',
        password= '12345',
        autocommit=True
)


def reitinluoja ():
    kentät_icao = ("EFHK", "EFKT", "ESSA", "ENGM", "ENTC", "BIKF", "EGPD", "EGLL", "LFPG", "LEMD",
                   "LIRF", "LSZH", "EDDB", "EPWA", "EKBI", "EVRA", "LOWW", "LRBS", "LQSA", "LGAV", "EHAM")

    aloitus_kenttä = kentät_icao[random.randint(0, 20)]
    lopetus_kenttä = kentät_icao[random.randint(0, 20)]
    # Testataan ovatko aloitus_kenttä ja lopetus_kenttä samat ja jos on niin arvotaan uusi lopetus_kenttä
    if aloitus_kenttä == lopetus_kenttä :
        lopetus_kenttä = kentät_icao[random.randint(0, 20)]
    # sql haut
    sql_aloitus = f"SELECT name FROM airport WHERE ident = '{aloitus_kenttä}'"
    sql_lopetus = f"SELECT name FROM airport WHERE ident = '{lopetus_kenttä}'"

    curs = yhteys.cursor()

    curs.execute(sql_aloitus)
    aloitus_kenttä = curs.fetchall()

    curs.execute(sql_lopetus)
    lopetus_kenttä = curs.fetchall()

    # for i in aloitus_kenttä :
    #     print(f"Pelaaja aloitus kenttäsi on {i[0]}")
    # for a in lopetus_kenttä :
    #     print(f"Ja Maalisi on {a[0]}. \nOnnea matkaan")
    return aloitus_kenttä , lopetus_kenttä

