lentokonetyypit = [
    {
        "malli": "Boeing 737",
        "valmistaja": "Boeing",
        "matkustajamaara": 189,
        "kantama_km": 6570,
        "max_nopeus_kmh": 876
    },
    {
        "malli": "Airbus A320",
        "valmistaja": "Airbus",
        "matkustajamaara": 180,
        "kantama_km": 6150,
        "max_nopeus_kmh": 840
    }
]
for kone in lentokonetyypit:
    print(f"Malli: {kone['malli']}, Valmistaja: {kone['valmistaja']}, "
          f"Matkustajamäärä: {kone['matkustajamaara']}, Kantama: {kone['kantama_km']} km, "
          f"Maksiminopeus: {kone['max_nopeus_kmh']} km/h")