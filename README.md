💻 OverClock Webshop - Live Project
Az OverClock egy teljes értékű, felhőben hosztolt hardver webáruház. A projekt bemutatja a modern webes technológiák integrációját: egyedi dizájn, aszinkron API kommunikáció és automatizált számlagenerálás.
Habár lokálisan is futtatható lehetne, szerettünk volna kicsit "feltúrbózni" a projektet azzal, hogy hostoljuk a frontendet, backendet és az adatbázist is.
🌐 Elérhetőség
Weboldal (Frontend): https://overclockwebshop.netlify.app

API ENDPOINT (Backend): https://webshop-backend-api.onrender.com

Adatbázis: Managed MySQL (Clever Cloud)

🚀 Alkalmazott Technológiák
Cloud Stack (Hosztolás)
Render: A C# ASP.NET Core Web API futtatásáért felelős.

Clever Cloud: A MySQL adatbázis távoli elérését biztosítja.

Netlify: A frontendért felelős.


Fejlesztői Eszközök
Frontend: HTML5, CSS3, JavaScript (ES6+), GSAP (animációk), jsPDF (számlázás).

Backend: C# / ASP.NET Core, Dapper, MySQL Connector.

🛠️ Főbb Funkciók
Élő Adatbázis Kapcsolat: A terméklista nem statikus; minden betöltéskor a távoli MySQL adatbázisból érkeznek az adatok.

Valós Idejű Készletkezelés: A DELETE metódus implementálásával a megvásárolt termék azonnal kikerül az adatbázisból, biztosítva, hogy minden darab egyedi maradjon.

Dinamikus PDF Számla: A vásárlás gomb megnyomásakor a rendszer a megadott adatok alapján azonnal legenerál egy márkázott számlát.

Modern UI/UX: Neon esztétika gradienteket használva, sötét mód, animációk ahogyan a felhasználó görget és reszponzív elrendezés minden eszközre.

📂 Projekt Felépítése
/Controllers - A backend végpontok (GET, DELETE) kezelése.

/images - A webshop grafikai elemei és termékfotói.

index.html - A főoldal és a termékkatalógus.

termek.hmtl - Egyes termékek kattintásakor jelenik meg, így több információt kaphatunk az adott termékről.

kosar.html - A kosár logika, a vásárlási folyamat és a PDF generátor.

style.css - A teljes vizuális megjelenés (Cyberpunk/Dark téma).

👥 Fejlesztők
Barna Csaba & Patyi Szabolcs

Projekt Repository: PSZ-BCS-webaruhaz
