# DNS
### Nomi simbolici
I nomi simbolici sono un modo per associare un nome di dominio a un indirizzo IP in modo che sia faclie per gli utenti ricordare e digitare l'indirizzo di un sito Web. Ad esempio, invece di dover ricordare l'indirizzo IP "172.217.31.206" (a 32bit) per accedere a Google, e' sufficiente digitare "www.google.com".<br>
adottato dal 1983, sistema di nomi gerarchico ed e' un protocollo implementato come database distribuito.
### Gerarchia nomi
schema di denominazione gerarchico e ripartito io domini:
es. parnas.di.uniba.it <- it top level domain (Dominio piu' alto) altri ex: jp,fr etc. o un tipo di org come com ecc.
poi di seguito avremo uniba come secondo, e poi tutti gli altri che fanno parte dello stesso dominio interno di uniba.<br>
non c'e' un limite al numero di sottodomini o livelli, li nome piu' a sinistra e' li nome dell'host.<br>
ovviamente sopra a tutti starebbe li "root".

### Servizi forniti da DNS
<ul>
    <li>Risoluzione dei nomi</li>
    <li>Host aliasing</li>
    <li>Mali server aliasing</li>
    <li>Load distribution</li>
</ul>

#### Risoluzione dei nomi
ogni computer ha una routine name resolver: in unix gethostbyname(), al contrario gethostbyname()<br>

Quando si digita un nome di dominio in un browser o si utilizza un nome di dominio in qualsiasi altra attività online, il client invia una richiesta di risoluzione del nome di dominio(estratto dal browser, mandandola al name resolver che invia una query di essa) al server DNS del proprio provider Internet (ISP). Il server DNS dell'ISP cerca le informazioni sull'indirizzo IP associato al nome di dominio nella propria cache o nei propri database locali. Se le informazioni non sono presenti, il server DNS invia una richiesta di risoluzione del nome di dominio a un server DNS di livello superiore nella gerarchia dei nomi di dominio.

I server DNS di livello superiore, chiamati anche server radice, hanno informazioni su tutti i TLD (Top Level Domain) e possono indirizzare la richiesta di risoluzione del nome di dominio al server DNS responsabile del TLD specifico. Ad esempio, se si sta cercando di risolvere "www.google.com", il server radice indirizzerà la richiesta al server DNS responsabile del TLD ".com".

Il server DNS responsabile del TLD ha informazioni su tutti i nomi di dominio di secondo livello all'interno del TLD e può indirizzare la richiesta di risoluzione del nome di dominio al server DNS responsabile del nome di dominio di secondo livello specifico. Ad esempio, il server DNS responsabile del TLD ".com" indirizzerà la richiesta di risoluzione del nome di dominio "www.google.com" al server DNS responsabile del nome di dominio di secondo livello "google.com".

Il server DNS responsabile del nome di dominio di secondo livello ha informazioni su tutti i nomi host all'interno del nome di dominio di secondo livello e può fornire l'indirizzo IP associato al nome host specifico. Ad esempio, il server DNS responsabile del nome di dominio di secondo livello "google.com" fornirà l'indirizzo IP associato al nome host "www".
Una volta ottenuto l'indirizzo IP, il client può quindi stabilire una connessione con il server utilizzando l'indirizzo IP (fare la richiesta http, che si traduce in richiesta tcp verso il processo server http in ascolto sulla porta 80) ottenuto e accedere al sito Web o eseguire qualsiasi altra attività online richiesta.

Tipi di richiesta<br>
– ricorsiva: dammi la risposta <br>
– iterativa: dammi la risposta o un riferimento ad un altro server<br><br>
Un name server può<br>
– restituire la risposta completa (indirizzo richiesto)<br>
– inoltrare la richiesta a un altro server<br>
– restituire un puntatore a un altro server da interrogare<br>

a livello gerarchico avremo:
<ul>
  <li> Root DNS server </li>
    <ul>
      <li>Dns Server com</li>  
        <ul><li>yahoo e amazon</li></ul>
      <li>Dns Server org</li>  
        <ul><li>pbs.org</li></ul>
      <li>Dns Server edu</li>  
        <ul><li>poly.edu, umass.edu</li></ul>
    </ul>
</ul>
usando la iterazione avremo un esempio seguente: <br><br>
<img title="iteration dns" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\DnsIterative.png"><br><br>

invece la segue è la ricorsiva: (differenza sostanziale: root server
manda la richiesta di soluzione del dominio al dns col dominio più alto, ricevendo poi esso l'indirizzo ip mandandolo poi al dns locale)

<img title="recursive dns" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\DnsRecursive.png"><br><br>

risoluzione mista: <br><br>
<img title="mixed dns" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\DnsRecursive.png"><br><br>

#### Caching e abbreviazioni
ogni resolver ha una lista di suffissi con cui completare la richiesta del dominio di nome; ex parnas. così è più facile scrivere un nome di indirizzo ex: -> google.com.<br><br>

la risoluzione dei nomi può essere costosa -> caching dei nomi di server recentemente utilizzati così da non andare sempre a sprecare computazione nel cercare l'indirizzo ip nei fra i server dns. inoltre è associato un TTL(time to live) che appunto corrisponde (per ogni nome di dominio nella cache) al tempo prima che scada.<br><br>

Host aliasing:<br> 
ex:<br>  
relay1.west-coast.enterprise.com -> nome canonico<br> 
www.enterprise.com -> alias<br><br>  

il Dns risolverà sia il nome canonico che il possibile alias<br><br> 

anche nelle mail si utilizzano gli alias, stesso alias per il mail server di
una società possono avere lo stesso alias.

#### Load distribution
Semplicemente si distribuisce il carico delle richieste tra i vari server dns, server replicati per alleggerire.
DNS implementa un algoritmo mi rotazione per redistribuire il traffico sui server replicati

#### Descrittori di risorsa
I record di risorsa in DNS (Domain Name System) sono un tipo di dato che viene memorizzato nel database DNS e utilizzato per fornire informazioni su un dominio o host specifico.<br>
struttura della collezione di risorsa <Name, Value, Type, Class, TTL><br> 
Name e’ il nome simbolico dell’host a cui si associa un value.<br>
Il significato di Value dipende dal tipo del descrittore<br>
  – Type A: Value e’ l’indirizzo IP corrispondente<br>
  – Type MX: Value e’ il nome del mail server (es. gaia.di.uniba.it) che 
  accetta messaggi per il dominio specificato<br>
  – Type CNAME: Value e’ il nome canonico per l’host (il nome dell’host
  è un alias: es. gaia.di.uniba.it invece di www.di.uniba.it)<br>
  – Type NS: Value è il nome del name server a cui inoltrare la richiesta
Class: entità dei tipi<br>
TTL: già parlato in precedenza;<br>

ex: <parnas.di.uniba.it, 193.204.187.146, IN, … > <- Type A<br>
    <www.di.uniba.it, parnas.di.uniba.it, IN, … > <- CNAME <br>
<br><br>
<img title="mixed dns" alt="Alt text" src="C:\Users\Dario\NvimProject\Uni\Reti\DnsMessageFormat.png"><br><br>
