from lentokoneet import lentokonetyypit

def koneen_valitsin (lentokonetyypit) :
    print(f"Valittavat koneet ovat : ")
    b = 0
    for a in lentokonetyypit :
        b += 1
        print(f"{b}. {a['malli']}, {a['max_nopeus_kmh']} km/h")
    loop = True
    while loop :
        komento = input("Valitse haluamasi kone syöttämällä joko 1 tai 2 = ")
        if komento == "1" :
            pelaajan_kone = lentokonetyypit[0]
            loop = False
        elif komento == "2" :
            pelaajan_kone = lentokonetyypit[1]
            loop = False
        else :
            print("Virheellinen komento kokeile uudestaan")

    print(pelaajan_kone)
    return pelaajan_kone

koneen_valitsin(lentokonetyypit)

