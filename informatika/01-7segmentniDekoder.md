7-Segmentni Dekoder z AND, OR, NAND
Sestavi 7 segmenti dekoder

Uporabiš lahko samo OR, AND, NAND čipe...
Za pomoč uporabi spodnjo shemo 7 segmentnega dekoderja

| 1. stikalo | 2. stikalo | 3. stikalo | Stevilka na displayu |
|------------|------------|------------|----------------------|
| 0          | 0          | 0          | 0                    |
| 0          | 0          | 1          | 1                    |
| 0          | 1          | 0          | 2                    |
| 0          | 1          | 1          | 3                    |
| 1          | 0          | 0          | 4                    |
| 1          | 0          | 1          | 5                    |
| 1          | 1          | 0          | 6                    |
| 1          | 1          | 1          | 7                    |


## Odgovor

7-Segmentni Dekoder z OR, AND in NAND Vrati
Za izdelavo 7-segmentnega dekoderja, ki pretvori 3-bitno binarno število (vhodne stikale) v prikaz na 7-segmentnem zaslonu, uporabimo naslednjo logiko za vsak segment (a-g):

Resničnostna tabela za 7-segmentni prikaz
Vhodi (C B A)	Števka	a	b	c	d	e	f	g
0 0 0	0	1	1	1	1	1	1	0
0 0 1	1	0	1	1	0	0	0	0
0 1 0	2	1	1	0	1	1	0	1
0 1 1	3	1	1	1	1	0	0	1
1 0 0	4	0	1	1	0	0	1	1
1 0 1	5	1	0	1	1	0	1	1
1 1 0	6	1	0	1	1	1	1	1
1 1 1	7	1	1	1	0	0	0	0
Logične enačbe za vsak segment:
Za vsak segment izpeljemo minimalno logično funkcijo:

Segment a:
a = A'B'C' + A'BC' + A'BC + AB'C + ABC' + ABC

Po poenostavitvi (Karnaughovi karti):
a = B'C' + A'B + AC + AB'

Segment b:
b = A'B'C' + A'B'C + A'BC + AB'C' + ABC

Po poenostavitvi:
b = A'B' + B'C' + A'C + ABC

Segment c:
c = A'B'C' + A'B'C + AB'C' + ABC'

Po poenostavitvi:
c = A'B' + B'C' + AB'

Segment d:
d = A'B'C' + A'BC' + A'BC + AB'C + ABC'

Po poenostavitvi:
d = B'C' + A'BC' + A'B + AB'C

Segment e:
e = A'B'C' + A'BC' + AB'C'

Po poenostavitvi:
e = B'C' + A'BC'

Segment f:
f = A'B'C' + AB'C' + AB'C + ABC'

Po poenostavitvi:
f = B'C' + AB' + AC'

Segment g:
g = A'BC' + A'BC + AB'C' + AB'C + ABC'

Po poenostavitvi:
g = A'B + AB' + AC'

Implementacija z AND, OR in NAND vrati:
Ker lahko uporabljamo samo AND, OR in NAND vrata, bomo vse funkcije izrazili s temi operatorji. NAND lahko uporabimo za ustvarjanje NOT operacij (A NAND A = NOT A).

Primer implementacije za segment a:

Copy
a = OR(OR(OR(AND(NOT B, NOT C), AND(NOT A, B)), OR(AND(A, C), AND(A, NOT B)))
Podobno lahko implementiramo vse ostale segmente. Vsaka logična funkcija se lahko izrazi kot kombinacija AND, OR in NOT (ki ga dobimo iz NAND).

Shema povezave:
Najprej ustvarite NOT vrata z NAND:

NOT A = NAND(A, A)

NOT B = NAND(B, B)

NOT C = NAND(C, C)

Nato za vsak segment ustvarite potrebne AND kombinacije vhodov

Na koncu te AND kombinacije povežite z OR vrati, da dobite končni izhod za vsak segment

Ta rešitev zahteva več vrat kot optimalna rešitez z uporabo XOR ali drugih vrat, vendar izpolnjuje zahtevo po uporabi samo AND, OR in NAND vrat.

' je negacija?
Da, v digitalni logiki ' (apostrof) označuje negacijo (NOT operacija). To je standardni zapis v Boolovi algebri:

A' pomeni "NOT A" (negacija A)

B' pomeni "NOT B"

C' pomeni "NOT C"

Kako dobimo negacijo z NAND vrati?
Ker lahko uporabljamo samo AND, OR in NAND vrata, negacijo ustvarimo tako:

NOT A = A NAND A (če NAND vrata dobijo isti signal na oba vhoda, delujejo kot NOT)

Primeri:
A' (NOT A) = NAND(A, A)

B' (NOT B) = NAND(B, B)

(A+B)' (NOR) = NAND(A, B) (ker je NAND samo negiran AND)

Zakaj je to pomembno za 7-segmentni dekoder?
Ker moramo v logičnih enačbah (npr. za segment a: a = B'C' + A'B + AC + AB') uporabiti negirane vhode. Če imamo na voljo samo AND, OR, NAND, moramo vse negacije dobiti preko NAND vrat.

Praktična izvedba:
Če želite implementirati npr. B'C':

Najprej ustvarite B' = NAND(B, B)

Nato ustvarite C' = NAND(C, C)

Končno B'C' = AND(B', C') (ali z NAND + NOT: NAND(B', C')')

Zapisi kot A'B'C' v resničnostni tabeli pomenijo NOT A AND NOT B AND NOT C.

---

+ je ali/or?
Da, v Boolovi algebri in digitalni logiki:

+ pomeni logični OR (ali)

· (ali pa brez znaka) pomeni logični AND (in)

Primeri:
A + B → "A OR B"
(prikazano na 7-segmentnem zaslonu kot vsaj en vhod aktiven)

A · B ali AB → "A AND B"
(prikazano samo, če sta oba vhoda aktivna)

Kako se to uporablja v 7-segmentnem dekoderju?
V logičnih enačbah za segmente (a, b, c, ...) + združuje pogoje, kjer naj bo segment vključen (prižgan):

Segment a:
a = B'C' + A'B + AC + AB'
→ "a je prižgan, če je (B=0 in C=0) ALI (A=0 in B=1) ALI (A=1 in C=1) ALI (A=1 in B=0)"

Implementacija z OR vrati:
Vsak + v enačbi ustreza OR vratom.

Na primer, B'C' + A'B se implementira kot:
OR(AND(B', C'), AND(A', B))

Pomembno:
OR (+) v Boolovi algebri ni isto kot aritmetični "+" (npr. 1 + 1 = 1 v logiki, ne 2).

Če uporabljate samo AND, OR, NAND, morate vse negacije (') dobiti preko NAND vrat (npr. A' = NAND(A, A)).

Skrajšana shema za segment a:
Copy
a = OR(
      OR(
        AND(NOT B, NOT C),  # B'C'
        AND(NOT A, B)       # A'B
      ),
      OR(
        AND(A, C),          # AC
        AND(A, NOT B)       # AB'
      )
    )
Kjer NOT X = NAND(X, X).

New chat
