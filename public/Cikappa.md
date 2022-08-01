Era una mattina qualunque, io mi ero appena svegliato ed ero intento a scrivere il video sulle novità di Ubuntu 21.04. Tra le cose di cui vi volevo parlare, c'era la condivisione dello schermo su Discord quando si usa Wayland.
Non riuscendo ad ottenere dei buoni risultati usando una macchina virtuale, decido quindi di provarlo direttamente sul mio host. Inizialmente provo ad usare una Live USB, ma mi rendo conto che né sul mio PC fisso, né sul mio ThinkPad, la live USB ha Wayland.
Dopo un po' di tentativi, decido semplicemente di installare Ubuntu nell'hard disk del mio PC fisso dove in quel momento avevo Kubuntu, dato che in ogni caso non avevo alcun dato importante su quell'hard disk.
L'installazione non è andata proprio liscia come l'olio, ma in un modo o nell'altro, ci sono riuscito. Faccio tutti i miei test, dove mi rendo conto che effettivamente Discord, OBS e Wayland litigano, ed in teoria è finita qui no? Nulla di strano.
Se non fosse che avevo anche un altro progetto per la mattinata: provare ad installare Windows 8.1 sempre su quell'hard disk, dove però ora c'era Ubuntu.
Questo perché avevo intenzione di fare un video intitolato circa: "Perché Windows 8.1 è morto prima del dovuto?", e per farlo, volevo effettivamente provare Windows 8.1 sul mio computer. *Non l'avessi mai fatto*.
Creo la USB di Windows 8.1, e fin qui tutto a posto. Dopo di che faccio il boot nell'installer, e anche qui nessun problema. Riesco a piallare l'HDD di Ubuntu e installare Windows 8.1. Il problema sorge al primo riavvio.
Ora, io mi aspettavo che potesse succedere *di tutto*. Che il bootloader di Windows 8.1 si mettesse come prima priorità di boot e che quindi non potessi accedere a Windows 10 installato sull'NVMe, che il bootloader di Windows 10 continuasse ad avere il controllo e quindi non sarei potuto accedere a Windows 8.1, o che uno dei due bootloader mi permettesse di fare il boot su entrambi gli OS.
Invece, succede l'inaspettato. Al riavvio GRUB. Grub su un PC con in quel momento, solo due versioni di Windows.
...C'è qualcosa che non va. E vi spiego io cosa è successo: è successo che quel pezzo di sterco di GRUB, ogni volta che installo Linux su questo PC, nonostante io gli dica esplicitamente che deve andare sull'HDD di Linux, decide di installarsi comunque nell'NVMe di Windows. E adesso Windows 8.1 deve aver fatto casino con il Windows Boot Manager, e quindi il BIoS ha ben pensato di portare GRUB come prima boot priority.
Andando nel boot menu del computer riuscivo comunque a fare il boot in Windows, quindi ero certo si potesse recuperare.
Andando nel BIOS del PC per provare a cambiare la boot priority, però, ho sclerato *per mezz'ora*, perché a quanto pare qualcuno all'MSI ha ben pensato che l'ordine di boot dei dischi e l'ordine di boot degli OS sui singoli dischi debbano stare in due menu diversi.
Dopo averlo rimesso a posto, sono riuscito ad accedere sia a Windows 10, che a Windows 8.1, quindi adesso dovrebbe essere tutto risolto?
*[Meme.]*
Da quel momento infatti sono iniziati i problemi. È vero, riuscivo a fare il boot in entrambi gli OS; ma questo non vuol dire che riuscivo a usare il mio computer.
Windows 10 da quel momento in poi ha deciso che funzionare non era tra le opzioni disponibili. Provando a giocare ad un qualsiasi gioco, infatti, continuava a crashare e a bloccarsi tutto, portandosi appresso tutto il sistema. Però non faceva una BSoD, semplicemente si bloccava tutto, faceva robe strane.
Non riuscivo a navigare su Internet, non riuscivo a interagire coi software, non riuscivo a fare nulla.
Su Windows 8.1 la situazione era leggermente migliore, anche se però aveva deciso che non gli piacevano i browser basati su Chromium, quindi potevo usare solamente Internet Explorer, e Firefox.
So che raccontato così sembra sia passato poco tempo, ma arrivati a questo punto, in realtà erano le 7 di sera.
Decido quindi di togliermi da quel computer per il resto della giornata, finire di scrivere il video di Ubuntu sul mio portatile, ed in generale, di farmi i fatti miei.
La mattina dopo, però, mi convinco che era ora di fare qualcosa.

*[Musica]*

Caro Windows, perché non posso espelle-
*[La USB si espelle.]*
Sei un pezzo di merda, avevo appena iniziato a registrare.

Allora in questo momento sto copiando sul portatile 2 iso di Ubuntu, per poter continuare a scrivere il video da qui e dopodiché creerò la chiavetta di Windows.
Ok allora, questa la espelliamo. Tuc! La mettiamo qui, dopodiché qua apriamo Rufus, andiamo in Windows 10, Windows 10 2009, la mettiamo qui... schema partizione GPT, UEFI, tutto a posto, Avvia, OK.

Comunque se non sapessi per caso che ore sono, qua sono le 05:57, qua sono le 07:57, e qua sono le 09:57, quindi... vabbè.

Allora, qui ha finito, adesso facciamo una cosa molto carina, che è Arresta sistema, spegniamo.
*[Rumori.]*

È ormai il momento di spammare F11. Ah! Bello!
Quindi... Avanti, Installa... ce l'ho il codice ma te lo devi prendere da solo... Windows 10 Pro...

È il momento di friggere tutto.
Arrivederla... arrivederla, arrivederla... e arrivederla.
Vai.

I mega palloni di Windows pazzi sgravati.

Ok, quindi, ha finito, comunque incredibile quanto poco ci metta. Allora, noi siamo chiaramente nelle isole Pitcairn, no ok mettiamo Italia. Sì, Italiano... La configurazione per l'uso personale, Avanti.
Aggiungi il tuo account... quindi, non voglio la posizione... no, non devo perdere il dispositivo non ti preoccupare, non inviare i dati facoltativi, non usare la penna... no, non usare gli Ad... eh, no...

Che ci faccio io col computer? Eh... giochi, compiti... creatività... non so che cambi. Avanti.
Utilizza il telefono dal PC? *[Udibile sforzo immane]* Posso solo ignorare per il momento o ricordarmelo più tardi, non c'è neanche l'opzione per farlo. Ignora.
Salva solo su questo PC... Il tuo dispositivo è ancora migliore con Microsoft 365...? Non lo voglio!
Consenti a Cortana... Non voglio cortana.

Oh. Ciao.
Esplora il web con Microsoft Edge. Dopo! Mi fai passare la voglia di farlo.

Allora, adesso che Windows qui è installato, una cosa che voglio fare prima di fare altro in modo che se rompo qualcosa non perdo nulla sostanzialmente, è su quel secondo hard disk lì, quell'infame, ci rimetto Linux.
In questo caso voglio provare Pop!_OS, perché dovrebbe essere una distro fatta molto bene. Le opzioni sono due: o Pop va, o installiamo Elementary, che mi ricordo che andava benissimo.

Ok, quindi una cosa che andremo a fare adesso, è creare la USB con Pop!_OS. Quindi... Pop OS... quindi, Download, Download NVIDIA.
"Disable Secure Boot"? Non voglio disattivare il Secure Boot.
"Pop is installation with secure boot." Non so se voi sapete l'inglese, ma io vi posso assicurare che questa frase non ha alcun senso.
Seriamente, non ho voglia di disattivare il Secure Boot, anche perché non ho voglia di girarmi il BIOS, quindi se non va proviamo un'altra distro.
Downloads... Salva... e aspettiamo questi 5 minuti.
Qua ha finito di scaricare le iso. E mi serve un tool: Balena Etcher. Di solito Balena Etcher non lo uso, di solito uso Rufus, come avete visto prima, ma su macOS non c'è Rufus.
Apriamo il file .dmg... installiamolo... sto coso che lampeggia qua sotto mi sta urtando molto.
Balena Etcher... le applicazioni sono qua sotto... Siri Suggested Websites? k本的毛無料7上?
Apri sta roba, e non rompere. Sì l'ho scaricato dall'Internet™, va bene, l'ho scaricato io!

Allora, flash from file. Pop!_OS, Select Target, SanDisk USB 3.0, OK... Flash! Non dovrebbe essere difficile.
Perché vuoi la password?! Porca miseria macOS.
Tempo rimanente 1 minuto, non dovrebbe essere molto dai.
Flash completato.
Le notifiche di Balena Etcher potrebbero includere allerte, suoni e icone. E fammele vedere, grazie!
Il disco che hai collegato non era leggibile dal computer!

Quindi, accendiamo, e F11 a manetta. Try or install Pop!_OS. Perché è diventato enorme pazzo sgravato?
Quindi, qua selezioniamo la lingua, no stavolta la battuta di haha, ci metto il... Bemba, eh no non ce la faccio.
Tastiera, controlliamo che sia giusto... si.
La tastiera Friuliana, e... Siciliana? Io ho una tastiera normale cos'è una tastiera siciliana scusate?
Avanti... Custom, adesso direi che sta cosa un attimo me la faccio io, perché per lo meno non devo tenere il telefono in mano.
Sono un idiota e non ho collegato il disco giusto.

Su quel disco c'è ancora Windows 8. Io devo avviare la usb senza in nessun modo far partire prima Windows. Se parte prima Windows, riconosce 8.1 e mi risminchia il bootloader. Deve essere un'operazione molto rapida.
Spam di F11. E con "molto rapida" intendo, 8000 anni perché ci mette un cristo sto computer a fare il boot.
UEFI Sandisk... Try or install Pop...
Allora quindi, rimettiamo Italiano, Seleziona, Italiana, Predefinito, Custom...
Modifica partizioni. Ah ma da GParted, porca miseria... allora, /dev/sda.
Allora sclererò un attimo. Io ho appena cercato Pop!_OS dual boot su Google, pensavo no, il sito ufficiale mi dirà come installare Pop!_OS se ho già Windows... scendo qua, ed è un tutorial di installare Windows quando c'hai già Pop OS! No, volevo il contrario grazie. Windows lo so installare.

Sto guardando un tutorial di questo tizio che praticamente sta creando solo un'unica partizione, tutto il disco solamente ext4, e a sto punto /... Eh? Il boot? Le cose?
Chiederò al gruppo Telegram, che conosce Pop meglio di me.
Ok allora il signor Fabrizio, è un po' triggerato dal fatto che che questo tizio crei solo una partizione completa, quindi mi dice di fare come si è sempre fatto, e io ho un attimo chiesto, come... dico a sto coso qual è / e come gli dico qual è la partizione /, e... grazie Fabrizio, volevi comparire in un video? Sei in un video!
Allora... lui mi dice ora che ci penso non si fa da Gparted, da Gparted creo la partizione e appena finisco lo dico non da Gparted, quindi lo faremo.
Allora... dato che non sono troppo sicuro di cosa stia facendo da quel lato, voglio provare a fare una cosa. Usare il coso automatico. Che cancella tutto il disco ma installa lui.
Per farlo, voglio fare una cosa veloce. La provo in macchina virtuale qua. Creo velocemente un nuovo disco, da... facciamo sempre 15 giga, ci diamo la iso di Pop, startiamo e vediamo se mi chiede effettivamente quale disco usare, se me lo fa installare in single boot. C, per il Disco.
Quindi velocemente Clean Install, mi dice Select a drive, quindi effettivamente posso usare uno di questi.

TOSHIBA. Che è l'hard disk.
Non voglio che sia criptato, vai.
Quindi... qua ha finito, ora possiamo riavviare, e vedere cosa partirà. Pop? Windows? Nulla?
Oh! Yes!
Adesso spammiamo F11 e vediamo se riusciamo a far partire Pop. Ha installato il bootloader sull'hard disk giusto.
Allora, schermata freeboottata all'iPhone con tutti i benvenuto che cambiano, Successiva. La tastiera mi pare che te l'avevo detta prima però vabbè. Italiano. Non voglio la posizione. Pop tu non avrai un trattamento diverso da Windows. Roma può andare benissimo.
Gli account online... ma sai che c'è, l'account Google lo loggo, quindi datemi un attimo.
Ok, quindi qua dobbiamo mettere una password, quindi vado a mettere una passowrd.
Tutto fatto, inizia a usare Pop OS. Fino ad ora l'installazione più facile della storia. Che è successo, perché è tutto scuro? T'ho appena fatto un complimento... Oh! Un OS!
Adesso... spegniamo un attimo, ho paura di aver fatto danno, le scritte pazze sgravate, e colleghiamo gli altri hard disk e chiudiamolo.
Quindi, Pop è installato, Windows pure, io direi che è semplicemente arrivato il momento di configurare tutto.

E quindi eccoci arrivati alla fine di questa storia, fatta di scleri e di voglia di morire. Adesso funziona tutto, e prima che la mia sezione commenti diventi piena di insulti a Windows, ci tengo a precisare che se quella mattina mi fossi messo le mani su per il culo invece di installare Windows 8.1, non sarebbe successo nulla, in quanto prima andava perfettamente tutto.
Per quanto riguarda Pop!_OS, mi ci sto trovando benissimo, ma per le mie opinioni complete, aspettate un po' e ci farò un video dedicato.

Detto questo, spero che questo video vi sia piaciuto, sia riuscito a farlo intrattenente, non è stato piacevole registrarlo fidatevi. Questo è il secondo video della settimana, settimana scorsa non ne è uscito, questa settimana è uscito solo un video di pochi minuti, quindi ho deciso di provare a compensare in questo modo. Passate da Instagram e Twitter che trovate sempre in descrizione, passate dal secondo canale e da BB Spazio, che indovinate dove stanno? Descrizione. Telegram e Discord? Avete capito.
Qua da Cikappa è tutto, e ci vediamo ad un prossimo video, ciao.
