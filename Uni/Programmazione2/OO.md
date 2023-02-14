### Introduzione
Sicuramente i più grandi difetti della programmazione imperativa, sono:<br>
<ul>
    <li><b>Variabili Globali</b> che sono accessibili da ogni parte del codice.</li>
    <li>l'ingestibilità dei grossi programmi, che incominciano ad essere molto difficili da mantenere</li>
</ul>
l'idea era di introdurre l'information hiding come rimedio:<br>
<ul>
    <li>in un modulo ogni variabile globale</li>
    <li>insieme a un gruppo di operazioni autorizzate ad accedervi</li>
    <li>accesso indiretto da parte degli altri moduli</li>
</ul>

anche nella programmazione imperativa è possibile definire degli oggetti, tuttavia
<ul>
    <li><b>utilizzo non forzato</b>: legato all'auto disciplina dei programmatori (in oo è obbligatorio l'implementazione di oggetti)</li>
    <li>gli oggetti non sono cittadini di <b>prima classe</b></li>
</ul>

oggetti diventano quindi -> cittadini di prima classe.<br>
inoltre gli oggetti hanno un ruolo fondamentale nella progettazione e programmazione.<br>

Classificazione di wagner: object based -> ha solo gli oggetti, class-based -> ogg. + classi, object oriented -> tutti i construtti della prog. a ogg.

gli oggetti sono composti (incapsulano) uno stato -> identificato dal contenuto di memoria ed il comportamento -> che è una collezione di procedure e funzioni dell'area di memoria associata all'oggetto.<br>
a livello di progetto, gli oggetti modellano le entità presenti nel dominio dell'applicazione.<br>

gli oggetti hanno una propria identità: un identificatore di oggetto univoco (OID).<br>
gli OID sono anche detti riferimenti. esso è immutabile, ovvero non può essere modificato da qualche opzione di programmazione, quindi cambiarlo porterebbe alla cancellazione di esso, inoltre sono assegnati in maniera automatica e corrisponde all'area di memoria che occuperanno.<br><br>
sono legate a delle variabili: quindi l'oid verrà assegnata ad una variabile e si farà l'accesso all'oggetto mediante esso. un oggetto può puntare ad un altro.<br>

### UML
un linguaggio visuale per definire, progettare, realizzare, documentare sistemi software orientati agli oggetti. è universale, quindi non ha diversi tipi di modi di rappresentare le cose in versioni differenti.
UML è di supporto per la progettazione di sistema, documentazione di uno già esistente.<br><br>

Ricapitolando:<br> **l'oggetto** si riassiume in identità -> oid, stato -> l'area di memoria del contenuto, comportamento -> l'ara di memoria assiociata alla collezione di procedure e funzioni, come detto in precedenza.<br>
**Classe** -> descrizione di un insieme di oggetti.<br><br>

#### Obbiettivi
<ul>
<li>Fornire all’utente un linguaggio di specifica espressivo,
visuale e di rapido utilizzo</li>
<li>Offrire meccanismi di estendibilità e di specializzazione
del linguaggio</li>
<li>Essere indipendente dai linguaggi di programmazione</li>
</ul>

<ul>
 <li>Produrre un SW migliore, permette di:</li>
    <ul>
        <li>astrarre e semplificare i progetti più complessi</li>
        <li>visualizzare un sistema (com’è o come lo si vorrebbe)</li>
        <li>specificare la struttura e il comportamento del sistema</li>
        <li>definire le linee guida per la costruzione di un sistema</li>
        <li>documentare le decisioni prese</li>
    </ul>
</ul>

#### Oggetti in UML
si intende con oggetto un instanza <- di classe.<br><br>
<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\UMLoggetti.png">

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\UMLoggetti2.png"><br>

#### Le Classi
Una classe è la descrizione di una famiglia di oggetti che condividono la stessa struttura (gli attributi) e il medesimo comportamento (operazioni). 

Nella programmazione OO ogni oggetto può essere ottenuto solo se si definisce la sua classe di appartenenza:<br>
&nbsp;&nbsp;&nbsp;&nbsp;• un oggetto è un’istanza di una classe

Nella modellazione OO le istanze esistono in quanto ci sono le loro astrazioni<br>
&nbsp;&nbsp;&nbsp;&nbsp;una classe è una realizzazione di un dato astratto<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-> i dettagli della realizzazione sono normalmente nascosti.<br>

Nelle classi si hanno due tipi di componenti:<br>
<ul>
    <li><b>Componente statica:</b> ovvero i campi o gli attributi dotati di un nome che contengono un valore. caratterizzano lo stato degli oggetti durante l'esecuzione.<br> <b>Attributi di istanza:</b> associati ad un istanza -> tempo di vita pari a quello dell istanza, quindi caratterizzano lo stato di ogni singolo oggetto.<br> <b>Attributi di classe:</b> il tempo di vita è lo stesso della classe, e vengono condivisi fra tutte le istanze, essenzialmente è la parte comune di stato fra tutti gli oggetti</li>
    <li>Componente dinamica: <b>metodi</b> o <b>operazioni</b> che rappresentano il <b>comportamento comune</b> degli oggetti appartenenti alla classe; ovvero i servizi che si possono richiedere a un oggetto di una classe e manipolano gli attributi.<br><br> <b>Metodi costruttori:</b> creano gli oggetti e li inizializzano<br> <b>Metodi di accesso:</b> restituiscono strazioni significative dello stato di un oggetto (restituisce un campo di un oggetto).<br> <b>Metodi di trasformazione:</b> modificano lo stato di un oggetto (il campo)<br><b>Metodi distruttori:</b> che rimuovono oggetti dalla memoria</li>
</ul>
Per i metodi di accesso e trasf.:<br>
Metodi di istanza -> operano su almeno un attributo di instanza.<br>
Metodi di classe -> operano solo su attributi di classe.<br><br>

#### Classi in UML 
<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\UMLclasse.png"><br>

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\UMLclasseatr.png"><br>

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\UMLclasseattrder.png"><br>

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\UMLoperazioni.png"><br>

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\UMLclassefinale.png">

in aggiunta come si vede nell'utima immagine per indicare le informazioni in maniera più accurata di una determinata operazione o elemento si possono utilizzare gli stereotipi, ovvero: << >> vanno intesi come della sottospecie di commenti che però vanno a dare solo un info aggiuntiva(una specificazione del significato semantico o del comportamento); ex <\<final\>> o <\<interface\>> ecc. <br><br>

Un elemento (attributo o metodo) ha visibilità:<br>
<ul>
<li><b>Pubblica:</b> se può essere visto (utilizzato, invocato) da altre classi -- <b>in uml +</b></li>
<li><b>Privata: </b> se può essere visto solo dalla classe di appartenenza --<b> in uml -</b></li>
<li><b>Protetta:</b>l’elemento è visibile all’interno del package e all’esterno solo ai discendenti della classe di appartenenza --<b> in uml #</b></li>
<li><b>Package:</b>l’elemento è visibile solo agli elementi del package che
contiene la classe in cui l’elemento è definito -- <b> in uml ~</b></li>
</ul>

La prima è solo una istanza di classe e viene chiamata singleton;<br>
La seconda è molteplici istanze ovvero in questo caso 3 stanze;<br>
<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\Moltclass.png"><br>

come si crea una singleton?<br>
nessun metodo invocherà il costruttore;<br>
rendendo privati appunto i costruttori;<br>
creando un metodo di classe che restituisce l'unica instanza memorizzata della classe.<br>
dotando la classe di un attributo statico che è inizializzato all'unico oggetto di quella classe<br><br>

molt. di attributo:<br>
<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\Moltattr.png">

In UML possiamo definire le proprietà degli attributi che vanno dichiarati dopo il tipo fra le {}, ci sono tre tipi di proprietà definite:<br>
<ul>
    <li><b>Changeable:</b> non vi sono restrizioni sulla modificabilità dell’attributo</li>
    <li><b>AddOnly:</b> i valori possono essere aggiunti, ma una volta creati, non
possono più essere rimossi o modificati</li>
    <li><b>Frozen:</b> il valore dell’attributo non può essere modificato dopo che
l’oggetto è stato inizializzato</li>
</ul>
di default abbiamo la changeable<br><br>

#### Distinzione Operazione vs Metodo UML
in **UML** la differenza fra operazione e metodo è la seguente:<br>
**L'Operazione** semplicemente va ad essere il servizio richiesto da un altra classe o da un oggetto ed è semplicemente la dichiarazione, che viene descritta nell'interfaccia della classe specificando nome, parametri e ritorno dell'operazione.<br>
Il **Metodo** invece è la implementazione concreta di esso (ovvero della operazione), quindi il metodo conterrà il codice che viene eseguito quando l'operazione viene richiamata, e descritta all interno della classe che la implementa.<br><br>

avrà la seguente forma:<br>
[direzione] nome : tipo [ = valore iniziale]<br>
in -> parametro input, non può essere modificato;<br>
out -> parametro output, può essere modificato per comunicare un'informazione al chiamante.<br>
inout, tutti e due combinati.<br><br>

UML fornisce diverse proprietà predefinite:<br>
<ul>
    <li><b>isQuery:</b> l’esecuzione dell’operazione lascia lo stato del sistema immutato, tale operazione è quindi priva di side-effect</li>
    <li><b>leaf:</b> operazione non può essere più specializzata (overriding) nelle sottoclassi (vedi final in Java)</li>
    <li><b>sequential:</b> i chiamanti (callers) di questo oggetto devono
coordinarsi affinché solo uno alla volta richieda il servizio.(single threaded)</li>
    <li><b>guarded:</b> simile al caso precedente, tuttavia la sequenzialità del servizio è gestita dalla classe proprietaria del servizio stesso
(vedi synchronized in Java)</li>
    <li><b>concurrent:</b> la semantica e l’integrità dell’oggetto è garantita anche in caso di chiamate multiple (multithreaded)</li>
</ul>

le ultime tre proprietà sono rilevanti solo in classe attive, ovvero classi che ha come istanze oggetti attive. Con oggetto attivo si intende oggetto che ha un thread e può far partire un thread concorrente.<br>
Viene rappresentata con i bordi raddopiati.<br>
<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\UMLoggettiAttivi.png"><br>

#### Classi Template
Definisce una famiglia di classi parametrizzate e corriponde ad una classe gnerica in java.<br>
come le classi generiche quando istanziata bisogna specificare il tipo, e non è possibile utilizzare direttamente una classe template.<br><br>

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\UMLtemplate.png"><br>

##### instanziazione di template
ci sono due modi di istanziare i template:<br>
<ul>
    <li>implicitamente, dichiarando una classe il cui nome esplicita i parametri (semplicemente dichiarandola in java)</li>
    <li>Esplicitamente,mediante una dipendenza stereotipata <<`bind`>>(usando magari il costruttore o un metodo apposito; senza le ')</li>
</ul>

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\instTempl.png"><br>

### Buona modellazione OO
consiste nello stabilire le responsabilità da attribuire a ciascuna classe individuata. <br>

ci sono due modi:<br>
<ul>
    <li>specificandole all'interno della classe:<br>
    <img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\RespClass.png"><br></li>
    <li>o utilizzando le note:<br>
    <img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\noteClass.png"><br></li>
</ul>

la specifica della responsabilità di una classe serve a definire cosa fa una classe (Sematica della classe)<br>
in alternativa di può utilizzare la specifica assiomatica o la specifica algebrica come commenti per la specifica della responsabilità.<br><br>

#### Classi (identificazione)
E' necessario seguire una metodologia ben definita quando andiamo appunto a sviluppare il sistema:<br>
inanzitutto, dobbiamo **identificare gli elementi** che gli utenti usano per descrivere il problema. ex. alunno, maestra, scuola.<br>
per ogni astrazione individuata, dobbiamo:<br>
- indentificare un insieme di responsabilità<br>
- garantendo un buon bilanciamento di responsabilità tra le classi<br>
Fornendo ad ogni ad ogni classe gli attributi e le operazioni per eseguire tali responsabilità.<br><br>

L'individuazione delle classi dipende dunque<br>
- dalla realtà che si vuole moddelare<br>
- dal giusto **bilanciamento dei compiti** da assegnare.<br><br>

#### stereotipi di classi
classificazione delle classi secondo i seguenti gruppi:<br>
<ul>
    <li>classi entità</li>
    <li>classi di confine</li>
    <li>classi di controllo</li>
</ul>

dividendo il sistema in tre componenti differenti:<br>
dominio, vista, controllo.<br><br>

##### Classi Entità
modella sia entità astratte (volo, esame,ecc.) sia entità concrete (cliente, ordine, ecc.) necessarie per eseguire compiti interni al sistema.<br><br>

• indipendenti dal contesto: non sono sensibili alle modalità con
cui il contesto comunica con il sistema<br>
• indipendenti dall’applicazione: possono essere riusate in
differenti applicazioni, che si basano sullo stesso dominio<br><br>

Un esempio di classe entità indipendente dal contesto potrebbe essere una classe "Cliente" che modella i dati di un cliente come nome, indirizzo, numero di telefono e indirizzo e-mail. Questa classe non dipende dal modo in cui il sistema comunica con il cliente, ad esempio se tramite un'interfaccia web o un'app mobile.<br><br>

Un esempio di classe entità indipendente dall'applicazione potrebbe essere una classe "Ordine" che modella i dati di un ordine, come l'elenco degli articoli ordinati, il prezzo totale e lo stato dell'ordine. Questa classe può essere utilizzata in diverse applicazioni, ad esempio un sistema di gestione degli ordini per un negozio online e un sistema di gestione degli ordini per un ristorante. In entrambi i casi, l'ordine è un'entità astratta che può essere modellata utilizzando la stessa classe.<br><br>

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\CLassEntità.png"><br>

##### Classi Confine 
Classi di confine: gestiscono la comunicazione fra i dintorni del sistema e l’interno del sistema<br>
• risultano quindi dipendenti dal contesto applicativo<br>
• Esempio: si rende necessaria un’altra classe denominata
AddACourseOffering che si occupi dell’inserimento di una nuova istanza di CourseOffering da parte dell’attoreProfessor<br><br>

Un esempio chiaro di classe di confine potrebbe essere una classe "InterfacciaUtente" che gestisce la comunicazione tra l'utente e il sistema, ad esempio la ricezione dei input dell'utente e la visualizzazione dei risultati.<br><br>

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\CLassConf.png">

##### Classi di controllo

Classi di controllo: coordinano gli eventi necessari a supportare la dinamica prevista in uno o più scenari di utilizzo del sistema software<br>
• sono tipicamente dipendenti dall’applicazione<br>
• Esempio: occorre una classe di controllo per gestire il
flusso degli eventi: ProfessorCourseManager <br><br>

Un esempio di classe di controllo potrebbe essere una classe "GestoreOrdini" che controlla il flusso di un ordine, ad esempio ricevendo una richiesta di ordine, verificando la disponibilità degli articoli e aggiornando lo stato dell'ordine.<br><br>

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\CLassCont.png">

##### La relazione instance-of
La relazione "instance of" in UML (Unified Modeling Language) indica che un oggetto appartiene a una determinata classe o tipo (istanza di classe). Questa relazione viene rappresentata come una freccia che punta dall'oggetto alla classe a cui appartiene, con una bandierina sulla punta della freccia. La relazione "instance of" mostra la gerarchia di classi e oggetti all'interno di un sistema e la relazione di tipo-istanza tra di essi.
<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\relazioneInstanceof.png">

#### Ereditarietà
una classe è considerata come un repertorio di conoscenze, a partire dal quale è possibile definire altre classi più specifiche(che app. completano la definizione).<br>
Quindi possiamo definire sottoclasse come una specializzazione della descrizione di una classe madre o detta anche superclasse. da cui essa mutua attributi e metodi.<br>
a livello fisico le duplicazioni sono evitate.<br>

##### Ereditarietà per estensione

Estensione -> introduzione di caratteristiche non presenti nella superclasse.<br>
Visibilità -> le caratteristiche ereditate non sono modificate

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\EreditarietàFExt.png"><br>

in questo esempio gli oggetti di rettangolo andranno ad ereditare color, move(), display();

quindi ciò permette di sviluppare codice estendibile.<br>

##### Ereditarietà per variazione funzionale

**Variazione funzione**:<br>
va essenzialmente a ridefinire alcune caratteristiche della superclasse quando quelle ereditate si rivelano inadeguate per l'insieme di oggetti descritti dalla sottoclasse.<br>
**Ovverriding**: riguarda solo l'implementazione e non la segnatura (nome e parametri), Ovverriding <-> ridefinizione di una o più caratteristiche.<br>
-> ogni richiesta del metodo ridefinito da parte di un nuovo ogetto, farà riferimento alla nuova implementazione fornita dalla sottoclasse.<br><br>

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\exVarafunz.png"><br>

nell'esempio sopra indicato l'oggetto che eredita contoCorrento ovvero: **"ContoCorrenteConFido"** ridefinisce quello della superclasse per controllare il prelievo non vada oltre il fido concesso. Quindi basta andare (in UML) a riscrivere la stessa funzione nell'oggetto che l'eredita per andare ad indicare che viene ovveriddata.<br><br>

siccome l'ovverriding va a ridefinire, se facciamo una modifica al metodo x dalla classe originale la classe che lo eredita non subirà le modifiche.<br>
anche per questi molti esperti ne sconsigliano l'uso<br><br>

bisogna mitigare il problema, le sottoclassi possibili di ContoCorrente, incrementano in OR logico le condizioni di prelevabilità previste per un generico conto corrente andando a ovviare il problema della effettiva sovrascrizione del metodo totale, utilizzando quindi prima le condizione di controllo della superclasse, con super(); e andando successivamente a leggere le condizioni successivamente implementate nella ridefinizione.<br><br>

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\exVarafunzF.png"><br>

##### Ereditarietà per restrizione
quando una sottoclasse soddisfa determinati vincoli che non sono necessariamente soddisfatti da instanze della superclasse.<br><br>

ex. in matematica: **il quadrato**<br>
    è un particolare caso di rettangolo nel quale i due lati
    hanno la medesima lunghezza.<br>
    -> **Vincolo** solo per la sottoclasse.<br><br>

ex:<br>
Il dato astratto Layout: rappresenta una astrazione della
impaginazione di un documento di una singola pagina. permette di rappresentare blocchi e di rappresentare una impaginazione.<br>
se abbiamo bisogno di un layout più ristretto andiamo a ereditare la classe layout creando una nuova classe "layout_ristretto" che appunto eredita layout, modficano alcuni metodi o attributi.<br><br>


#### Principio di Sostituibilità
in parole povere, possiamo descrivere il principio di sostituibilità, come il principio che ci permette di assegnare/utilizzare una sottoclasse della classe parente.<br>
facendo un esempio:<br>
Se una parte del codice utilizza un'istanza di "Animale" per emettere un suono, allora l'applicazione dovrebbe essere in grado di utilizzare sia un'istanza di "Gatto" che un'istanza di "Cane" senza conoscere la differenza, a patto che entrambe implementino correttamente il metodo "emettiSuono()".<br><br>

ed è compatibile con la 3 ereditarietà (ovvero per estenzione, variazione funzionale e restrizione) in quanto comunque le sottoclassi preservano la visibilità degli attributi e dei metodi garantendo che gli oggetti della sottoclasse offrano quanto meno gli stessi servizi della madre.<br><br>  


#### Ritorno alle Ereditarietà

##### Ereditarietà e relazione "is a"
nelle varie eredità che abbiamo visto precendentemente la relazione di ereditarietà fra classi corrisponde a una relazione di generalizzazione ("is_a").<br>
questo perchè ogni istanza di una classe derivata da una base va considerata come un instanza della classe base.<br><br>

##### Ereditarietà di implementazione (implementation inheritance)
è essenzialmente la capacità di una sottoclasse di ereditare l'implementazione di un metodo o di una proprietà di una classe padre.<br>
Andando a significare che la sottoclasse può utilizzare il codice esistente nella classe padre senza doverlo riscrivere, risparmiando tempo e aumentando la coerenza.<br><br>

Esempio:<br>
Supponiamo di avere le seguenti classi in un programma:<br>

```java
class Vettore {
  int[] vettore;
  int dimensione;

  public Vettore(int dimensione) {
    this.dimensione = dimensione;
    this.vettore = new int[dimensione];
  }

  public int getElemento(int index) {
    return vettore[index];
  }

  public void setElemento(int index, int valore) {
    vettore[index] = valore;
  }
}

class Pila extends Vettore {
  int top;

  public Pila(int dimensione) {
    super(dimensione);
    this.top = -1;
  }

  public void push(int valore) {
    top++;
    setElemento(top, valore);
  }

  public int pop() {
    int valore = getElemento(top);
    top--;
    return valore;
  }

  public int top() {
    return getElemento(top);
  }
}
```
In questo esempio, la classe "Pila" estende la classe "Vettore". Ciò significa che la classe "Pila" eredita tutti i membri della classe "Vettore", tra cui il costruttore, i metodi getElemento e setElemento. La classe "Pila" definisce anche i suoi metodi push, pop e top, che implementano la funzionalità di una pila.<br><br>

Supponiamo di creare un'istanza della classe "Pila" come segue:<br>

```java
Pila pila = new Pila(10);
```
In questo caso, la classe "Pila" sta utilizzando la realizzazione fornita dalla classe "Vettore" per rappresentare un vettore di dimensione 10. Inoltre, la classe "Pila" sta utilizzando i metodi setElemento e getElemento della classe "Vettore" per implementare i suoi metodi push, pop e top.<br>

L'ereditarietà qui è utilizzata per realizzare la classe "Pila" sulla base della classe "Vettore", ma l'interfaccia della classe "Vettore" non viene influenzata. Ad esempio, gli utenti che utilizzano la classe "Vettore" non vedranno i metodi push, pop e top, poiché questi sono specifici della classe "Pila".<br>
Quindi comporta modifiche alla visibilità delle caratteristiche ereditate.<br><br>
di seguito la rappresentazione in uml:<br>
<img title="erd. implementazione in uml" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\EreditarietàImpl.png">

non compatibile con il principio di sostituibilità, in quanto comporta modifiche alla visibilità delle caratteristiche ereditate.<br>

secondo alcuni dovrebbe essere bandita, tuttavia bertrand meyer sostiene che questa forma di ereditarietà, insieme a moltre altre incompatibili, sono indispensabili e teoricamente leggittime.<br><br>

In alternativa, l'ereditarietà di interfaccia, in cui una classe eredita solo l'interfaccia di un'altra classe senza ereditare la sua implementazione, è un modo più sicuro per garantire il principio di sostituibilità e la riutilizzabilità del codice.<br>

Ovviamente è possibile combinare varie tipi ereditarietà nella modellazione delle classi<br>

#### Proprietà della relazione di generalizzazione
La relazione di generalizzazione in programmazione orientata agli oggetti (OOP) definisce il rapporto di ereditarietà tra le classi, in cui una classe (figlia o sottoclasse) eredita le proprietà e comportamenti di un'altra classe (genitore o superclasse).<br>

Le proprietà della relazione di generalizzazione sono:<br><br>

È un grafo orientato e aciclico (DAG): la relazione di ereditarietà è rappresentata graficamente come un grafo orientato in cui le frecce puntano dalla classe figlia alla classe genitore. La relazione non deve avere cicli, ovvero una classe non deve ereditare da se stessa.<br>

È transitiva: se una classe B eredita da una classe A e una classe C eredita da B, allora C erediterà anche da A.<br>

È antisimmetrica: se una classe B eredita da una classe A, allora A non può ereditare da B.<br>

Dalla classe C, seguendo la direzione che porta al genitore, si possono trovare tutte le classi antenate (ancestor), chiamate anche superclassi di C.<br>

Seguendo la direzione opposta si possono trovare tutte le classi discendenti (descendant) di C.<br>

<img title="erd. implementazione in uml" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\grafoEr.png"><br>

ricordare che una classe foglia è una classe che non ha ulteriori classi che ereditano da essa.<br>

### Ereditarietà multipla

Una classe può avere più **superclassi**.<br>
<img title="erd. implementazione in uml" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\EreditarietàMltp.png"><br>

introducendo ciò si andà a notare come il grafo non sia più una catena ma bensì un **grafo aciclico orientato**.<br>
L'**ordine** fra le classi in G(C) è parziale.<br><br>
Che l'ordine delle classi in un grafo di ereditarietà è parziale significa che non esiste un ordine univoco per le classi nel grafo. In altre parole, non c'è un modo univoco per stabilire quale classe è superiore o inferiore rispetto alle altre.<br>

Il grafo di ereditarietà rappresenta la gerarchia di ereditarietà tra le classi e l'ordine parziale indica che non è possibile stabilire un ordine preciso per le classi all'interno del grafo. Questo rende complesso stabilire una relazione precisa tra le classi nella gerarchia.<br>

Nell'ereditarietà multipla, un metodo può essere ereditato da più classi. Il problema sorge quando due classi diverse contengono la stessa definizione di un metodo ereditato dalla classe principale.<br><br>

Per risolvere questo problema, si considera una qualsiasi linearizzazione del grafo di ereditarietà della classe principale (C1).<br> 
<img title="erd. implementazione in uml" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\ERmultEx.png"><br>
Ad esempio, nel caso descritto, la linearizzazione potrebbe essere A → B → C → D o A → C → B → D.<br><br>

In entrambi i casi, B precede D e il metodo m è ereditato da B. La definizione del metodo m in B è quella più specifica e maschera quella omonima in D. Questo significa che se si chiama il metodo m su un'istanza di A, verrà utilizzato il metodo m definito in B.<br><br>

In questo modo, la linearizzazione del grafo di ereditarietà fornisce un ordine preciso per le classi nella gerarchia di ereditarietà multipla, evitando eventuali conflitti nella definizione dei metodi ereditati.<br><br>

il metodo "m" viene ereditato da una classe C2 che si trova nella gerarchia delle classi G(C1), dove C1 è la classe di partenza. In caso di conflitti tra le diverse definizioni di m, possono essere utilizzati criteri euristici come la molteplicità dell'ereditarietà e la modularità, che tuttavia non sono universalmente accettati. L'ereditarietà multipla è spesso sconsigliata. In caso di conflitto tra due linearizzazioni del grafo G(C1), non esiste un modo univoco per scegliere da quale classe ereditare il metodo m.<br><br>

Il problema in questo caso è che l'ereditarietà multipla può portare a comportamenti imprevisti o ambigui nell'applicazione del metodo m. Ciò può verificarsi quando diverse classi ereditano un metodo con lo stesso nome, ma con implementazioni diverse. Questo può rendere difficile comprendere e prevedere il comportamento del metodo, soprattutto in situazioni complesse con molte classi e molteplici livelli di ereditarietà. Per questo motivo, l'ereditarietà multipla viene spesso sconsigliata.<br>

#### Ereditarietà: visibilità protetta
La relazione di ereditarietà introduce un ulteriore livello di 
visibilità: quella protetta (protected)<br>
• Una caratteristica (attributo o metodo) può essere vista solo tutte le 
classi del package e dalle classi discendenti (anche in altri 
package)<br><br>

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\ExErProtetta.png"><br><br>

### Classe Astratta
Una classe astratta è una classe di base in programmazione orientata agli oggetti che viene utilizzata per definire una gerarchia di classi. Non può essere istanziata direttamente, ma solo estesa da altre classi. Una classe astratta definisce i metodi che dovranno essere implementati dalle classi figlie, ma non fornisce una implementazione concreta per questi metodi. Ciò significa che le classi che ereditano da una classe astratta sono obbligate a fornire un'implementazione concreta per i metodi astratti della classe genitore. Le classi astratte sono utilizzate per fornire una struttura comune per un insieme di classi simili e per garantire che tutte le classi figlie implementino i metodi richiesti.<br>

Notazione in UML:<br>
<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\ClassiAstratteUML.png"><br><br>

servono principalmente per "mettere assieme" proprietà comuni fra classi simili, organizzandole gerarchicamente.<br>
Possiamo dare una **radice comune** a un insieme di classi che condividono le stesse proprietà per sfruttarle. (polimorfismo di inclusione (principio di sostituibilità), binding dinamico).<br><br>

### Classi finali
Le classi finali in programmazione orientata agli oggetti sono classi che non possono essere ereditate o estese da altre classi. Questo significa che non è possibile creare una nuova classe che estenda una classe finale.

Le classi finali sono spesso utilizzate per garantire che la logica all'interno della classe non venga modificata o sovrascritta accidentalmente. In questo modo, il comportamento della classe rimane coerente e prevedibile.

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\ClassiFogliaGerarchia.png"><br><br>

### Interfaccie
Le interfacce in programmazione orientata agli oggetti sono uno strumento per definire un contratto, ovvero un insieme di regole che devono essere rispettate da una classe che vuole implementare l'interfaccia.<br><br>

Le interfacce possono contenere solo firme di metodi, ovvero la dichiarazione del nome, dei parametri e del tipo di ritorno dei metodi senza alcuna implementazione. Questo permette di definire un comportamento standard per un certo tipo di oggetti, senza specificare come questi debbano implementare tale comportamento.<br><br>

Le classi che implementano un'interfaccia sono obbligate a definire tutti i metodi dell'interfaccia, e possono essere utilizzate in modo intercambiabile con altre classi che implementano la stessa interfaccia, indipendentemente dalla loro implementazione specifica.<br><br>

### Relazione di realizzazione
La relazione di realizzazione (nota anche come "implementazione") in programmazione orientata agli oggetti è una relazione tra un'interfaccia e una classe che la implementa.<br><br>

In questa relazione, la classe è obbligata a definire tutti i metodi dichiarati nell'interfaccia, fornendo così una implementazione concreta del comportamento definito dall'interfaccia. Ciò significa che la classe implementa tutte le regole definite nell'interfaccia e può essere utilizzata ovunque sia richiesta un'implementazione dell'interfaccia.<br><br>

La relazione di realizzazione è utile per creare un'astrazione tra l'interfaccia e le sue implementazioni concrete. Ciò significa che il codice che utilizza un'interfaccia può essere scritto in modo indipendente dalle implementazioni concrete, e che queste possono essere sostituite o modificate senza influire sul codice che utilizza l'interfaccia.<br><br>


<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\relazioneDiRea.png"><br><br>

ex:<br>
l’interfaccia java.lang.Comparable specifica una sola operazione<br>
```java
public int compareTo(Object o)
```
• Input: un oggetto generico Object come argomento<br>
• Output: un valore negativo se l'argomento è più piccolo dell'oggetto
corrente, zero se è uguale e un valore positivo se è maggiore<br>

una qualunque classe che lo implementa deve fornire una implementazione per compareTo.<br>

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\relazioneDiReaUML.png"><br><br>

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\InterfaceErInterface.png"><br><br>

^<br>
In java ciò non è permesso sulle classi ma la permettono sulle interfacce.

### Realizzazione di più interfaccie

è permesso a una classe di relaizzare più interfaccie, andando ad ampliare il range di operazioni possbili dai contratti.<br><br>

ex:<br>
<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\ClassImplMultinterface.png"><br><br>

#### Realizzazioni multiple di una interfaccia

Più di esse (classi) possono implementare la stessa interfaccia

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\Classtointerface.png"><br><br>

### metaclassi
in alcuni modelli object oriented le classi a loro volta sono degli oggetti ottenuti per istanziazione di una meta classe<br>
Una metaclasse è una classe che definisce la classe stessa. In altre parole, una metaclasse è una classe che fornisce un modello per la creazione di altre classi. In alcuni linguaggi di programmazione, come Python, ogni classe ha una metaclasse, che viene utilizzata per definire le proprietà e i comportamenti delle classi create a partire da quella metaclasse.<br><br>

La metaclasse può essere utilizzata per modificare la creazione di classi, ad esempio per modificare le proprietà di una classe o per fornire funzionalità specifiche a una classe. In questo modo, le metaclassi possono essere utilizzate per creare architetture software più flessibili e modificabili, e per creare classi personalizzate con comportamenti specifici.<br>
**Metaclassi**: classi che definiscono la struttura di altre classi.<br><br>

le metaclassi sono utili per flessibilità, ovvero se si vuole modificare dei valori predefiniti che essa possiede ed applicarla su tutte le classi di cui ne fanno parte:<br><br>

```py
class GeometricObjectMeta(type):
    def __init__(cls, name, bases, attrs):
        attrs['sides'] = None
        attrs['right_angles'] = None

class GeometricObject(metaclass=GeometricObjectMeta):
    pass

class Triangle(GeometricObject):
    def __init__(self):
        self.sides = 3
        self.right_angles = 0

class Rectangle(GeometricObject):
    def __init__(self):
        self.sides = 4
        self.right_angles = 4

>>> t = Triangle()
>>> t.sides
3
>>> t.right_angles
0

>>> r = Rectangle()
>>> r.sides
4
>>> r.right_angles
4
```

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\metaclassi.png"><br><br>

in **java** il modello è differente:<br>

• Tutte le classi ereditano da Object.<br>
• Object dispone di un metodo getClass() che permette di restituire
per ogni oggetto una istanza della classe Class<br>
• Class descrive la classe di appartenza dell’oggetto<br>
• Class è detta metaclasse, ma SOLO per analogia con Smalltalk<br>
• Tuttavia non è una metaclasse in senso stretto<br>
• I suoi oggetti non sono classi, ma descrivono delle class<br><br>

questo modello supporta il meccanismo di riflessione. (permette a un oggetto di stabilire al run time la sua classe di appartenenza.<br><br>
la stessa classe class include metodi per scoprire:<br>
il nome;<br>
la superclasse;<br>
i metodi;<br>
gli attributi;<br>
quindi ci sono anche dei oggetti per rappresentare i metodi e i campi. class, method e field sono sottoclassi di object.<br><br>

### Aggregrazione
l'Ereditarietà non è sempre adeguata a costruire oggetti.<br>

non si può utilizzare invece l'ereditarietà multipla nel seguente esempio, in quanto con l'ereditarietà multipla l'oggetto per esempio automobile potrebbe definire due oggetti per fusione, mentre con l'aggregazione è possibile raggruppare tutti gli oggetti per esempio di un automobile.<br><br>

L'aggregazione è una relazione di composizione tra oggetti in un sistema orientato agli oggetti. La composizione rappresenta un'associazione tra oggetti in cui un oggetto è parte integrante di un altro oggetto.<br><br>

Ad esempio, in un sistema che modella un'auto, potremmo avere una classe "Auto" e una classe "Ruota". Un'auto può essere composta da quattro ruote, e ogni ruota fa parte integrante dell'auto. In questo caso, abbiamo una relazione di aggregazione tra la classe "Auto" e la classe "Ruota".<br><br>

L'aggregazione può essere rappresentata graficamente come un romboidale vuoto che punta verso l'oggetto più grande, ad esempio l'auto. Questo simboleggia che l'oggetto aggregato (in questo caso la ruota) è parte integrante dell'oggetto più grande (l'auto), ma esiste anche come oggetto indipendente.<br><br>

Nell'implementazione di un sistema orientato agli oggetti, l'aggregazione può essere implementata tramite una relazione di contenimento tra gli oggetti, in cui un oggetto contiene un'istanza di un altro oggetto. Questa relazione può essere implementata come una proprietà di una classe o come una relazione di tipo "ha un" tra due classi.<br><br>

**Aggregazione di oggetti**: rappresentata con variabili di
istanza che puntano a oggetti di altre classi<br><br>
infatti si era detto che:<br>
“lo stato di un oggetto può anche contenere il riferimento ad unaltro oggetto. Si dice che un oggetto punta ad un altro. Il puntamento è asimmetrico.”<br>

la relazione di aggregrazione è di tipo "**has_a**" ovvero che una classe A è in relazione di aggregrazione con una classe B solo se, alcune instanze di B contribuiscono a formare parte delle instanze di A.<br>

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\AggrUML.png"><br><br>

i casi in cui si vuole usarlo sono i seguenti:<br>
<ol>
  <li><b>Contenimento fisico</b>: la pagina di un libro.</li>
  <li><b>Appartenenza</b>: il giocatore di una squadra di calcio</li>
  <li><b>Composizione funzionale</b>: le ruote di un’automobile.</li>
</ol>

l'aggregazione non implica una dipendenza esistenziale -> un automobile può essere distrutta ma alcune sue parti possono essere riutilizzate.<br><br>

le aggregazioni sono associazioni deboli (le parti possono esistere senza l'intero, la messa assieme)
mentre la composizione è una associazione forte fra parti e intero<br>
comporta una dipendenza esistenziale: le parti non esistono senza il contenitore<br>
-> creazione e distruzione delle parti<br>
-> i componenti non siano parti di altri oggetti<br><br>

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\UMLCompo.png"><br><br>

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\CompPunto.png"><br><br>

### Package -> meccanismo per raggr. classi

in quanto con un sistema di alta complessità, si avrà un alto numero di classi, con i package possiamo raggurappare/organizzare tutte le **classi in gruppi**.<br>
Questo comporta l'accesso alle classi, e l'individuazione di esse più facile.<br><br>

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\UMLpackage.png"><br><br>

un package definisce un namespace (spazio di identificatori) per i suoi elementi.<br>
nome package :: nome classe<br><br>

Elementi della stessa specie all'interno di un package devono avere *necessariamente nomi differenti* ma con due elementi di tipo differente è possibile avere nomi uguali.<br><br>

i package possono essere innestati senza alcun limite di profondità;<br>
(usare con moderazione)<br>
ha accesso a tutti gli elementi contenuti direttamente nei package
esterni (a qualunque livello di annidamento)<br>
senza necessità di importazione<br><br>

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\RelazioneImport.png"><br><br>

i package possono ereditare da altri package usando la relazione di generalizzazione, andando a ereditare gli elementi public e protected del package in questione.<br><br>

### Classi interne

In UML (Unified Modeling Language), una classe interna è una classe che è definita all'interno di un'altra classe. Questo è utile per creare relazioni più strettamente associate tra le classi. Una classe interna può accedere a tutte le variabili e i metodi della classe esterna, e può essere utilizzata solo all'interno di quest'ultima. In UML, le classi interne sono rappresentate come classi contenute all'interno di una classe più grande.

UML non ha una notazione standard per le classi interne, tuttavia allen holub suggerisce la seguente notazione:<br><br>

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\outerinnerclass.png"><br><br>

### Polimorfismo

il polimorfismo consente di definire un comportamento comune per diverse classi o tipi di dati, rendendo il codice più flessibile e mantenibile.<br><br>

Universale (parametrico o di inclusione)<br>
  • opera su un numero potenzialmente illimitato di tipi<br>
  • morfismi generati automaticamente<br>
  • base comune a tutti i diversi morfismi che può assumere l’entità polimorfa<br><br>
Ad hoc (overloading o coercizione)<br>
  • opera su un numero finito di tipi, spesso pochissimi<br>
  • morfismi generati in modo manuale o semi-manuale<br>
  • nessuna base comune a tutti i morfismi<br>
  • al di là delle intenzioni del progettista: è un caso, non la regola<br>

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\Polimorfismo.png"><br><br>

#### Coercizione

Meccanismo di conversione implicita applicato dal compliatore per usare oggetti di tipo t1 con oggetti di tipo t2.<br>

ex:<br>
3.14 + 5<br>
• + è definito per valori reali<br>
• ma lo si può usare su un insieme di tipi più grande di quello per il
quale è stato definito<br>
• Senza coercizione -> errore di tipo<br>

in java -> autoboxing di un int in integer e viceversa (int è un dato primitivo mentre integer è una classe).<br><br>

è la forma di polimorfismo più semplice.<br>
opera a un livello semantico, cioè cambiano la rappresentazione del dato.<br><br>

#### Overloading
Con l'overloading dei metodi, più metodi possono avere lo stesso nome con parametri diversi:<br><br>

Esempio:<br>
int mioMetodo(int x)<br>
float mioMetodo(float x)<br>
double mioMetodo(double x, double y)<br><br>

la disambiguazione dell'identificatore del metodo avviene basandosi sul tipo degli argomenti o sulla classe dell oggetto a cui si richiede il servizio.<br>

avviene anche una pre-compilazione del programma;<br>
andando a eliminare l'overloading dando nomi differenti a metodi differenti.<br><br>

L'overloading è presente nella maggior parte dei linguaggio (anche imperativi)<br>
-> ex. operatori aritmetici: "+" "-" ecc. applicabili a più di un tipo.<br><br>

ex. "+" in pascal -> a 2 interi fa la add fra floating point, mentre a 2 numeri reali genera una istruzione add fra floating point.<br><br>

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\OverloadingFunc.png"><br><br>

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\OverloadingClass.png"><br><br>

#### Parametrico

essenzialmente una funzione polimorfa, ovvero che determina il tipo dell'argomento per ciascuna applicazione della funzione, viene anche chiamata funzione generica in c++ ecc. template.<br><br>

essa può lavorare su argomenti di molti tipi, avendo lo stesso comportamento indifferentemente dall'argomento.<br>
ex.<br>
/*funzione che calcola la lunghezza di una lista 
qualunque*/<br>
length(x)= if (x=nil) then 0 else (1+length(tail(x)))<br><br>

#### di inclusione
Il polimorfismo di inclusione, chiamato anche sottotipizzazione Il polimorfismo di inclusione è la capacità di utilizzare classi derivate attraverso puntatori e riferimenti alla classe base. È noto anche come polimorfismo a tempo di esecuzione, perché l'indirizzo della funzione non viene individuato dal compilatore a tempo di compilazione, ma il puntatore giusto della tabella virtuale viene dereferenziato per invocare la funzione a tempo di esecuzione. Il concetto di funzione virtuale, noto anche come collegamento dinamico, viene utilizzato per ottenere il polimorfismo di inclusione. L'uso della funzione virtuale consente di selezionare la funzione da invocare in base al tipo di oggetto per cui viene chiamata. Ad esempio: Per implementare questa tecnica di polimorfismo, prendiamo in considerazione diversi file come i file .jpg, .gif, .png. Tutti questi file rientrano nella categoria dei file immagine.<br><br>

L’utilizzo più interessante: le invocazioni dei metodi su oggetti di classi diverse (ma gerarchicamente correlate):<br>
è possibile invocare il medesimo metodo su oggetti di classi diverse, e ottenere un comportamento specifico per ogni classe, anche se la definizione del metodo è unica.<br>
ciò dipende dal tipo di legame statico/dinamico fra identificatore di funzione e relativa realizzazione.<br><br>

Con il legame dinamico, la decisione sul metodo da invocare viene presa in base alla classe effettiva dell'oggetto durante l'esecuzione del programma, permettendo una maggiore flessibilità e adattabilità a situazioni in cui la classe dell'oggetto può cambiare durante l'esecuzione del codice.<br><br>

Con il legame statico, la decisione sul metodo da invocare viene presa durante la compilazione del codice, in base alla classe dell'oggetto e alla definizione del metodo. Questo può rendere il codice più efficiente, ma limita la flessibilità nelle situazioni in cui la classe dell'oggetto può cambiare durante l'esecuzione del codice.<br><br>

Programmazione orientata a oggetti: il legame fra nome di funzione e sua realizzazione può essere determinato al run-time<br>
<pre>
Si consideri il seguente esempio (in C++):
class A { 
  public void f(){cout << ’A’} 
  … 
}
class B : public A { 
  public void f(){cout << ’B’} // overriding 
  … 
}
class Tester{
  public void someF(A a){ a.f()..}
  …
}
  
obj1 = new B();
obj2 = new Tester();
obj2.someF(obk1);
</pre>
In C++, l'overriding consente di definire un metodo con lo stesso nome in una classe derivata che eredita da una classe base. Quando si invoca il metodo su un'istanza della classe derivata, viene eseguito il codice del metodo nella classe derivata, anziché quello nella classe base. Questo perché il comportamento del metodo viene risolto in modo dinamico al run-time, basato sul tipo effettivo dell'oggetto, non sul tipo dichiarato del parametro o della variabile. In questo caso, l'oggetto "obj1" è un'istanza della classe B, quindi la funzione "f" di B viene eseguita durante la chiamata "someF".<br>
mentre con il binding statico avremmo avuto il risultato della funzione f di A.<br><br>

C++ è un esempio di linguaggio dove la tipizzazione è
statica, ma il legame può essere dinamico (statically-typed dynamic binding)<br>
• N.B.: Il legame di riferisce a nome di funzione – sua realizzazione<br>
• Lo stesso dicasi per il Java. Ma in questo linguaggio, il
legame dinamico è la regola, non l’eccezione<br>
• solo nei metodi final/static il legame nome di funzione – sua
realizzazione diventa statico<br>

### Qualità del software
<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\Q1.png">

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Programmazione2\Q2.png"><br><br>