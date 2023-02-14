### Obiettivo
Il livello di rete nella suite di protocolli TCP/IP ha l'obiettivo di fornire un meccanismo per l'invio e la ricezione dei pacchetti dati tra i diversi dispositivi di rete. In particolare, il livello di rete si occupa di stabilire e mantenere la connessione tra i dispositivi, indirizzare i pacchetti dati al dispositivo di destinazione e assicurare che i pacchetti dati raggiungano la destinazione corretta senza errori.<br>
è l'IP il protocollo più usato nella TCP/IP, che fornisce un meccanismo per la trasmissione di pacchetti dati su una rete. Il protocollo IP fornisce un meccanismo per la trasmissione di pacchetti dati su una rete di comunicazione e utilizza un sistema di indirizzamento per identificare gli host sulla rete.<br><br>
come obiettivo quindi:
<ul>
<li>Transporto di pacchetti da sorgente a destinazione</li>
<li>scelta del percorso più appropriato attraverso rooter intermedi</li>
</ul>
di seguito i servizi con cui la rete gestisce un messaggio frammentato:<br>
- Servizio di rete orientato alla connessione<br> 
- Servizio di rete senza connessioni<br><br>

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\LivellodiRete.png">

### La funzione di instradamento
(ogni router ha almeno due indirizzi ip [uno privato, ed uno pubblico])
un rete è modellabile come un grafo con nodi che rappresentano gli host ed elementi intermedi e legami che rappresentano le linee di comunicazione.<br><br>
la funzione di instradamento -> resp. di determinare il percorso seguito dai pacchetti dall'origine alla destinazione.<br>
la funzione di inoltro (forwarding) -> ha la responsibilità di trasferire pacchetti dall interfaccia di ingresso a quello di uscita. (sa anche a quale link in uscita inviarlo) in base alla convenienza manda pacchetti su un nodo rispetto ad un altro.<br><br>

### Routing Table
(tabelle di instradamento) il router comunica con gli altri al fine di costruire delle tabelle di instradamento di cui sono frutto di algoritmi che vedremo successivamente per vedere quale possibile percorso sia più conveniente, ovvero il "next hop" (il passo successivo), la routing table funziona nel seguente modo:<br>
piccola nota. vedremo che ci sono comunque per quanto riguarda i protocolli di routing i dinstance vector e a state link (principalmente).<br><br>

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\RouterTableEx.png">

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\RouterTable2Ex.png">

ogni tabella rappresenta esattamente dove un nodo può andare a "hoppare" ovvero a saltare ("next hop") verso il prossimo nodo, quindi per ex. nel nodo 1 si ha: per andare verso il nell immagine (1,3), per il 3 (1,3), per il 4 (1,3) in quanto è il nodo per cui il numero uno deve passare obbligatoriamente. (si supponga che per andare da un nodo all'altro il costo sia uguale per semplificazione) lo scambio effettivo avviene a livello datalink, che è appunto responsabile della gestione dei collegamenti fisici tra dispositivi su una rete, la tabella è in continuo aggiornamento sia per il fatto che il timeout scade sia perchè un link potrebbe non esistere più, quindi un nodo che era connesso a quel link che fa partire un trigger per l'aggiorno della tabella<br><br>

il problema da risolvere con un algoritmo di routine è quello di trovare il cammino minimo tra due nodi ovvero come abbiamo nominato varie volte il "next hop".<br><br>

inoltre superato quell esempio che era molto semplicistico andiamo a vedere appunto come in realtà vada considerato anche come metrica di prestazione e costo, la distanza, la lunghezza delle code, il ritardo medio di un pacchetto, la larghezza di banda del canale.<br>
quindi topologia -> percorso, traffico -> nodi più percorsi, ritardo maggiore.

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\NodiPeso.png">

di sopra vediamo come il numerello sopra i collegamenti indichi il peso(costo).<br>
chiaramente è facile notare come u possa passare per w tramite il collegamento diretto o prenda il nodo intermedio v, che comunque nella totalità avrà in tutti e due i casi un costo totale 5, mentre u -> x -> w ammonta a 4, quindi sarebbe più ottimale.<br>

### Classificazione e funzionamento degli algoritmi di routing
ci sono statici o dinamici; quello che noi vedremo sempre sono quelli dinamici (o adattivi) che sono quelli che per l'appunto variano in base ai cambiamenti di topologia e di traffico, questi sono anche per l'appunto quelli che vengono utilizzati ai giorni nostri.<br><br>

dal punto di vista di z sull immagine sopra riportata, lui non sa come arrivare a v o x, ma conosce solamente y e w, quindi si crea un problema ovvero che non abbiamo le informazioni necessarie sulla completa topologia della rete, quindi gli algoritmi non solo devono porsi il problema di costruirsi la tabella di routing ma anche di arrivare alla situazione in cui ho le informazioni necessarie per calcolarmele.<br><br>

un possibile esempio è mandare un pacchetto di richiesta delle informazioni su dove i nodi portano ai nodi disponibili. sicuramente scambiamo tutto quello che sappiamo con i nodi adiacenti e aggiornare i vettori distanza, ovvero per arrivare ad x quanto costa, e man mano viene aggiornato col tempo e completato. un altro modo è prima di tutto scambiare le informazione per ottenere tutte le informazioni sui percorsi e nodi e successivamente andare a effettuare scambi di pacchetti all interno della rete<br><br>

decentralizzato -> scambio e ricevo info, scambio e ricevo info fino a sapere e completare tutte le info (funziona quindi iterativamente)<br>
(più costoso)<br><br>

globale -> riceve in ingresso tutti i collegamento e costi direttamente<br> 

#### Algoritmo di vettore a distanza (Bellman-Ford)
(convergenza -> ci si riferisce alla capacità dell'algoritmo di routing di raggiungere uno stato in cui tutti i router sulla rete hanno la stessa tabella di routing.)<br><br>

L'algoritmo del vettore di distanza (Distance Vector) è un algoritmo di routing dinamico utilizzato per calcolare la distanza tra un router e una destinazione su una rete.

funziona nella maniera seguente:

<ol>
<li>Ogni router mantiene una tabella di routing che contiene informazioni sulla distanza verso ogni destinazione raggiungibile sulla rete. Inizialmente, ogni router conosce solo la distanza verso le destinazioni direttamente connesse alla propria interfaccia.</li>

<li>Periodicamente, ogni router scambia informazioni di routing con i suoi vicini diretti sulla rete. Durante questo scambio, ogni router condivide la propria tabella di routing con i suoi vicini e riceve le tabelle di routing dei suoi vicini.</li>

<li> Una volta ricevuta la tabella di routing di un vicino, il router utilizza l'algoritmo del Bellman-Ford per calcolare le distanze verso tutte le destinazioni. Questo algoritmo utilizza le informazioni ricevute dal vicino per calcolare la distanza attraverso quel vicino, sommando la distanza verso il vicino alla distanza del vicino verso la destinazione.</li>

<li> Dopo aver calcolato le distanze, il router confronta le informazioni ricevute dal vicino con le informazioni già presenti nella propria tabella di routing. Se il router trova un percorso più breve verso una destinazione, aggiorna la propria tabella di routing per utilizzare il nuovo percorso.</li>

<li> Questo processo di scambio di informazioni di routing e aggiornamento delle tabelle di routing continua in modo continuo, fino a quando tutti i router sulla rete hanno la stessa tabella di routing e quindi raggiungono la convergenza.</li> 
</ol>

L'algoritmo del vettore di distanza (Distance Vector) ha alcune limitazioni che possono causare problemi nella convergenza e nella stabilità della rete. Ecco alcune di queste limitazioni:
<ul>
<li>Problema del conteggio all'infinito: questo problema si verifica quando i router continuano a scambiarsi informazioni di routing che indicano un incremento delle distanze verso una destinazione. Ciò può accadere quando c'è un ciclo nella topologia della rete e i router non riescono a stabilire un percorso stabile verso la destinazione. Per risolvere questo problema, l'algoritmo del vettore di distanza utilizza un limite di conteggio, oltre il quale un percorso viene considerato non valido.</li>

<li>Oscillazioni del routing: questo problema si verifica quando i router continuano a cambiare il percorso verso una destinazione, causando un'oscillazione continua delle informazioni di routing. Ciò può accadere quando i router ricevono informazioni di routing contrastanti da diversi vicini. Per risolvere questo problema, l'algoritmo del vettore di distanza utilizza un meccanismo di stabilizzazione, come l'utilizzo di un timer di stabilizzazione per ignorare i cambiamenti di percorso temporanei.</li>

<li>Convergenza lenta: l'algoritmo del vettore di distanza richiede un certo periodo di tempo per convergenza, poiché i router devono continuare a scambiare informazioni di routing per stabilire un percorso stabile verso ogni destinazione. Ciò può causare problemi in reti di grandi dimensioni o in reti ad elevato traffico.</li>

<li>Limitazioni della scala: L'algoritmo del vettore di distanza può essere meno efficiente in grandi reti poiché richiede la trasmissione di informazioni di routing tra tutti i router sulla rete, il che può causare sovraccarico di traffico.</li>
</ul>

quindi il vettore distanza è essenzialmente un vettore che conosce ogni costo dei nodi adicenti.<br>

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\StatoIniziale.png">

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\CompTabDV.png">

nella immagine sopra riportata, abbiamo come per ogni iterazione da t0 a tx come la tabella del direct vector cambi nel tempo.<br>

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\AGGTab.png">

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\Final.png">

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\ProbCicliInf.png">

ciò esiste in quanto non viene con lo split horizon (la soluzione) per l'appunto fatto cessare l'aggiornamento di un determinato nodo di cui non ha conoscenze dirette sul collegamento. si crea comunque un problema del genere nel caso in cui è solo un nodo ad arrivare verso il nodo interrotto
se fossero due nodi si avrebbe che i due nodi aggiornino in maniera efficiente il resto in quanto sono comunque raggiungibili attraverso altri nodi, il problema si pone se è un nodo isolato, in quanto le informazioni prima "storate" dagli altri nodi vengono inviate a quelle dei nodi più vicini fino a tornare ad A, creando un loop infinito.<br><br>

Il Poisoned reverse è una tecnica utilizzata nei protocolli di routing per prevenire loop di routing in una rete. E' una variazione dell'algoritmo di Bellman-Ford.<br><br>

Ecco un esempio di come funziona:<br><br>

Immaginiamo una rete con tre router, A, B e C. Il router A ha una connessione diretta con B e C, e B e C sono connessi tra di loro. Inizialmente, il router A invia informazioni di routing a B e C, indicando che il miglior percorso per una determinata rete è attraverso A. Tuttavia, se B o C ricevono un percorso migliore per quella rete attraverso l'altro router, inviano un aggiornamento "avvelenato" al router A, indicando che il percorso attraverso di sé non è un percorso valido. Ciò impedisce al router A di inviare ulteriore traffico a B o C per quella rete, e impedisce la formazione di un loop.<br><br>

#### Algoritmo dello stato della connessione (link-state)
a differenza del algoritmo a distanza di vettore (bellman ford) qui andiamo a mandare un link state packet che contiene un po' più di informazioni, quindi all'inizio ogni nodo manderà le informazioni correnti di tutti i nodi adiacenti a sua conoscenza e chiediamo inoltre di inoltrarle (cosa che sul distance vector non succedeva in quanto c'era il ping pong dei pachetti). <br>
ogni pacchetto oltre ad avere il suo costo, avrà:<br>
<ul>
    <li>un ID del nodo che ha creato il LSP(link state packet)</li>
    <li>sequence number -- in quanto così sappiamo quale pacchetto è piu recente (ex. pacchetto 100 dice nodo 1-2 costo 10 -- pacchetto 101 dice nodo 1-2 costo 5, vogliamo l'informazione più aggiornata e quindi il pacchetto 101.)</li>
    <li>tempo di vita -- i pacchetti hanno anche di tempi di vita, ovvero dopo x tempo andrà a scadere. il tempo di vita ad ogni inoltro viene decrementato di x. questo perchè non vogliamo che vada inoltrato all infinito all'interno della rete ed inoltre vogliamo lasciare che le informazioni più recenti rimangano nella rete ad essere inoltrati.</li>
</ul>

quando non si ricevono più pacchetti aggiornati dalla rete, allora ci si ferma e si calcola la tabella di routing. (questo processo avviene periodicamente).<br><br>

Come calcola la tabella di routing:<br>
Algoritmo di Dijkstra (cal. cammino minimo):<br>

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\AlgoDiDijkstra.png">

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\DijkstraCont.png">

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\DijkstraExplained.png">

mettendoli a confronto sicuramente il link state è più sicuro non ha le stesse limitazioni e problemi, ma richiede più memoria con però una convergenza più rapida. mentre per l'appunto il distance vector converge più lentamente ma non richiede molta memoria.<br><br>

piccola parentesi:<br>
Il concetto di "intra-sistema autonomo" si riferisce a un sistema autonomo che è in grado di funzionare autonomamente all'interno di un sistema più grande.<br>
Il concetto di "inter-sistema autonomo" si riferisce invece a un sistema autonomo che è in grado di interagire e coordinarsi con altri sistemi autonomi.<br><br>

quindi dobbiamo gestire la routing table per tutti e due.<br>
Soluzione: suddivisione gerarchica dei router in regioni, anche detti sistemi autonomi;<br>
ed ogni routing table conterrà, ogni registrazione per ogni router dei sistemi autonomi ed una registrazione per almeno un router di frontiera.<br><br>

differenziamo i router all interno di un AS (automated system o sistema autonomo) ed i router coinvolti nella frontier avendo differenti protocolli.<br><br>
Interior gataway protocols -> all interno -> Rip(Routing Information Protocol, distance vector basato), OSPF(open shortest path first, basato sul link state)<br><br>

Exterior Gatawat Protocols -> di frontiera -> BGP (border gateway Protocol)<br><br>

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\SistemiOrg.png">

### IP - Internet Protocol
è best effort nel senso che non gli importa se il pacchetto arriva o meno alla destinazione, prende le informazioni lasciate dalla appunto routing table per arrivare in modo più "efficace" ad un determinato nodo vede a quale indirizzo ip corrisponde e lo manda facendo ammenda appunto a quello che già sappiamo dall'instradamento.<br>
Ogni datagram contiene indirizzo di partenza e dest. e può segure un percorso diverso (non orientato alla conn.), inoltre possono arrivare nell ordine sbagliato (per motivi come riaggiornamento di tabelle di routing, quindi poss. cambio di strada per via di costi diversi in base al traffico e a tutte le varie metriche), frammentazione, versione più diffusa IPV4 (indirizzo 32bit), recente IPV6 (indirizzo 128bit, sicurezza,...)<br><br>

Frammentazione: quantità massima di transporto a livello datalink che può trasportare quindi frammentazione dei datagrammi IP e ricostruzione una volta arrivati a destinazione;<br>
possono arrivare fino a 64kb i datagrammi IP.<br><br>

#### Formato del datagram IP
<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\FormatoDgIP.png">

Nodi e indirizzi IP:<br>
un'interfaccia di rete è il confine tra un nodo e il collegamento fisico<br>
Attraverso l'interfaccia di rete, il nodo può inviare e ricevere dati da e verso la rete. Inoltre, l'interfaccia di rete gestisce la comunicazione tra il nodo e la rete, utilizzando protocolli di rete come IP (Internet Protocol) o TCP (Transmission Control Protocol) per gestire la trasmissione dei pacchetti di dati e garantire che i dati vengano trasmessi in modo affidabile e sicuro.<br>
Ogni interfaccia di host e router ha un idirizzo ip;<br>
    - Un host, in genere, ha un unico indirizzo IP<br>
    -  I router hanno almeno due indirizzi ip (interno ed esterno?)<br>
l'indirizzo è formato da un prefisso e suffisso<br>
il prefisso identifica la rete (netid)<br>
il suffisso identifica l'host all'interno della rete (hostid)<br><br>

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\ClassiIndIP.png"><br><br>

per trovare l'indirizzo di rete, ha bisogno di mascherare i bit con l'and logico con la maschera di rete per trovare appunto i bit che fanno parte della rete rispetto a quello della parte host.<br><br>

la maschera di rete è in base alla classe di rete, ed è semplicemente i'indirizzo ip con la senzione dei prefissi (net) tutta ad uno.<br><br>

quindi annullerà letteralmente tutti i bit dell'host, lasciando quelli dedicati alla rete. questo processo viene effettuato dal router ogni volta che effettua un "and logico" per trovare l'indirizzo di rete e sapere a quale router mandarlo.<br><br>

broadcast = """"". """" . """"" . 255;<br>
2^8-2 indirizzi host-> 1 broadcast, 1 ind. di rete. a 0;<br><br>
quindi in base alle esigenze si andrà a modellare ed a cambiare l'indirizzo di rete/ip per x reti ecc., l'indirizzo di broadcast manda il messaggio a tutti gli indirizzi di rete.<br>

btw -> class A va da 1.0.0.0 a 126.0.0.0, class B va da 128.0.0.0 a 191.255.0.0 e class C va da 192.0.0.0 a 223.255.255.0.<br><br>

quindi per fare subnetting bisogna prendere in base a quante "subnets" si voglia fare, bisogna prendere dei bits di host e dedicarli per la creazione di nuovi indirizzi di rete che serviranno per l'appunto per creare nuove sottoreti.<br><br>

