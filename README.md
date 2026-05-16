# Dexfinity Brand Memory Pack

**Layer 1 brand operating manual** — 8 memory súborov, ktoré Claude Code potrebuje, aby každý output (audit, report, deck, landing page, email, LinkedIn post, dashboard, podcast, interná správa) hovoril a vyzeral ako Dexfinity, nie ako generic content.

**Hierarchia.** Toto je Layer 1 brand stacku. Platí pre **VŠETKY outputy bez výnimky**. Layer 2 packs (`dexfinity-ai-audit-memory`, `dexfinity-ux-memory`) sa pridávajú podľa typu úlohy. Pri konflikte medzi vrstvami pinguj Pavla.

## Čo v tom je (8 súborov)

### Foundational

- **`reference_dexfinity_brand_essence.md`** — Čo Dexfinity je, čo nie je, filozofia Go Beyond, archetype, autoritatívne čísla (69 specialistov, 120+ projektov, 34+ trhov, 10 rokov Premier Partner), klient roster (Foxigy €0→€1.2M, eyerim 12 trhov, Northfinder +62%/+160%/-55%, Powerlogy +170%, BioTechUSA, Aquapond, EMOS, Bombazlava, Shapen, Velvesa, Irisimo, Cedok), ako Dexfinity rozmýšľa.

- **`reference_dexfinity_tone_of_voice.md`** — Value-first, high signal/low noise, senior level, human authenticity. Pavlov LinkedIn štýl = korporátny štandard 1:1. SEO copy pravidlá (title <60, meta <160). Taglines (GO BEYOND, We simplify complexity, Insights over noise, Lokálne porozumenie plus globálny scale).

- **`reference_dexfinity_emoji_system.md`** — Zakázané 🚀🔥🍻. Primárna paleta 💙📘🌀🌐🔵🔹🧊 (s konkrétnym významom). Sekundárna paleta ✨⭐🛸🧿🪼. Pravidlá per kanál (klientske audity = bez emoji, LinkedIn = max 3 funkčné).

- **`reference_dexfinity_messaging_pillars.md`** — Štyri piliere positioning (📘 Know-how, 🌀 AI+simplification, 🌐 Cross-border, 🔵 Performance). Core témy. Typické outputs externé + interné. Event positioning.

- **`feedback_dexfinity_what_we_never_say.md`** — Hard list zakázaných fráz (hype, sales weakness, AI klišé, LinkedIn anti-patterns). Self-check checklist pred odoslaním.

### Vizuálne

- **`feedback_dexfinity_brand_always.md`** — Každý vizuál v Dexfinity brande. Farby, fonty, dekoratívne kruhy, Go Beyond tagline.

- **`feedback_logo_min_sizes.md`** — Nav min 48px, footer min 64px, hero min 80px.

- **`reference_dexfinity_logos.md`** — Oficiálne logo URLs z dexfinity.com (Light pre biele bg, Dark pre navy bg).

## Ako to importovať

```bash
mkdir -p ~/.claude/memory && cd ~/.claude/memory
git clone https://github.com/DXFNT/dexfinity-brand-memory.git
cp dexfinity-brand-memory/memory/*.md .
```

**Update** (ak už máš pack nainštalovaný z minulosti):

```bash
cd ~/.claude/memory/dexfinity-brand-memory
git pull
cp memory/*.md ..
```

Reštartni Claude Code session.

Ak už máš `~/.claude/memory/MEMORY.md` s vlastnými záznamami, **NEPREPISUJ ho** — pridaj riadky z `memory/MEMORY.md` ručne.

## Decision tree (kedy ktorý pack)

```
Robíš audit pre klienta?     → Tento pack + dexfinity-ai-audit-memory
Robíš LinkedIn post?         → Tento pack + LinkedIn skill
Robíš dashboard / report?    → Tento pack + dexfinity-ux-memory + dexfinity-ai-audit-memory
Robíš email klientovi?       → Tento pack stačí (sekcia Tone of Voice)
Robíš prezentáciu / deck?    → Tento pack + dex-design skill
Robíš sales proposal?        → Tento pack + dex-sales-pro skill
Robíš interný update v BC?   → Tento pack stačí (emoji povolené per paleta)
```

## Súvisiace packy a skills

- 📊 **[DXFNT/dexfinity-ai-audit-memory](https://github.com/DXFNT/dexfinity-ai-audit-memory)** — Layer 2. Kompletný AI Ads Audit playbook (15 memory súborov)
- 🧭 **[DXFNT/dexfinity-ux-memory](https://github.com/DXFNT/dexfinity-ux-memory)** — Layer 2. UX patterns z reálnych klientskych auditov (8 súborov)
- 🛠️ **[DXFNT/claude-skills](https://github.com/DXFNT/claude-skills)** — 43 Claude Code skills (install.sh)

## Keď pridávaš nové brand rules

Pošli PR s novým `.md` súborom v `memory/` plus riadkom v `memory/MEMORY.md`. Drž sa naming konvencie. `reference_*` pre stabilné fakty, `feedback_*` pre pravidlá ktoré vznikli z konkrétnej skúsenosti.

---

**Vyrobil.** Pavol Adamčák a Claude
**Verzia.** 1.1 (2026-05-16)
**Predošlé.** v1.0 (2026-04-23) mala len 3 súbory o vizuáli. v1.1 rozširuje pack o voice, archetype, emoji systém, messaging pillars, what-we-never-say.

**Go Beyond.**
