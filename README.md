# 🎮 Obby Game - Roblox Skripty

Zbierka skriptov pre moju **Obby hru** v Roblox Studiu.

---

## 📦 Obsah

| Skript | Popis |
|--------|-------|
| `okamžitá_smrť_pri_dotyku.lua` | Časť, ktorá pri dotyku okamžite zabije hráča |
| `padajúca_plošinka_s_akceleračným_blikaním.lua` | Plošinka, ktorá začne blikať, zrýchľuje a po čase spadne |
| `plošina_ktorá_sa_točí_rôznymi_smermi.lua` | Plošina, ktorá sa točí rôznymi smermi |
| `točiaci_sa_laser.lua` | Laser na stĺpe, ktorý sa točí ako vrtuľa |
| `hojdacia_plošina.lua` | Plošina, ktorá sa kýve ako hojdačka |
| `posuvná_stena.lua` | Stena, ktorá sa posúva dopredu a dozadu |
| `teleport.lua` | Prenesie hráča na iné miesto |
| `skákacia_podložka.lua` | Vystrelí hráča do vzduchu |
| `checkpoint.lua` | Ukladá pozíciu hráča |
| `respawn_manager.lua` | Vráti hráča na checkpoint po smrti |

---

## 💀 Okamžitá smrť pri dotyku

Najjednoduchší skript. Hráč sa dotkne časti a okamžite zomrie.

**Použitie:** Láva, hroty, ohne

---

## 🟨 Padajúca plošinka s akceleračným blikaním

Plošinka, ktorá po dotyku začne blikať. Blikanie sa postupne **zrýchľuje**, až kým plošinka nespadne.

**Nastavenia:**
- `CAS_VAROVANIA` - ako dlho bliká pred pádom
- `RYCHLOST_BLIKANIA` - rýchlosť blikania
- `FARBA_VAROVANIA` - farba pri blikaní
- `CAS_OBNOVENIA` - za koľko sekúnd sa vráti späť

---

## 🔄 Točiaca sa plošina

Plošina, ktorá sa točí rôznymi smermi ako prekážka.

---

## 🔴 Točiaci sa laser

Laser pripevnený na stĺpe, točí sa ako vrtuľa. Pri dotyku môže zabíjať.

---

## 🔵 Hojdacia plošina

Plošina, ktorá sa kýve do strán. Hráč na nej musí udržať balans.

---

## 🟠 Posuvná stena

Stena, ktorá sa plynulo posúva dopredu a dozadu. Hráč musí načasovať prechod.

---

## 🟣 Teleport

Vstupný a výstupný part. Hráč vojde do modrého a objaví sa pri zelenom.

---

## 🟡 Skákacia podložka

Pri dotyku vystrelí hráča vysoko do vzduchu.

---

## 🟢 Checkpointy

Žltý part, ktorý sa po prejdení zmení na zelený. Po smrti sa hráč vráti na posledný aktivovaný checkpoint.

---

## 🛠️ Ako použiť

1. Otvor **Roblox Studio**
2. Klikni pravým na Part → **Insert Object** → **Script**
3. Skopíruj kód z `.lua` súboru do skriptu
4. Spusti hru (**F5**) a otestuj

---

## 🎨 Farby

```lua
BrickColor.new("Bright red")     -- Červená
BrickColor.new("Bright orange")  -- Oranžová
BrickColor.new("Bright yellow")  -- Žltá
BrickColor.new("Bright green")   -- Zelená
BrickColor.new("Bright blue")    -- Modrá
