% Programe universale de gestionare a pachetelor pentru Linux: Snap, Flatpak și AppImage
% ThinkRoot99

Gestionarea pachetelor sau instalarea de programe pe sistemele Linux poate fi foarte derutantă, în special pentru începători (utilizatori noi de Linux), deoarece diferitele distribuții Linux folosesc sisteme tradiționale diferite de gestionare a pachetelor. Partea cea mai confuză în cele mai multe cazuri este rezolvarea/gestionarea dependenței pachetelor.

De exemplu, distribuțiile bazate pe **Debian**, cum ar fi **Ubuntu** și **Linux Mint**, utilizează pachete `.deb`, care sunt gestionate prin intermediul sistemului de gestionare a pachetelor `dpkg`.

Pe de altă parte, distribuțiile bazate pe **RHEL**, cum ar fi **CentOS Stream**, **Rocky Linux** și **AlmaLinux**, utilizează pachete `.rpm`, care sunt gestionate cu ajutorul sistemului de gestionare a pachetelor `rpm`.

În ultimi câțiva ani, gestionarea și distribuția pachetelor în ecosistemul Linux nu a mai fost niciodată la fel după apariția instrumentelor de gestionare a pachetelor universale sau pentru mai multe distribuții.

Aceste instrumente permit dezvoltatorilor să își împacheteze programul sau aplicațiile pentru mai multe distribuții Linux, pornind de la o singură construcție, facilitând utilizatorilor instalarea aceluiași pachet pe mai multe distribuții compatibile.

În acest articol, voi trece în revistă cele mai bune 3 sisteme de gestionare a pachetelor pentru mai multe distribuții sau universale cu sursă deschisă pentru Linux.

# Snap - Un format universal de pachete

`Snap` este un format popular de aplicații/pachete open source și un sistem de gestionare a pachetelor dezvoltate de **Canonical**, dezvoltatorul lui **Ubuntu**. Mai multe distribuții Linux acceptă acum Snaps, inclusiv **Ubuntu**, **Debian**, **Fedora**, **Arch Linux**, **Manjaro Linux** și **CentOS/RHEL**.

## Instalare și actualizare simplă

O aplicație **snap** este o aplicație pentru mai multe distribuții care este inclusă în pachet cu toate dependențele sale pentru o instalare ușoară cu actualizări automate (aplicațiile sunt întotdeauna actualizate) pe orice distribuție Linux care acceptă snap-uri. Un snap poate rula pe un calculator, pe un server, în cloud sau IoT (Internet of Things).

Pentru a crea sau instala o aplicație, trebuie să utilizați **Snapcraft**, o structură (framework) și un instrument puternic de linie de comandă pentru crearea de snap-uri.

Pentru a instala și a utiliza snap-uri în Linux este necesară instalarea lui **snapd** (sau daemonul snappy), un serviciu de fundal care permite sistemelor Linux să lucreze cu fișiere `.snap`. Instalarea efectivă a snap-urilor se face cu ajutorul instrumentului snap din linia de comandă.

## Securitate și izolare

Deoarece se execută în condiții de izolare (niveluri de izolare diferite și configurabile), snap-urile sunt securizate în mod implicit.

Este important de menționat că un snap care trebuie să acceseze o resursă de sistem în afara zonei sale de izolare utilizează o „***interfață***” care este atent selectată de creatorul snap-ului. Acest lucru vă permite să executați aplicații fără a compromite stabilitatea și flexibilitatea sistemului de operare de bază.

În plus, sistemul de gestionare a pachetelor snap utilizează un concept numit **canale (channels)** (care constă și este subdivizat în piste, niveluri de risc și ramuri) pentru a determina ce versiune a unui snap este instalată și urmărită pentru actualizări.

Snap-urile se actualizează, de asemenea, automat, un proces pe care îl puteți gestiona manual.

Pentru a găsi și a instala un snap, căutați-l în [magazinul de snap-uri](https://snapcraft.io/store) (un loc în care dezvoltatorii își pot aranja snap-urile).

# Flatpak - Compatibilitate între diverse distribuții

`Flatpak` este un cadru open source bine cunoscut pentru distribuirea aplicațiilor pe distribuțiile Linux. Dezvoltat de o comunitate independentă, **Flatpak** permite ca o singură aplicație să fie instalată și rulată pe aproape orice distribuție Linux.

Este compatibil cu un total de 25 de distribuții, inclusiv **Fedora**, **Ubuntu**, **RHEL**, **CentOS**, **openSUSE** și **Arch Linux**, și funcționează și pe **Raspberry Pi**.

Platformele Flatpak oferă biblioteci comune pe care o aplicație le poate utiliza. Cu toate acestea, vă oferă posibilitatea foarte ușoară de a avea control complet asupra dependențelor, puteți încorpora bibliotecile în cadrul aplicației dumneavoastră.

**Flatpak** vine cu instrumente de construcție ușor de utilizat și oferă un mediu constant (identic pe toate dispozitivele și similar cu ceea ce au deja utilizatorii) pentru ca dezvoltatorii să construiască și să testeze aplicațiile lor.

## Sandboxing pentru o securitate îmbunătățită

Flatpak face ca lucrurile să fie sigure, punând fiecare aplicație în sandbox-ul său, astfel încât aplicațiile nu pot interfera cu sistemul principal sau cu alte aplicații. Este foarte util atunci când ai de-a face cu aplicații din surse de care nu ești sigur.

## Ușor de utilizat și de dezvoltat

Un aspect util al **flatpak** este compatibilitatea viitoare, unde același **flatpak** poate fi rulat pe diferite versiuni ale aceleași distribuții, inclusiv pe versiuni care nu au fost încă lansate de către dezvoltatori. De asemenea, se străduiește și continuă să fie compatibil cu noile versiuni ale distribuțiilor Linux.

Dacă sunteți dezvoltator, vă puteți pune aplicația la dispoziția utilizatorilor Linux prin intermediul [Flathub](https://flathub.org/home), un serviciu centralizat pentru distribuirea aplicațiilor pe toate distribuțiile.

# AppImage - Alternativa portabilă

`AppImage` este, de asemenea, un format de pachete open source care permite dezvoltatorilor să împacheteze o aplicație o singură dată, care rulează pe toate distribuțiile Linux majore.

Spre deosebire de pachetele anterioare, cu AppImage, nu este nevoie să instalați un pachet. Trebuie doar să descărcați aplicația pe care intenționați să o utilizați, să o faceți executabilă și să o rulați.

Este compatibil cu majoritatea distribuțiilor Linux pe 32 și 64 de biți.

## Nu este necesară instalarea

Cu **AppImage**, nu este nevoie să instalați nimic. Puteți să puneți aceste pachete pe o unitate USB, să le partajați și să rulați aplicațiile fără a vă modifica sistemul. Acest lucru este excelent pentru sistemele Linux portabile și de tip „***live***”.

## Compatibilitate extinsă

[AppImage](https://appimage.org/) vine cu multe avantaje. Pentru dezvoltatori, le permite să ajungă la cât mai mulți utilizatori, indiferent de distribuția și versiunea de Linux pe care utilizatorii o folosesc.

Pentru utilizatorii, aceștia nu trebuie sa își facă griji cu privire la dependențele aplicațiilor, deoarece **AppImage** este inclus cu toate dependențele sale (o aplicați = un fișier). Încercarea noilor versiuni de aplicații este, de asemenea, ușoară cu **AppImage**.

Pentru administratorii de sistem care oferă asistența pentru un număr mare de sisteme și care, în mod normal, blochează utilizatorii să instaleze aplicații care a putea distruge sistemele, nu mai trebuie să își facă griji. Cu **AppImage**, sistemul rămâne intact, deoarece utilizatorii nu trebuie să instaleze aplicații pentru a le rula.

# Comparația trio-ului: Snap, Flatpak și AppImage

Iată o comparație a celor trei manageri de pachete universale:

| Caracteristică | Snap | Flatpak | AppImage |
|----------------|------|---------|----------|
| Formatul pachetului  | Fișier comprimat, de sine stătător | Fișier comprimat, de sine stătător | Fișier executabil unic |
| Sandboxing | Da (în mod implicit) | Nu (în mod implicit) | Nu |
| Actualizări automate | Da | Oțional | Nu |
| Instalare | Necesită daemonul snapd | Necesită runtime-ul Flatpak | Nu necesită instalare |
| Privilegii root | Necesită privilegii de root pentru instalare | Nu necesită privilegii de root pentru instalare | Nu necesită privilegii root pentru a rula |

# Ce manager de pachete ar trebui să aleg?

Dacă sunteți în căutarea unui manager de pachete sigur și ușor de utilizat, cu actualizări automate, atunci **Snap** este o alegere bună.

Dacă sunteți în căutarea unui manager de pachete mai flexibil, care poate fi utilizat pentru a împacheta orice tip de aplicație, atunci **Flatpak** este o alegere bună.

Dacă sunteți în căutarea unui manager de pachete care nu necesită instalare sau privilegii de root, atunci **AppImage** este o alegere bună.

De asemenea, este important de reținut că toți cei trei manageri de pachete sunt încă în curs de dezvoltare, astfel încât este posibil să existe unele defecte sau caracteristici lipsă. Cu toate acestea, toate sunt întreținute în mod activ și actualizate în mod regulat.

# Concluzie

Formatele de pachete pentru mai multe distribuții sau universale sunt tehnologii de ultimă generație pentru crearea și distribuirea de programe în ecosistemul Linux. Cu toate acestea, sistemele tradiționale de gestionare a pachetelor își păstrează în continuare poziția.

# Sugestii pentru articol

**Sugestiile pentru actualizarea sau corectarea articol-ului se pot face pe [GitHub](https://github.com/thinkroot99/articole-linux). Mulțumesc**