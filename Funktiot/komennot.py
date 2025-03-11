
def komennot ():

    komennot = [("Kartta"), ("Lennä seuraavalle kentälle"), ("Tarkista maalisi"), ("Tarkista kulunut aika, käytetty hiilidioksidi ja kuljettu matka") ]
    komennon_numero = 0
    print("\nMahdolliset komennot")
    for a in komennot :
        komennon_numero += 1
        print(f"{komennon_numero}. {a}")
    return

