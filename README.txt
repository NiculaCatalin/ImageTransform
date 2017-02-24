Nicula Catalin-George
312CD


Task 1.1.1

Pentru realizarea interpolarii liniare m-am folosit de formula de pe wikipedia pentru aflarea lui x si am folosit functia floor pentru a afla partea intraga din x, facand mai usoara plasarea acestuia intre 2 valori. A fost necesar si un if(x==n) caz in care value=v(n) deoarece altfel in cazul respectiv se aduna 1 la n si trecea peste limita vectorului.

Task 1.1.1

Pentru implementarea interpolarii biliniare m-am folosit de functia lerp definita anterior, interpoland precum a  fost indicat in pdf, mai intai pe coloana y1 cu x=row si mai apoi pe coloana y2 cu x=row (y1<col<y2). Obtinand astfel 2 valori: a si b am interpolat vectorul acestora cu x=col - floor(col) +1 aceasta secventa are rolul de a scala col, aducandu-l in intervalul [1;2] deoarece in vectorul [a;b] folosit la interpolare, indicii lui a si b sunt 1 respectiv 2 deci col trebuie sa apartina acestui interval pentru a putea fii interpolat.Folosind variabila j=ceil(col) ne-am asigurat ca nu exista o situatie in care j+1 sa depaseasca limia superioara a matricei.


Task 1.2.1

Pentru a implementa functia forward_mapping am inceput prin a afla i1 si j1 minime si maxime pentru noua matrice( [i1;j1]=T*[i;j] ). Acest lucru a fost necesar deoarece dupa transformarea matricei initiale, aceasta va avea valori pt i si j mai mici decat 0 astfel neputand fii incadrate in matricea noua. 
Cunoscand cele 4 valori ce definesc marimea noii marici am putut sa o definim astfel: img_out=zeros(xmax-xmin+1,ymax-ymin+1) astfel asigurandu-ne ca are marimea exacta necesara pentru ca toti pixelii mutati sa incapa in ea. 

Urmatorul lucru pe care l-am facut a fost sa transform i si j negative in valori pozitive adunand : i1=i(dupa inmultirea cu T) -xmin(acesta fiind negativ) +1 
                                                                                       si respectiv j1=j(dupa inmultirea cu T) -ymin(acesta fiind negativ) +1.

Astfel m-am asigurat ca toti pixelii, pana la cel cu i sau j cele mai mici au acum coordonate pozitive. Deoarece am initializat aceasta matrcie cu valorie exacte necesare acesteia, ea nu mai trebuie sa fie scalata.


Task 1.2.2

Similar functiei precedente, am pornit de la matricea initiala/originala si am calculat xmin xmax ymin ymax pentru a putea cunoaste dimensiunile matricei rezultante pe care am initializat-o cu 0: img_out=zeros(xmax-xmin+1,ymax-ymin+1).

Precum a fost indicat in enunt, am inversat procesul de la functia forward, luand in parte fiecare pixel din matricea goala rezultanta si inversand operatiile de la task 1:
v=T_invers*v unde v=[i+xmin-1;j+ymin-1] unde i,j sunt coordonatele pixelilor din matricea goala. 

Astfel in v avem coordonatele unui pixel din matricea originala dar acestea nefiind intregi, a fost necesara aplicarea functiei bilerp pentru a afla valoarea pixelului. Dupa ce am aflat valoarea unui pixel in matricea originala, i-am modificat-o in matricea goala, astfel completand imaginea noua.


Demo

Exact cum a fost cerut in enuntul temei am realizat o functie fara valori de intrare care face transformarile cerute asupra celor 2 imagini mai intai pe flapping_duck.png si mai apoi pe flapping_bird.png si anume:
-rotire fata de orizontala
-scalare cu 0.4
-rotire in sens trigonometric cu 45 grade
imaginile noi fiind create in fisierul curent.