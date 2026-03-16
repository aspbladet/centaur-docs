# 🚀 Lunch & Learn: Av-googla ditt liv & Bygg ditt eget "Enterprise"-moln
**Datum:** 2026-03-31
**Målgrupp:** Exsitec Sverige (Blandat tech/affär)
**Talare:** [Ditt Namn]
**Format:** 30-45 min digitalt över Google Meet

---

## 1. The "Why" & The Mindset (10 min)
*Mål: Sätt scenen, skapa igenkänning och väck ett "vill ha"-begär.*

* **Geopolitik & Nagelsträngskapningen:** Varför vi i Europa behöver bygga digital resiliens. Vad händer om USA stänger kranen? (Be the change you want to see).
* **Data-suveränitet:** Dina foton, dina minnen, dina filer. Sluta vara produkten åt Big Tech. Möjligheterna att hosta själv har *aldrig* varit enklare.
* **Prenumerationsdöden (ROI):** * Vad kostar Google One + iCloud + Dropbox + Spotify + Netflix per år för en familj?
    * Min setup kostar X kr i inköp. Break-even nås på Y månader. Sedan är det ren vinst.
* **WAF (Wife Acceptance Factor) - Den Gyllene Regeln:** * Inget får vara krångligt. Det MÅSTE integrera sömlöst med Apples inbyggda iOS/macOS-appar. Samma känsla som iCloud, fast hemma.

## 2. Arkitekturen (utan krångel) (15 min)
*Mål: Avmystifiera tekniken. Visa att det är logiskt.*

* **Nätverksmagin med Tailscale (Zero Trust):**
    * Problemet med gamla VPN (öppna portar i routern = livsfarligt).
    * Lösningen: Tailscale. Bygger ett "grupp-VPN" (Mesh) över befintligt internet. 
    * *Azure-parallell:* Tänk Azure Private Link eller VNet Peering. Vi exponerar inga portar mot internet (Default Deny), vi tunnlar trafiken säkert.
* **Hårdvaran & Lagringen (Separation of Concerns):**
    * **MacServern (Compute):** En Mac Mini M2 drar extremt lite ström men har enorm prestanda.
    * **OWC RAID 1 (Storage):** Speglade diskar. Går en sönder, finns datan kvar.
    * *Fabric-parallell:* Separation of Compute and Storage. Vi skalar datorkraft och lagringsoberoende av varandra.
* **Buddy-Backup (Off-site redundans):**
    * Vad händer om huset brinner ner? 
    * Min kompis ("Buddy") har en Raspberry Pi med en 6TB disk i sin garderob, uppkopplad via Tailscale. Krypterad nattlig backup.
    * *Azure-parallell:* GRS (Geo-Redundant Storage).
* **Ekosystemet (Tjänsterna vi kör):**
    * *Immich:* Google Photos-dödaren (AI-ansiktsigenkänning körs lokalt på MacServern!).
    * *Nextcloud:* Din egen Google Drive.
    * *Mailbox.org:* Av-googlad e-post med fokus på integritet (hostas i Tyskland).

## 3. AI som din Senior Engineer (10 min)
*Mål: Inspirera teamet att använda AI för att levla upp sin tekniska kompetens.*

* **Min bakgrund vs. Min setup:** Industriell Ekonomi och B2B-sälj. Nybörjare på Linux och Nätverk. *Hur byggde jag detta?*
* **Att läsa arkitektur framför att skriva syntax:**
    * Jag använder AI (Gemini) som ett strategiskt bollplank, inte bara en kod-generator.
    * AI bygger mina Docker Compose-filer, konfigurerar min Nginx-proxy och skriver mina Bash-skript. Jag står för affärslogiken och arkitekturvalen.
    * *Konkret tips till utvecklarna:* Fastna inte i syntax. Förstå designmönstren (Medallion Architecture, Zero Trust) och låt AI göra "grovjobbet".

## 4. Q&A & Nästa Steg (5-10 min)
*Mål: Lämna dem med "Actionable Takeaways" och teasa del 2.*

* **Inköpslistan (MVA - Starta smått):**
    * En begagnad Mac Mini M1/M2 eller en Intel NUC.
    * Två externa hårddiskar.
    * Tailscale (Gratis).
* **Easy-to-follow recept:** [Länk till ett internt Exsitec-dokument / GitHub repo där de kan se dina grund-promptar och Docker-filer].
* **Teaser för Part 2:** Är ni sugna på mer hardcore tech framöver? Då ska jag visa hur jag bygger ett eget multi-tenant Kubernetes-kluster (Pico-klustret) hemma på 5 st Raspberry Pi:s, komplett med isolerade namespaces och Network Policies.

---