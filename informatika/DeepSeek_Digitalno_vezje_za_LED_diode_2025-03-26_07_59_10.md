# Digitalno vezje za LED diode

## User

Sestavi logično digitalno vezje z vhodnimi stikali S1, S2 ter led diodami, ki prikazujejo trenutno kombinacijo stikal. LED-ice morajo svetiti po naslednji pravilnostni tabeli:

S1 S2 RDECA ORANZNA ZELENA
0  0  0     0       1
0  1  0     1       1
1  0  0     0       0
1  1  1     1       1

---

## Assistant

Za izvedbo tega vezja bomo uporabili logična vrata, ki bodo ustrezala pravilnostni tabeli. Najprej analizirajmo izhode za vsako LED diodo:

### Pravilnostna tabela:
| S1 | S2 | RDECA | ORANZNA | ZELENA |
|----|----|-------|---------|--------|
| 0  | 0  |   0   |    0    |   1    |
| 0  | 1  |   0   |    1    |   1    |
| 1  | 0  |   0   |    0    |   0    |
| 1  | 1  |   1   |    1    |   1    |

### Logične enačbe:
1. **RDECA LED**:
   - Sveti le, ko sta oba stikala `S1` in `S2` aktivna (1). To je logični AND:
     $$
     \text{RDECA} = S1 \cdot S2
     $$

2. **ORANZNA LED**:
   - Sveti, ko je `S2 = 1` (ne glede na `S1`), razen v tretji vrstici (`S1=1, S2=0`). To ustreza logični funkciji:
     $$
     \text{ORANZNA} = S2
     $$
   - Opazimo, da ORANZNA LED sveti, kadar je `S2 = 1`, razen v tretji vrstici, kjer ne sveti. Vendar v pravilnostni tabeli v tretji vrstici (`S1=1, S2=0`) ORANZNA LED ne sveti, kar ustreza `S2=0`. Torej je ORANZNA preprosto enaka `S2`.

3. **ZELENA LED**:
   - Sveti, ko sta oba stikala izklopljena (`S1=0, S2=0`) ali ko je `S2=1` (razen v tretji vrstici). To ustreza:
     $$
     \text{ZELENA} = \overline{S1} \cdot \overline{S2} + S2
     $$
   - Poenostavimo:
     $$
     \text{ZELENA} = \overline{S1} \cdot \overline{S2} + S2 = \overline{S1} \cdot \overline{S2} + S2 \cdot (1) = \overline{S1} \cdot \overline{S2} + S2 \cdot (S1 + \overline{S1}) = \overline{S1} \cdot \overline{S2} + S1 \cdot S2 + \overline{S1} \cdot S2
     $$
     $$
     \text{ZELENA} = \overline{S1} \cdot (\overline{S2} + S2) + S1 \cdot S2 = \overline{S1} \cdot 1 + S1 \cdot S2 = \overline{S1} + S1 \cdot S2
     $$
     $$
     \text{ZELENA} = \overline{S1} + S2
     $$
   - Preverimo:
     - Za `S1=0, S2=0`: $\overline{0} + 0 = 1 + 0 = 1$ (ZELENA sveti)
     - Za `S1=0, S2=1`: $\overline{0} + 1 = 1 + 1 = 1$ (ZELENA sveti)
     - Za `S1=1, S2=0`: $\overline{1} + 0 = 0 + 0 = 0$ (ZELENA ne sveti)
     - Za `S1=1, S2=1`: $\overline{1} + 1 = 0 + 1 = 1$ (ZELENA sveti)
   - To se ujema s pravilnostno tabelo.

### Shema vezja:
1. **RDECA LED**:
   - Povežemo `S1` in `S2` na AND vrata. Izhod AND vrat povežemo na RDECO LED z uporom v seriji.

2. **ORANZNA LED**:
   - Povežemo `S2` neposredno na ORANZNO LED z uporom v seriji.

3. **ZELENA LED**:
   - Povežemo `S1` na NOT vrata (inverter). Izhod NOT vrat ($\overline{S1}$) in `S2` povežemo na OR vrata. Izhod OR vrat povežemo na ZELENO LED z uporom v seriji.

### Uporaba vrat:
- 1x AND vrata (za RDECO LED)
- 1x NOT vrata (za $\overline{S1}$)
- 1x OR vrata (za ZELENO LED)
- ORANZNO LED lahko priključimo neposredno na `S2` (brez dodatnih vrat).

### Shematski prikaz (besedilno):
```
S1 ----\
        AND ---- RDECA LED
S2 ----/

S2 -------------------------- ORANZNA LED

S1 ---- NOT ----\
                 OR ---- ZELENA LED
S2 --------------/
```

### Opomba:
- Ne pozabite na upore v seriji z LED diodami, da omejite tok (običajno 220-470 Ω, odvisno od napajalne napetosti in karakteristik LED).
- NOT vrata lahko implementirate z uporabo NPN tranzistorja ali z uporabo integriranega vezja (npr. 7404).

---

## User

Kje točno so upori?

---

## Assistant

Upori so **vedno vezani v serijo z LED diodami**, da omejijo tok in preprečijo pregrevanje ali pokvaritev LED. V vezju, ki sem ga opisal, so upori potrebni na treh mestih:

### **Točna lokacija uporov:**
1. **RDECA LED**  
   - Upor je vezan med **izhod AND vrat** in **anodo (+) RDECE LED**.  
   - Katoda (−) LED gre na **maso (GND)**.  

2. **ORANZNA LED**  
   - Upor je vezan med **stikalo S2** in **anodo (+) ORANŽNE LED** (ker je `S2` neposredno krmilil ORANŽNO LED).  
   - Katoda (−) LED gre na **maso (GND)**.  

3. **ZELENA LED**  
   - Upor je vezan med **izhod OR vrat** in **anodo (+) ZELENE LED**.  
   - Katoda (−) LED gre na **maso (GND)**.  

### **Posodobljena shema (z upori):**
```
S1 ----\
        AND ---- [R1] ---- RDECA LED ---- GND
S2 ----/

S2 ---- [R2] ---- ORANZNA LED ---- GND

S1 ---- NOT ----\
                 OR ---- [R3] ---- ZELENA LED ---- GND
S2 --------------/
```
*(`[R1]`, `[R2]`, `[R3]` so upori, običajno 220–470 Ω)*

### **Zakaj so upori tam?**  
- LED diode zahtevajo omejen tok (običajno 5–20 mA). Brez upora bi tok skozi LED bil prevelik (odvisno od napajalne napetosti), kar bi lahko uničilo diodo.  
- Upor izračunamo po **Ohmovem zakonu**:  
  $$
  R = \frac{V_{\text{napajalo}} - V_{\text{LED}}}{I_{\text{LED}}}
  $$
  - Če je napajalna napetost **5 V** in LED padec napetosti **2 V** (rdeča/oranžna) ali **3 V** (zelena/bela/modra), pri želenem toku **10 mA**:  
    $$
    R = \frac{5V - 2V}{0.01A} = 300 \, \Omega \quad \text{(standardna vrednost: 330 Ω)}
    $$

### **Praktična izvedba:**
- Upori so lahko na **anodni strani** (kot prikazano zgoraj) ali **katodni strani** (med LED in maso), vendar je prva možnost bolj pogosta.  
- Če uporabljate integrirana vezja (npr. 7408 za AND, 7432 za OR, 7404 za NOT), pazite, da izhodi vrat ne prevajajo prevelikega toka (običajno do 20 mA na izhod).  

**Skratka:**  
- **Vsaka LED mora imeti svoj upor v seriji!**  
- Upori so med **krmilnim signalom (AND/OR/S2)** in **anodo LED**.