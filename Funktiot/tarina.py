
def tarina (maali) :
    pelaajan_nimi = input("Anna nimesi = ")
    tr =(f"Päivää Agentti {pelaajan_nimi}. Tilanne on mitä vakavin sillä arkkivihollisesi Tohtori Palmu on jälleen paennut vankilasta."
         f"\nRaporttiemme mukaan hän piileskelee jossain {maali[0][0]} lähettyvillä").replace("Airport", "lentokentän")
    print(tr)
    lippu = True
    while lippu :
        komento = input("\nTehtäväsi mikäli sen otat vastaan on ottaa Tohtori Palmu kiinni."
                        "\nSyötä 1 ottaaksesi tehtävä vastaan tai 2 hylätäksesi tehtävän = ").replace(" ", "")
        if komento == "1" or komento == "2":
            lippu = False
        else :
            print("Virheellinen komento kokeile uudestaan")
    return komento



