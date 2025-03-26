# 4-bitni seštevalni register s pomnilnimi celicami

## User

Sestavi seštevalni register procesne enote

Uporabiš lahko samo OR, AND, NAND čipe...

Imaš 4 stikala kjer je konfiguracija bitov za prvo število...
Nato še 4 stikala kjer je konfiguracija bitov za drugo število...
Sestavi logično digitalno vezje, ki prvo ter drugo število sešteje ter prikaže rezultat seštevanja z 4 LED-icami na izhodu...
Vezje naj si rezultat zapomne dokler uporabnik ne klikne reset gumba (uporabi spominske celice)...

Primer: 0010 + 0110 = 1000

---

## Assistant

# Seštevalni register s pomnilnimi celicami

Za izgradnjo 4-bitnega seštevalnega registra z uporabo samo AND, OR in NAND čipov, bom uporabil naslednje komponente:

## Osnovni gradniki

1. **Polseštevalnik (Half Adder)**: 
   - Vsota: A XOR B (ki ga lahko sestavimo iz AND, OR, NAND)
   - Prenos: A AND B

2. **Polni seštevalnik (Full Adder)**: 
   - Kombinacija dveh polseštevalnikov za obravnavo prenosa

## Vezje

1. **Vhodni del**:
   - 4 stikala za prvo število (A3, A2, A1, A0)
   - 4 stikala za drugo število (B3, B2, B1, B0)
   - Reset stikalo

2. **Seštevalna logika**:
   - 1 polseštevalnik za bit 0 (A0 + B0)
   - 3 polna seštevalnika za bite 1-3 (A1+B1+C0, A2+B2+C1, A3+B3+C2)

3. **Pomnilne celice**:
   - Uporaba RS flip-flopov iz NAND vrat za shranjevanje vsakega izhodnega bita

4. **Izhodni del**:
   - 4 LED za prikaz rezultata (S3, S2, S1, S0)

## Implementacija z osnovnimi vrati

Ker lahko uporabljamo samo AND, OR in NAND, moramo XOR sestaviti iz teh vrat:

```
XOR(A,B) = (A OR B) AND (A NAND B)
```

## Shema vezja:

1. **Bit 0** (najmanj pomemben bit):
   - Polseštevalnik:
     - S0 = (A0 OR B0) AND (A0 NAND B0)
     - C0 = A0 AND B0

2. **Bit 1**:
   - Polni seštevalnik:
     - S1 = (A1 XOR B1) XOR C0
     - C1 = (A1 AND B1) OR ((A1 XOR B1) AND C0)

3. **Bit 2 in 3**:
   - Enako kot bit 1, z uporabo prejšnjega prenosa

4. **Pomnilne celice**:
   - Za vsak bit uporabimo RS flip-flop iz NAND vrat:
     - S = izhod iz seštevalnika
     - R = reset signal
     - Q = shranjena vrednost bita

5. **Reset**:
   - Ko uporabnik pritisne reset, se vse pomnilne celice izbrišejo

## Primer delovanja (0010 + 0110 = 1000):

1. Vhodi:
   - A: 0 0 1 0 (2)
   - B: 0 1 1 0 (6)

2. Izračun:
   - Bit 0: 0+0 = 0, prenos 0
   - Bit 1: 1+1+0 = 0, prenos 1
   - Bit 2: 0+1+1 = 0, prenos 1
   - Bit 3: 0+0+1 = 1, prenos 0

3. Rezultat: 1 0 0 0 (8)

Ta vezje bo pravilno seštelo dve 4-bitni števili in shranilo rezultat, dokler uporabnik ne pritisne reset gumba.