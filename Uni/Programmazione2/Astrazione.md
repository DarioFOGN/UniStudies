#### Introduzione
Paradigma di Programmazione:<br>
Una collezione di modelli concettuali che insieme plasmano li processo di analisi e svliuppo di un programma. questi modelli strutturano il pensiero in quanto determineranno la coretta forma di scrittura di un programma, andando ad influenzare come pensiamo e formuliamo le nostre soluzioni.<br><br>

Classificazione dei paradigmi:<br>
i paradigmi ad alto livello possono essere raggruppati in base al loro approccio alla soluzione dei problemi:<br>
<ul>
    <li> <b>Approccio operazionale</b>: descrive per passi come costruire una soluzione</li>
    <li> <b>Approccio dimostrazionale</b>: lliustra la soluzione in modo operativo per esempi specifici e lascia al sistema il compito di generalizzare queste soluzioni di esempio ad altri casi</li>
    <li> <b>Approccio definizionale</b>:stabliisce propriet-> della soluzione senza descrivere come viene calcolata, vincolando la soluzione ma senza entrare nel dettaglio della sua realizzazione.</li>
</ul>

ne occorre studiare diversi perchè nessun paradigma è appropriato per tutti i problemi. Le applicazioni complesse necessitano l'adozione di più paradigmi di programmazione, in modo da applicare li paradigma più adatto per risolvere un determinato sotto-problema.<br>
ma bisogna ovviamente comparare i costi dovuti all'uniformit-> di paradigma con i costi determinati dall uso di diversi di essi per un medesivo problema.
i **costi** sono: apprendimento di esso, debugging, riguardo l'evoluzione del programma e costi di esecuzione<br>

##### Paradigmi Operazionali
Caratterizzati da sequenze comp. passo passo. Si distinguono in:<br>
<ul>
<li>Side-effecting: procedono modificando ripetutamente la loro rappresentazione dei dati (variablii legate a locazioni di memoria -- c)</li>
<li>non Side-effecting: procedono creando continuamente nuovi dati</li> </ul>

I paradigmi con effetti collaterali si distinguono in: Imperativi e orientati agli oggetti.

#### Astrazione nella progettazione
Astrarre significa formulare la rappresentazione di un problema con l'obbiettivo di concentrarsi sugli aspetti rlievanti(sulle idee generali) del problema, dimenticando gli elementi **incidentali**, omettendo quindi l'implementazione specifica di quelle idee. Infatti si focalizza sulle caratteristiche essenziali di un oggetto, rispetto alla prospettiva di colui che osserva.
è formato da:<br>
<ul><li><b>un processo</b>: l'estrazione delle informazioni essenziali e rlievanti per un particolare scopo</li>
<li><b>una entit-></b>: una descrizione semplificata di un sistema che enfatizza alcuni dei dettagli o proprietà</li></ul>

nella programmazione, l'astrazione allude alla distinzione che si fa tra **cosa** fa un pezzo di codice e come esso è implementato. infatti per l'utente l'essenziale è cosa fa il codice mentre non è interessato ai dettagli implementativi.<br>
Ed è utile per padroneggiare la complessit-> dei sistemi software, in quanto consente di contrarsi sugli aspetti che interessano in un determinato contesto ed ignorare i restanti.<br>

#### Astrazione Funzionale
permette di specificare un modulo software che trasforma dei dati di input in output, nascondendo i dettagli algoritmici, che conosce solo le corrette convenzioni di chiamata (specifica sintattica). e cosa fa il modulo (specifica semantica). Dovr->, pertanto fidarsi del risultato ex. (fattoriale) fatt(intero)-> intero. si prende un intero e restituisce un intero. mentre la specifica semantica sarà la funzione fattoriale calcolata. Come è calcolata ovviamente nell'astrazione non è noto.<br><br>

L’astrazione funzionale è di supporto alla metodologia dello stepwise refinement, che mira a costruire programmi progredendo dal generale al particolare. Ovvero, si parte dal problema iniziale e lo si decompone in sotto-compiti, definendo un modulo che risolva ciascun sotto-problema fino a quando si arriva a sotto-compiti elementari.<br><br>

Limiti della astrazione funzionale:<br>
<ul>
    <li>chi andr-> a realizzare il modulo dovrà già sapere i dettagli relativi alla rappresentazione dei dati input e output</li>
    <li>condivisione della rappresentazione va a ripecuotersi (dei dati input/output) va a ripercuotersi su molti altri moduli</li>
</ul>
quindi non permette di sviluppare soluzioni invarianti ai cambiamenti dati, ma solo nei processi di trasformazione che operano. Per questo inappropriata per sviluppo di soluzioni a problemi complessi, in quanto da mantenere è difficoltosa.<br><br>

#### Astrazione dati
Obiettivo: rendere il programma invariante alla manutenzione dei dati.<br><br>
Basata sul Principio di astrazione dati: non si può accedere direttamente alla rappresentazione di un dato, qualunque esso sia, ma solo attraverso un insieme di operazioni considerate lecite. Il vantaggio è che un cambiamento nella rappresentazione del dato si ripercuoter-> solo sulle operazioni lecite, che potrebbero subire delle modifiche, mentre non influenzerà il codice che utilizza il dato astratto.<br><br>

##### Astrazione dati vs Astrazione funzionale
uno dei principi dell'astrazione, in generale, è quelli di occultare l'informazione (information hiding), sia perchè non necessaria al fruitore dell'entita estratta, sia perchè la sua rivelazione creerebbe delle inutili dipendenze che comprometterebbero l'invarianza ai cambiamenti.<br><br>

L’astrazione funzionale stimola gli sforzi per evidenziare operazioni ricorrenti o comunque ben caratterizzate all’interno della soluzione di un dato problema.<br>
L’astrazione di dati ricalca ed estende quella funzionale, in più stimola gli sforzi per individuare l’organizzazione dei dati più consone alla soluzione del problema.<br>

#### Incapsulamento
L’incapsulamento è una tecnica di progettazione consistente nell’impacchettare una collezione di entit->, creandone una
barriera concettuale (es. libreria incapsula diverse funzioni, un oggetto incapsula un dato e un insieme di operazioni sul
dato).<br>
L’incapsulamento sottintende:
<ul>
    <li> Un processo: l’impacchettamento</li>
    <li> Una entit->: il pacchetto</li>
</ul>
Le pareti del pacchetto potranno essere:
<ul>
 <li>Trasparenti: permettendo di vedere tutto ciò che è stato impacchettato</li>
 <li>Traslucide: permettendo di vedere in modo parziale il contenuto </li>
 <li>Opache: nascondendo tutto il contenuto del pacchetto.</li>
</ul>

#### limiti delle specifiche assiomatiche e svantaggi rispetto alle  specifiche algebriche.
Le specifiche assiomatiche sono precise nella definizione della specifica sintattica, mentre sono piuttosto informali per gli
altri aspetti, talvolta si ricorre al linguaggio naturale per semplicit->. Pertanto, non consentono di caratterizzare
precisamente un tipo astratto. In particolare, non consentono di definire i valori che possono essere generati mediante
l’applicazione di operatori e non consentono di stabilire quando l’applicazione di diverse sequenze di operatori porta al
medesimo valore, in quanto non è possibile combinare i diversi operatori.
Questo problema è superato dalle specifiche algebriche.
<br>

ex di specifica assiomatica:<br>
<pre>
    si ha una specifica semantica di questo tipo:<br>
    tipi:
     - deque = insieme delle sequenze 〈a1, a2,…, an 〉, con n>0, di elementi di tipo item. Λ denota la sequenza vuota.<br>
     - boolean = insieme dei valori di verit-> {vero, falso} 
    Operatori:
        • new ()=q’<br>• Post: q' = Λ
        • addq(a,q)=q' // accoda un elemento 
         Pre:       
            q =〈a1, a2,…, an 〉oppure q= Λ 
         Post: 
            q'=〈a1, a2,…, an, a 〉, se q≠Λ;  
            q'=〈a〉 se q=Λ
        • bottom(q)=a // restituisce l'elemento di coda 
            Pre: q =〈 a1, a2,…, an 〉 ≠ Λ
            Post: a=an 
        •  leaveq(q)=q' //estrae l'elemento di coda 
            Pre: q= 〈 a1, a2,…, an 〉 ≠ Λ
            Post: q= 〈 a1, a2,…, an-1 〉 se n>1  
                q'=Λ  se n=1
        ... continua
</pre>

ex di specifica algebrica:<br>
<pre>
ogni insieme è detto un sort dall'algebra eterogenea.
    specifica sintattica:
        • sorts: stack, item, boolean
        • operations: 
        newstack() -> stack
        push(stack, item) -> stack
        pop(stack) -> stack
        top(stack) -> item
        isnew(stack) -> boolean
    specifica semantica:
    • declare stk: stack, i: item 
        pop(push(stk, i)) = stk
        top(push(stk, i)) = i
        isnew(newstack) = true
        isnew(push(stk, i)) = false
    specifica di restrizione: 
    • restrictions
        pop(newstack) = error
        top(newstack) = error 
            dove ‘error’ è un elemento speciale indefinito
</pre>

un altro esempio di specifica algebrica:<br>

<img title="1" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\CodaSPALG.png">

<img title="1" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\CodaSPALG2.png">

#### Astrazione di controllo
l'astrazione di controllo permette di specificare moduli software che effettuano operazioni in un determinato oridine, nascondendo i dettagli implementativi di esso e quindi su come l'ordinamento è stato ottenuto.<br><br>

ex: while(esperssione,istruzione): ha un input un espressione e una istruzione e itera l'esecuzione dell istruzione finchè l'espressione sia vera.<br><br>

altro esempio: for-each(dato astratto,istruzione): il for-each utilizza due operatori(next e hasnext) per eseguire l'istruzione l'istruzione si ogni valore nel dato astratto. l'implementazione dell'ordine con cui i valori sono considerati è nascosta.<br><br>

#### Cittadino di prima/seconda/terza classe
In generale, un cittadino di prima classe è un valore o un oggetto che può essere utilizzato come un valore qualsiasi, come una variabile o un parametro di una funzione. In altre parole, può essere assegnato a una variabile, passato come parametro a una funzione e restituito come valore di ritorno da una funzione.<br>

Un cittadino di seconda classe è un valore o un oggetto che ha alcune restrizioni nell'utilizzo. Ad esempio, non può essere assegnato a una variabile o passato come parametro a una funzione.<br>

Un cittadino di terza classe è un valore o un oggetto che non può essere utilizzato come un valore qualsiasi, ma solo in determinate situazioni. Ad esempio, solo come parametro di una funzione o solo come valore di ritorno da una funzione.<br>

In molti linguaggi di programmazione noti, come Python, C++, Java, gli oggetti sono cittadini di prima classe, poiché possono essere utilizzati come qualsiasi altro valore. Tuttavia, in alcuni linguaggi, come C, gli oggetti sono cittadini di seconda classe, poiché non possono essere assegnati a una variabile.<br>

L'importanza di questa classificazione dipende dal contesto e dalla progettazione del linguaggio di programmazione. In alcuni casi, la possibilità di trattare gli oggetti come cittadini di prima classe può semplificare la programmazione e rendere il codice più leggibile. In altri casi, potrebbe essere necessario limitare l'utilizzo degli oggetti per garantire la sicurezza del codice o per altri scopi.<br>

Un esempio di come la classificazione dei cittadini di prima classe possa influire sulla programmazione può essere visto confrontando la programmazione in Java e C.<br>

In Java, tutti gli oggetti sono cittadini di prima classe, quindi è possibile passare un oggetto come parametro a una funzione e assegnarlo a una variabile. Ad esempio, si può creare una lista di oggetti e passarla come parametro a una funzione, che può quindi modificare gli oggetti all'interno della lista:

```java
void modifyObjects(List<Object> objList) {
    for (Object obj : objList) {
        obj.setProperty("new value");
    }
}
List<Object> myList = Arrays.asList(obj1, obj2, obj3);
modifyObjects(myList);
```

In C, gli oggetti non sono cittadini di prima classe, quindi non è possibile passare un oggetto come parametro a una funzione o assegnarlo a una variabile. Invece, si passa l'indirizzo dell'oggetto (che è un cittadino di prima classe) e si utilizza l'operatore di indirizzo per accedere all'oggetto:

```java
void modify_objects(struct obj* obj_list, int size) {
    for (int i = 0; i < size; i++) {
        obj_list[i].property = "new value";
    }
}
struct obj obj1, obj2, obj3;
struct obj* my_list[3] = { &obj1, &obj2, &obj3 };
int size = sizeof(my_list)/sizeof(my_list[0]);
modify_objects(my_list,size);
```

In questo esempio, si può vedere come la classificazione degli oggetti come cittadini di prima classe in Java semplifica la programmazione rispetto a C, poiché non è necessario utilizzare l'operatore di indirizzo e si possono passare gli oggetti direttamente come parametri. Inoltre, Java fornisce una interfaccia di lista generica che permette di utilizzare gli oggetti in modo più semplice rispetto alla gestione manuale degli array in C.

#### Astrazione di funzione (Espressione -> Astrazione di funzione)
Un’astrazione di funzione include un’espressione da valutare, e quando chiamata, darà un valore come risultato.
È specificata mediante una definizione di funzione del tipo:<br>

function I (FP1; ... ; FPn) is E<br>

dove I è un identificatore, FP1; ... ; FPn sono parametri formali ed E è l’espressione da valutare.
L’astrazione di funzione ha la proprietà di dare un risultato ogni qualvolta è chiamata con argomenti appropriati.
Una chiamata di funzione ha due punti di vista:<br>

• Utente: la chiamata di una funzione trasforma gli argomenti in un risultato.<br>
• Implementatore: la chiamata valuta E, avendo vincolato i parametri formali agli argomenti corrispondenti.<br>

Inoltre, l’algoritmo codificato in E è di interesse per l’implementatore.
Anomalie di progetto dei linguaggi: per definizione l’astrazione di funzione valuta un’espressione, dunque, è naturale
attendersi che il corpo della funzione non includa dei comandi (assegnazioni, iterazioni, etc.) il cui effetto è quello di
cambiare lo stato del sistema, non di produrre valori. Tuttavia, è possibile imbattersi in situazioni di questo tipo, ad
esempio in una funzione Pascal per poter restituire un valore è necessario assegnarlo (utilizzando quindi un comando di
assegnazione) ad una pseudo variabile che ha lo stesso nome della funzione.

L’unica alternativa possibile per non utilizzare assegnazioni ed iterazioni all’interno di una astrazione di funzione, è
quella di usare la ricorsione, che, pur essendo uno strumento potente, è spesso fonte di inefficienze nell’uso delle
risorse di calcolo.
Quindi, molti linguaggi di programmazione permettono di avere comandi nel corpo di funzioni per ragioni di efficienza,
lasciando al programmatore il compito di utilizzare questi comandi correttamente in modo da evitare che la funzione
possa avere effetti collaterali (Side Effect) oltre a quello di calcolare un valore.

##### Classificazione delle funzioni
le funzioni in base al linguaggio sono classificate in maniera di versa in quanto hanno differenti possibilità di case usage, in alcuni linguaggi sono di terzo livello: (fortran, ada, java) ovvero possono essere solo chiamate, in altre sono di seconda classe, cioè possono anche essere passate come argomenti (Pascal o C[si usano i puntatori]) mentre in altri linguaggi sono di prima classe in quanto possono essere restituite come risultato della chiamata di altre funzioni o possono essere assegnate coem valore ad una variabile (ex. nel linguaggio ML possiamo scrivere val cube = fn(x:real) che assegna alla variabile cube una funzione che calcola il cubo di un valore reale).

#### Astrazione di procedura
(Ricordare la differenza base, la procedura non ritorna un valore, semplicemente esegue dei comandi). 
Un’astrazione di procedura include un comando da eseguire, e quando chiamata, aggiornerà le variabili che
rappresentano lo stato del sistema.
È specificata mediante una definizione di procedura, del tipo:

procedure I(FP1; . . . ; FPn) is C

dove I è un identificatore, FP1; ... ; FPn sono parametri formali e C è il blocco di comandi da eseguire.
L’astrazione di procedura gode della proprietà di cambiare lo stato del sistema quando chiamata con argomenti appropriati.

La chiamata ad una procedura ha due punti di vista:<br>

• Punto di vista dell’utente: la chiamata aggiornerà lo stato del sistema in modo dipendente dai parametri.<br>
• Punto di vista dell’implementatore: la chiamata consentirà l’esecuzione del corpo di procedura C, avendo vincolato i parametri formali agli argomenti corrispondenti.

In Pascal e in C le procedure sono cittadini di seconda classe, cioè possono essere chiamate e possono essere passate come argomenti (esempio di puntatori a funzioni in C, possiamo definire una funzione bubble che permette di ordinare un array di interi sulla base di una funzione di ordinamento. Nell’intestazione possiamo passare un argomento di tipo
puntatore a funzione: void (\*compare)(int, int, int\*) che dice a bubble di aspettarsi un puntatore a una funzione, identificata da compare).

#### Astrazione di controllo
L’astrazione di controllo si applica alla classe sintattica struttura di controllo. Le strutture di controllo definiscono
l’ordine in cui le singole istruzioni o i gruppi di istruzioni devono essere eseguiti.

Il linguaggio macchina prevede solo due semplici meccanismi per governare il flusso di controllo delle istruzioni:<br>
l’elaborazione in sequenza e il salto. Tuttavia, i linguaggi ad alto livello hanno introdotto strutture di controllo astratte
come la selezione, l’iterazione e la ricorsione.
L’attuale tendenza è quella di fornire strutture di controllo iterative per dati astratti che sono collezioni omogenee di valori
(array, liste, etc.). La struttura di controllo ha due parametri, il dato astratto e la variabile alla quale assegnare un valore
contenuto nel dato astratto. Il dato astratto dispone di operazioni lecite per consentire l’iterazione sulla collezione di
oggetti. Ad esempio, java mette a disposizione l’astrazione di controllo for-each. Supponiamo di prendere come
collezione una LinkedList. L’operazione messa a disposizione di LinkedList per l’astrazione di controllo for-each è
iterator().
Es.
```java
LinkedList<Integer> list = new LinkedList<Integer>();
for (Integer n: list){
System.out.println(n);
}
```
Se guardiamo alle strutture di controllo come espressioni che, quando valutate, definiscono l’ordine in cui eseguire dei
comandi, possiamo specificare un’astrazione di controllo come segue:
control I(FP1; . . . ; FPn) is S

dove I è un identificatore di una nuova struttura di controllo, FP1; ... ; FPn sono parametri formali e S è una espressione
di controllo che definisce un ordine di esecuzione.
I più sofisticati costrutti di astrazione di controllo sono i meccanismi messi a disposizione dai più recenti linguaggi di
programmazione che consentono di catturare e gestire le eccezioni.

#### Astrazione di selettore
L’astrazione di selettore si applica alla classe sintattica “accesso ad un’area di memoria”, pertanto include il calcolo
dell’accesso ad una variabile.
Un linguaggio di programmazione dispone di costrutti per poter accedere ad una variabile.
Un esempio tipico di un costrutto per accedere ad una variabile (in questo caso strutturata) è l’indice nel vettore:
array[0], ci permettere di selezionare una porzione della variabile array.
Lo stesso identificatore (in questo caso chiamato selettore) può essere usato sia come nome di un valore (legame
dinamico fra identificatore e valore) e sia come un indirizzo (legame statico fra identificatore e locazione di memoria).<br>
Es:
```
type rec = record
a: real;
b: real;
end
var r:rec;
...
r.b := r.a*3
```
del campo a ci interessa il valore, mentre del campo b ci interessa l’indirizzo. Sia a che b sono detti selettori, in quanto ci
permettono di selezionare parte della struttura.
Un’astrazione di selettore può essere specificata come segue:

**selector I(FP1; . . . ; FPn) is A**

dove A è una espressione che restituisce un accesso ad una variabile (che denoteremo con &).
Nella natura dei linguaggi di programmazione questo non è sempre possibile, ad esempio, in Pascal il programmatore
non ha modo di definire un nuovo selettore, ma può utilizzare solo quelli predefiniti. Supponiamo, quindi, di estendere il
Pascal con le astrazioni di selezione: prendiamo come esempio un metodo first(d) che restituisce il primo elemento di
una sequenza d. L’invocazione di questa operazione potrà comparire solamente alla destra di un comando di
assegnamento, in quanto le funzioni restituiscono valori e non riferimenti ad aree di memoria.
Per poter scrivere una assegnazione del tipo first(d) := 0 dobbiamo poter definire un tipo di astrazione che restituisca il
riferimento ad un’area di memoria, quindi una astrazione di selettore.
Denoteremo nell’esempio seguente il riferimento ad un’area di memoria con & come in C.

Potremmo definire first come segue:
```pascal
type queue = record
elementi: array[1..max] of integer;
testa: 0;
end;
selector first(q:queue) is &(q.elementi[q.testa]);
```
Questo ci consentirebbe di scrivere espressioni del tipo first(q) = first(q) + 1;
In questo caso la chiamata di sinistra rappresenta l’astrazione di selettore e quella di destra l’astrazione di funzione,
perché la prima seleziona la locazione in cui vogliamo scrivere e la seconda invece restituisce un valore.

#### tecniche per astrazione dati
Le tecniche di programmazione a supporto dell’astrazione dati sono due:<br>
<ul>
    <li> Definizione di tipi astratti, cioè l’astrazione sulla classe          sintattica tipo</li>
    <li> Definizione di classi di oggetti, cioè l’astrazione sulla         dichiarazione di moduli dotati di stato locale.</li>
    </ul>
In entrambi i casi occorre poter incapsulare la rappresentazione del dato con le operazioni lecite. Tuttavia,<br>
<ul>    
    <li> <b>Tipo astratto T</b>: il modulo rende visibile all’utilizzatore sia un identificatore di tipo che degli operatori, i valori
sono associati a variabili dichiarate di tipo T.</li>
    <li> <b>Classe di oggetti C</b>: il modulo rende visibile all’utilizzatore solo gli operatori. I valori sono associati a oggetti
ottenuti per istanziazione della classe oggetti C.</li> 
</ul>

#### Astrazione di tipo
L’astrazione di tipo si applica alla classe sintattica “Definizione di un dato” ed include un gruppo di operatori che
definiscono implicitamente un insieme di valori.
Un’astrazione di tipo o tipo astratto di dato ha un corpo costituito da una espressione di tipo, un costrutto tramite il
quale un linguaggio di programmazione ci permette di definire un nuovo tipo.

Es.
```c
type Person = record
    name: packed array[1 ..20] of char;
    age: integer;
    height: real;
end
```
in questo caso si stabilisce esplicitamente una rappresentazione per i valori del tipo Person e implicitamente gli operatori
applicabili a valori di quel tipo, cioè non è possibile specificare altri operatori oltre a quelli generici (come
l’assegnazione).
Quando valutata, l’astrazione di tipo stabilisce sia una rappresentazione per un insieme di valori e sia le operazioni ad
essi applicabili.<br>
È specificata come segue:

**type I (FP1; . . . ; FPn) is T**

dove I è un identificatore del nuovo tipo, FP1; ... ; FPn sono parametri formali e T è una espressione di tipo che
specificherà la rappresentazione dei dati di tipo I e le operazioni ad esso applicabili.

#### Dall'Astrazione di tipo -> oggetti

l'astrazione di tipo ha molte limitazione, prendiamo per esempio:<br>
```c
struct complex { //:record in pascal
    int r;
    int i;
};
```
ci permette di stabilire che complex è un identificatore di tipo e di associare uan reppresentazione complex con le operazione associate ad esso sono di tipo record.<br>
Possiamo subito notare le limitazioni:<br>
<ul>
    <li><b>Operatori:</b> il programmatore non può definire nuovi operatori da associare al tipo</li>
    <li<b>Violazione requisito di protezione:</b>l'utilizzatore conosce la rappresentazione del tipo definito, quindi può operare mediante operatori non specifici del dato.</li>
    <li>L'astrazione di tipo <b>non è parametrizzata</b>: dunque la comunicazione con l'esterno non è ammesso(si intende che il tipo non può essere usaato con più tipi di dati, ovvero che è specifico e non si può creare una struttura generica in cui si potrà contenere vari oggetti di vario di tipo come quello citato)</li>
</ul>

Per superare questi limiti è necessario estendere il linguaggio. Partiamo con l’introduzione del concetto di modulo.
Il modulo è un costrutto di programmazione che consente di incapsulare sia la rappresentazione del dato sia le
operazioni lecite (Problema 1: il programmatore non può definire operatori specifici da associare al tipo). Introduciamo
dunque il costrutto module che permette di incapsulare sia la rappresentazione del dato che gli operatori leciti<br><br>

```c
module complessi
// dichiarazione di tipo
    "type" complex = record // pascal
    int r;
    int i;
    end;
    // dichiarazione di operazioni
    //...
end module
```
questa soluzione però va comunque a violare uno dei problemi che è il requisito di protezione, in quanto tutto è accessibile dall esterno senza un netta divisione tra ciò che deve rimanere d'uso privato e ciò che può essere pubblico:
introduzione di parti pubbliche (tutto ciò che è esportabile e in cui mettiamo tutte le dichiarazioni di tipo e i portotipi di funzione e procedure) e parti private (componenti non visibili dall esterno ed in cui mettiamo tutte le implementazioni). il programma che utilizza il modulo potrà accedere solamente alla parte pubblica.
    module complessi
        public
            ...
        private
            ...
    end module
la realizzazione del tipo complex e dei relativi operatori è ora nascosta all'utilizzatore del modulo. infatti la manipolazione del dato avverrà solo attraverso operatori appositi.<br>

Osservazione: l'insieme dei valori del tipo complex consiste di tutti i valori che possono essere generati dalle operazioni definite nel modulo, come ad esempio la creazione di un nuovo oggetto complex, la modifica di un oggetto complex esistente o l'applicazione di operazioni matematiche su oggetti complex.<br>

### Moduli con stato locale
Un modulo con stato locale è un modulo che mantiene uno stato interno, ovvero un insieme di variabili che mantengono un valore tra le chiamate delle funzioni o procedure del modulo. Questo stato interno può essere modificato dalle operazioni definite all'interno del modulo e può influire sul comportamento delle funzioni o procedure del modulo stesso. Un esempio di modulo con stato locale può essere un contatore che mantiene il numero di volte che una certa funzione è stata chiamata, oppure un generatore di numeri casuali che mantiene un seed per la generazione dei numeri casuali.
Il modulo con statoale può essere utilizzato per gestire lo stato di un programma in modo organizzato e per evitare di passare molteplici parametri tra le funzioni.<br>

Inoltre, un modulo con stato locale può essere utilizzato per implementare un design pattern come Singleton, che garantisce che una classe abbia solo un'istanza durante l'esecuzione del programma e fornisce un punto di accesso globale ad essa.<br>

Moduli con stato locale: i moduli descritti precedentemente contengono solo definizioni di tipi, procedure e funzioni non
hanno un proprio stato permanente. Le variabili definite nelle procedure e nelle funzioni del modulo hanno un tempo di
vita pari a quello dell’esecuzione della procedura o funzione che le contiene.
Si può estendere la definizione di modulo, consentendo anche la definizione di variabili esterne alle procedure e funzioni
che avranno un tempo di vita pari a quello dell’unità di programma che usa il modulo. Il modulo viene quindi dotato di
stato locale. Un modulo dotato di stato locale è chiamato oggetto
```c
module stack10real
    public
        procedure push(real);
        function pop(): real;
    private
        type stack = record
            st:array[1 ..10] of real;
            top: 0 .. 10;
        end;
        var s:stack;
        procedure push(elem:real)
        ...
        function pop(): real
        ...
end module
```
Il tempo di vita della variabile s è quello del modulo.
Si osserva che:
<ol>
<li> La definizione del tipo stack è ora privata. L’utente può solo usare l’oggetto stack10real e non può dichiarare
variabili di tipo stack nel programma che importa il modulo.</li>
<li> È possibile cambiare lo stato locale solo attraverso gli operatori push e pop che costituiscono l’interfaccia
dell’oggetto.</li>
<li> Il modulo può controllare l’ordine di accesso alla variabile nascosta per impedire l’estrazione dei dati prima che
la variabile venga avvalorata.</li>
</ol>


Un **oggetto** è un insieme di variabili interne ad un modulo e manipolabili esternamente solo mediante gli operatori
(pubblici) definiti nel modulo stesso.<br>
In questo modo si ha accesso ad un solo oggetto “stack di 10 valori reali”. Per poter dichiarare più di una variabile dello
stesso tipo del modulo, occorre duplicare il modulo cambiando l’identificatore della variabile, ad esempio stack10real2, in
modo da poter chiamare gli operatori senza ambiguità. Dunque, per poter definire più oggetti dello stesso tipo si è
costretti a definire tanti moduli quanti sono gli oggetti che si vogliono usare nel programma. Tutti questi moduli
differiranno solo per l’identificatore del modulo.<br><br>
**Classi di oggetti**: per evitare l’inconveniente di dover duplicare un modulo si può pensare di definire un modulo
generico che identifica una classe di oggetti simili. I singoli oggetti sono poi ottenuti con il meccanismo della
istanziazione della classe. Introduciamo il costrutto generic del Pascal.

```c
generic module stack10real
public
...
private
...
end module
```
una ipotetica istanziazione potrebbe essere ottenuta in questo modo:<br>
&emsp;&emsp;st1 istantiation of stack10real<br>
&emsp;&emsp;st2 istantiation of stack10real<br>

### Astrazione generica

In programmazione, l'astrazione generica è un concetto chiave che consente di creare codice riutilizzabile e flessibile. Consiste nell'utilizzo di parametri di tipo per creare classi o moduli che possono essere utilizzati con qualsiasi tipo di dati. Questo consente di scrivere codice generico che può essere utilizzato con diversi tipi di dati senza la necessità di duplicare il codice.
In Java, l'astrazione generica è supportata tramite l'uso di Generics, che consente di specificare i parametri di tipo per le classi e i metodi. Ciò consente di creare codice più flessibile e facile da mantenere, poiché il codice può essere utilizzato con qualsiasi tipo di dati senza la necessità di modificarlo.

La definizione di una classe corrisponde ad una particolare forma di astrazione, quella della classe sintattica
dichiarazione di un modulo. L’operazione di istanziazione corrisponde alla invocazione di questa astrazione ed ha
l’effetto di creare legami (binding). In particolare, si crea un legame fra l’identificatore dell’oggetto e il nome della classe
o modulo generico. Pertanto, la definizione di una classe corrisponde a una particolare forma di astrazione generica,
cioè di astrazione applicata alla classe sintattica dichiarazione.
Può essere specificata come segue

generic I (FP1; . . . ; FPn) is D

dove I è l’identificatore dell’astrazione, FP1, ..., FPn sono i parametri formali e D è una dichiarazione che, quando
elaborata, produrrà dei legami.
Si è visto l’utilizzo dell’astrazione generica nella dichiarazione di moduli dotati di stato locale. Infatti, l’astrazione generica
di un oggetto corrisponde al concetto di classe.
L’astrazione generica, mediante i parametri di tipo, è applicabile a tipi astratti che possono essere così ugualmente
svincolati dalla necessità di specificare il tipo degli elementi sui quali opera. In questo modo si evita di scrivere codice
duplicato, rendendo anche più semplice la manutenzione del programma.
In Java l’astrazione generica è supportata mediante le Generics.

### Tipo Astratto vs Classe di oggetti
Se in fase di progettazione si identifica l’esigenza di disporre di un dato astratto, in fase realizzativa si può:
• definire un oggetto: nel caso in cui si necessita di una sola occorrenza del dato astratto (utilizzato raramente);
<br><br>• definire un tipo astratto: l’astrazione riguarda la classe sintattica tipo;
<br>• definire una classe: l’astrazione riguarda la dichiarazione di un modulo dotato di stato locale.
In tutti i casi la rappresentazione del dato astratto viene nascosta e la manipolazione dei valori è resa possibile solo
mediante operazioni fornite allo scopo.
Tuttavia, ci sono delle differenze fra tipo astratto e classe di oggetti:

• Sintattica: i tipi astratti vogliono un parametro in più, relativo proprio al tipo che si sta definendo.<br><br>
• Realizzativa: nel caso del tipo astratto gli operatori sono definiti una sola volta, mentre nel caso della classe gli
operatori sono definiti più volte, tante quante sono le istanze. Le diverse copie degli operatori agiranno su
diversi dati in memoria centrale.<br><br>
• Concettuale: I tipi astratti sono costruiti intorno alle osservazioni, mentre le classi intorno ai costruttori. I tipi
astratti condividono tutti le stesse osservazioni, mentre ogni istanza di classe fa riferimento al suo costruttore e
le osservazioni diventano operazioni per manipolare ognuno il proprio dato, tramite la notazione puntata. I tipi
astratti sono un insieme di valori, con delle operazioni lecite sugli elementi. Le classi sono un insieme di
operazioni.

**Vantaggi del tipo astratto**: nei linguaggi imperativi, i valori di un tipo astratto vengono trattati similmente ai valori di un
tipo concreto, ovvero sono cittadini di prima classe. Al contrario, i valori rappresentati mediante oggetti sono trattati come
cittadini di terza classe.
I tipi astratti sono utili in tutti i paradigmi di programmazione, mentre gli oggetti, essendo variabili aggiornabili, si adattano
bene a un paradigma di programmazione side-effecting.<br><br>
**Svantaggi del tipo astratto**: scarsa estensibilità, in quanto l’aggiunta di un nuovo costruttore comporta dei cambiamenti
nelle implementazioni esistenti degli operatori. Diversamente, se realizziamo il dato astratto mediante classi basta
aggiungere un’altra classe.

### Differenze tra astr. di tipo e astr. generica

• **L’astrazione di tipo** da sola ha dei limiti per questo definiamo dei moduli che hanno stato locale (e quindi sono
oggetti). Possiamo astrarre sul modulo con l'astrazione generica e creare classi di oggetti. Gli dici i limiti
dell'astrazione di tipo, gli fai un esempio di astrazione di tipo e uno di classe e oggetto.<br>
• **Un tipo astratto** è un oggetto costruito intorno alle sue osservazioni, scritte una volta, salvate in un'area di
memoria, invocate all'occorrenza ed utilizzate sull'oggetto passato per parametro. Una astrazione generica è
una matrice che dà la possibilità di generare oggetti simili, costruiti intorno ai costruttori, ed ogni oggetto avrà
una copia delle operazioni lecite che manipoleranno l'oggetto stesso.
Un tipo astratto definisce un insieme, con delle operazioni lecite sugli elementi di tale insieme. Tramite
astrazione generica possiamo definire un insieme di operazioni, ognuna delle quali manipola l'oggetto a cui si
riferisce.

