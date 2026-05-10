# 🎮 Obby Game - Roblox Skripty

Zbierka skriptov pre moju **Obby hru** v Roblox Studiu.

---

## 📦 Obsah

| Skript | Popis |
|--------|-------|
| `Okamzita_smrt.lua` | Časť, ktorá pri dotyku okamžite zabije hráča |
| `Padajuca_plosinka.lua` | Plošinka, ktorá začne blikať, zrýchľuje a po čase spadne |
| `Tociaca_plosina.lua` | Plošina, ktorá sa točí rôznymi smermi |

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

**Nastavenia:**
- `RYCHLOST` - rýchlosť otáčania v stupňoch za sekundu

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
