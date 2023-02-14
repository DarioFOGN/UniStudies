### Introduzione
Offrire un canale di comunicazione LOGICA tra una coppia di processi(comunicazione end-to-end)<br><br>
<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\RetiTransporto.png">

i protocolli sono come già visto UDP e TCP.<br>
UDP:<br>
Servizio senza connessione (a datagramma)<br>
multiplazione/demultiplazione: indirizzamento dei processi.<br>
TCP:<br>
orientato alla connessione(flusso di byte)<br>
decomposizione in pacchetti<br>
multiplazione/demultiplazione: indirizzamento dei processi.<br>

la seguente è la struttura del pacchetto con la porta di sorgente e la
porta di destinazione.<br><br>
<img title="Segment Structure" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\SegmentStructure.png"><br><br>

inoltre gestisce anche come inviare i pacchetti in modo efficente e performante.<br> 

come vengono l'indirizzamento delle porte; ogni instanza su un determinato computer avrà la propria source port indipendentemente dal fatto che proviene dal  <br> 
<img title="Segment Structure" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\DnsCoppie.png"><br><br>

UDP - user datagram protocol<br>
<ol>
  <li>Fornisce un servizio punto a punto senza connessione</li>  
  <li>Spedizione di datagrammi con lunghezza maassima definita dal datagram IP</li>
  <li>Indirizzi dei processi basati sul numero di porta</li>
  <li>Controllo degli errori basato sul checksum</li>
  <li>Non fornisce conferma di ricezione dei messaggi</li>
  <li>Nessun controllo del flusso sul mittente</li>
  <li>usato da SNMP, e da applicazioni basate su semplici servizi richiesta e risposta</li>
</ol>

<img title="Segment Structure" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\UDPSegmentStr.png"><br><br>

TCP - Transmission Control Protocol<br>
<ol>
    <li>Connessione punto a punto</li>
    <li>Comunicazione full duplex -- scambio di dati in entrambi le direzioni</li>
    <li>Orientato alla connessione -- un processo richiede una connessione a un altro processo e poi usa la connessione per il trasf. dati </li>
    <li>Trasferimento affidabile -- garanzia che i dati arrivano senza errori</li>
    <li>Controllo di congestione -- previene che un eccesso di dati venga immesso nella rete</li>
</ol>

<img title="Segment Structure" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\MessPilaproto.png"><br><br>

per il tcp il flusso di byte viene è strutturato in vari "segmenti" di lunghrzza accettabile per il livello sottostante (IP max 64kb) e poi riassembla i segmenti nella sequenza corretta. Quindi di un file andremo a suddividerlo per segmenti così da sottostare alla lunghezza accettabile dell IP, questi segmenti chiaramente verrano numerati e ordinati<br>

<pre>
                    FILE
______________________|_________________________________<br>
                                                       |<br>
data 1st segmento  data 2nd segmento     //<br>
---------------    --------------       ----  -------<br>
0 - 999             1000 - 1999         //    499999 |<br>
---------------------------------------------------</pre>
<br><br>

quindi verrano appunto mandati uno ad uno passando per i vari livelli al livello di transporto del ricevitore nel buffer (di ricezione), esiste un algoritmo chiamato di finestra scorrevole che ogni volta che il ricevitore, riceve i pacchetti lui manda indietro un ack ed inoltre va a avvisare quanto spazio libero ha ancora disponibile. inffati nel segmento tcp si ha un sacco di informazio tra le quali la finestra di ricezione.<br><br>

<img title="Segment send" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\TCPReciveBuff.png"><br><br>

<img title="Segment Structure" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\TcpSegmentidetail.png"><br><br>

il numero di porta di origine e destinazione sono chiaramente resp. per il multiplexing e demultiplexing ovvero per l'indirizzamento dei dati/segmenti tcp/ip.<br><br>

numero di sequenza -> numero del segmento di riferimento (ID)<br>
numero di acknowledgment -> conferma di ricezione(fino ad un certo punto)<br>
head lenght -> lunghezza dell header (intestazione) utile per determinare quando inizia il payload(il contenuto vero e proprio)<br>
non usato -> in caso ci siano nuove definizioni o nuove modifiche senza che appunto si stravolga il formato complessivo.<br>
Finestra di ricezione -> quanto è disp. il buffer destinatario.<br>
FLAGS -> bits di fla<br>
<ul>
    <li>URG: dati di urgenza</li>
    <li>PSH = 1: uguale, ovvero di priorità </li>
    <li>ACK = indica invio di acknowledgement</li>
    <li>RST,SYN,FIN usati per impostare e chiudere una connessione, syn -> instaura conn., fin -> chiude, quando invii i dati questi flag rimangono a 0, perchè non pacchetti speciali</li>
</ul>
si hanno poi opzi\onale, che può essere per esempio l'mss ovvero la dimensione massima del segmento.<br>
payload -> dati.<br>
<br>

##### Creazione della connessione
si effettua attraverso una three way handshake che avviene appunto mandano un pacchetto speciale con syn settato ad 1 da parte del client ed il numero di sequenza, per la gestione del proprio buffer. come risposta si avrà dal server syn = 1 ovviamente, il proprio seq number (inizio da x byte), inoltre un acknowledgment(+1) dell ultimo byte ricevuto(del sequence number del clien). e alla fine dal client un syn=0 e manda un ack al server(+1)(del sequence number del server)mandando la sequenza vera e propria 

<img title="Segment send" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\TcpCreateConn.png">
<img title="Segment send" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\DestroyConn.png">

##### Distruzione della connessione
doppio handshake.<br> 
Client -> fin = 1, Server -> Ack<br>
Server (indietro) -> fin = 1, client ritorna ack = 1;<br>
si chiudono le connessioni e si distruggono le socket

#### Trasferimento dati affidabile
##### Ritrasmissione dei pacchetti
avremo una trasmissione dei pacchetti fra i vari host ed in caso in cui il pacchetto che sta trasmettendo l'host viene perso allora, siccome non ci sarà l'ack indietro dall host ricevente ed è passato un determinato tempo predefinito (retrasmission timer), si andrà a rispedirè il medesimo pacchetto.<br>
lo stesso varrebbe se l'ack non arrivasse mai all destinatario, anche se è stato inviato ma perso durante la trasmissione. Quindi ci sarà una ritrasmissione del pacchetto già inviato.<br>
<img title="Segment send" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\RitrasmissioneAda.png">

##### Ritrasmissione adattiva
La ritrasmissione adattiva è una variante di questo meccanismo che si basa sull'utilizzo di un timer dinamico per determinare il momento in cui ritrasmettere i pacchetti. In particolare, il timer viene adattato dinamicamente in base alla congestione della rete e alle prestazioni del sistema di trasmissione, al fine di ottimizzare le prestazioni della trasmissione dei dati. 
grazie ad essa con la ritrasmissione adattima si va ad aspettare il giusto andando ad ottimizzare la trasmissione/ritrasmssione senza eventualemente andare a perdere pacchetti nel caso migliore.

<img title="Segment send" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\CilFlussoFinestraScorrevole.png"><br>

qui si spiega come il reciver vada a segnalare lo spazio libero all interno del buffer verso il sender che a sua volta conoscendo quanto spazio è libero andrà a suddivere i vari pacchetti in base al suddetto (sempre rispettando comunque lo standard ip) una volta ricevuti ecc. andrà a passarli verso il livello applicativo andato a segnalare al sender che si è libero x spazio libero con un acknowledgment riguardo appunto la window che rappresenta appunto lo spazio libero in un determinato preciso momento del buffer del ricevente. 

<img title="Segment send" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\rapprTcpBuff.png"><br><br>

##### Gestione finestre in TCP
La gestione delle finestre in TCP (Transmission Control Protocol) è un meccanismo utilizzato per regolare la velocità di trasmissione dei dati tra una coppia di host. In TCP, il sender mantiene un valore di "finestra di trasmissione", che indica la quantità di dati che può essere inviata senza ricevere un riscontro (acknowledgement) dal ricevitore. Il ricevitore, d'altra parte, mantiene un valore di "finestra di ricezione", che indica la quantità di dati che può ricevere prima di dover inviare un riscontro.<br><br>

La gestione delle finestre in TCP è fondamentale per evitare la congestione della rete. Se il sender invia troppi dati senza ricevere un riscontro, c'è il rischio che la rete si congestioni a causa dell'accumulo di pacchetti. La gestione delle finestre consente di evitare questo problema limitando la quantità di dati che possono essere inviati senza ricevere un riscontro.<br><br>

La dimensione della finestra di trasmissione è dinamica e può cambiare nel tempo in base alle condizioni della rete. Il sender può aumentare o diminuire la dimensione della finestra di trasmissione in base alla quantità di riscontri ricevuti dal ricevitore. Il ricevitore può aumentare o diminuire la dimensione della finestra di trasmissione in base alla quantità di riscontri ricevuti dal ricevitore. Il ricevitore può aumentare o diminuire la dimensione della finestra di ricezione in base alla quantità di memoria disponibile per la ricezione dei dati.<br><br>

<img title="Segment send" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\GestioneFine.png">
<br>

di sopra abbiamo per l'appunto la slide di riferimento, in questo contesto riscontrati vuol dire che i dati sono stati "acknowledgati" dal ricevitore che è andato per l'appunto a ricevere i segmenti trasmessi, trasmissibili si intende che sapendo c'è ancora x spazio per il buffer allora sappiamo che il buffer può ancora prendere quel determinato quantitativo di dati all interno del suo buffer e quindi il sender ha li ha preparati.<br><br>

quindi per l appunto nel caso in cui non sappiamo la finestra di buffer del ricevente abbiamo che per ogni segmento inviato se si perde l'ack allora va semplicemente reinviato al server il segmento anche se ricevuto e poi si procede con il resto, mentre se la finestra di buffer libera la conosciamo allora il sender invierà più segmenti in base ad esso e se non riceverà l'ack per uno dei due allora andrà a rinviare quello perso senza dover aspettare il timeout in quanto sapendo che uno dei due è arrivato vuol dire che l'altro si sarà perso.<br><br>

non mescolare controllo di flusso e congestione;
il controllo di flusso, si opera verificando lo spazio del ricevente.<br><br>

il controllo di congestione, per via di perdita nella rete (eventuale nodo intermedio che non ha spazio per il pacchetto e che non può accordarlo ecc. e quindi perdersi /overflow buffer nodi intermedi)<br>
quindi in questo caso andare a ritrasmettere significa intasare ancora di più e creare ancora più problemi, quindi tcp ritarda la trasmissione di messaggi così da evitare di causare ulteriori problemi in questo.<br><br>

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\TCPStart.png">

di sopra il meccanismo "slow start delle TCP" ovvero le tcp iniziano la comunicazione mandando inzialmente un segmento, successivamente due e poi 4 andando così in avanti, questo per evitare appunto di congestionare la rete.<br><br>

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\ClientCircle.png">

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\ServerCircle.png">

senza circuito virtuale -> se da un nodo a devono arrivare ad un nodo b -> i pacchetti possono fare percorsi diversi
(come predefinito dall protocollo ip)<br><br>

con circuito virtuale -> se invece la architettura di rete è implementata per sfruttare un protocollo che implementi i circuiti virtuali allora si definisce preventivamnete la strada che i pacchetti devono seguire.<br><br>

Ci sono i permanenti e i "switched" ovvero quelli dinamici
<br>

prima si calcola il percorso e poi lo si assegna ad un numero di circuito "vc" che viene agganciato al pacchetto, ed i pacchetti consegutivamente seguiranno tutti la stesso strada (permanente -- rimane attivo), switched poi viene distrutto. <br>
questo non vale per l'ip, non funziona così. Questo varrebbe per come verrebbe implementato con l'architettura di rete. quindi come già detto ip, ogni pacchetto seguirà un proprio percorso in base ai nodi.<br><br>

di seguito attraverso circuiti virtuale e successivamnete con l'ip.

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\CircuitoVirtuale.png">

<img title="trasport Layer inAction" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\CircuitoIP.png">

perchè l'ip non usa i virtual circuit? beh semplice, siccome predefinito con i virtual circuit, se viene a meno un nodo i pacchetti andrebbero persì mentre se visto al momento questo non succede.
