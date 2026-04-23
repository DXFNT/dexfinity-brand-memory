# Dexfinity Brand Memory Pack

**Základné Dexfinity brand pravidlá** — 3 memory súbory, ktoré Claude Code potrebuje, aby každý vizuál (web, email, deck, social, dashboard) vyzeral ako Dexfinity, nie ako generic SaaS šablóna.

Toto je **jadrový brand pack**. Pre plnú audit kostru pozri `DXFNT/dexfinity-ai-audit-memory`. Pre UX patterns `DXFNT/dexfinity-ux-memory`. Pre executable skills `DXFNT/claude-skills`.

## Čo v tom je (3 súbory)

### `reference_dexfinity_logos.md`
Oficiálne logo URLs z dexfinity.com. **Light variant** pre biele pozadia (nav), **Dark variant** pre navy pozadia (footer, hero).

### `feedback_dexfinity_brand_always.md`
Pravidlo #1: každý HTML / web / email / prezentácia / social creative musí byť v Dexfinity brande. Žiadne #00D4AA fake teal, žiadne default Arial, žiadne text-only náhrady loga.

- Farby: Navy `#05024E`, Blue `#0065F7`, Teal `#16AB8B`, Orange `#ff7f00`
- Fonty: Questrial (headings), Poppins (body)
- Dekoratívne kruhy (brand "Lego brick")
- Tagline „Go Beyond"

### `feedback_logo_min_sizes.md`
Logo musí byť čitateľné, inak klient nevidí brand signal.

- **Nav:** min 48 px výšky
- **Footer:** min 64 px (brand anchor)
- **Hero:** min 80 px (prvý dojem)

## Ako to importovať

```bash
git clone https://github.com/DXFNT/dexfinity-brand-memory.git
cd dexfinity-brand-memory
mkdir -p ~/.claude/memory
cp memory/*.md ~/.claude/memory/
```

Ak už máš `~/.claude/memory/MEMORY.md`, **NEPREPISUJ ho** — pridaj riadky z `memory/MEMORY.md` ručne.

## Súvisiace packy

- 📊 **[DXFNT/dexfinity-ai-audit-memory](https://github.com/DXFNT/dexfinity-ai-audit-memory)** — kompletný AI Ads Audit playbook (14 memory súborov)
- 🧭 **[DXFNT/dexfinity-ux-memory](https://github.com/DXFNT/dexfinity-ux-memory)** — UX patterns z reálnych klientskych auditov
- 🛠️ **[DXFNT/claude-skills](https://github.com/DXFNT/claude-skills)** — 43 Claude Code skills (install.sh pre rýchle nasadenie)

## Keď pridávaš nové brand rules

Tento pack je zámerne minimalistický — **len jadrové pravidlá**. Ak máš ďalšie brand usmernenia (voice, tone, tagline usage, copy preferencie, social brand, print brand), pošli PR s novým `.md` + riadkom v `MEMORY.md`.

---

**Vyrobil:** Pavol Adámčik + Claude
**Dátum:** 2026-04-23
**Go Beyond.** 🚀
