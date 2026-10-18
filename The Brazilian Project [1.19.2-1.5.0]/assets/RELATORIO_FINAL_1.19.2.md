# RELATÓRIO FINAL — Resourcepack Update / Version - 1.19.2

## Escopo
- **346 pastas**, **340 com pt_br** (91.113 chaves PT), 305 com EN+PT local.
- Foco desta revisão: ~26 mods delta (pt_br recém-chegados do Suporte/1.19.2) + passada de correções globais em todo o pacote.

## Fases executadas

### 1. Paridade dos pt_br movidos
- 21 mods delta com EN local (`blueprint`, `cloth_config`, `crafting_on_a_stick`, `epherolib`, `fusion`, `geckolib3`, `itemfilters`, `itemrestrictions`, `jupiter`, `libnonymous`, `lodestone`, `modonomicon`, `moonlight`, `placebo`, `polylib`, `puffish_skills`, `refinedstorage`, `runelic`, `simplyswords`, `supermartijn642corelib`, `valhelsia_core`): contagens iguais, **paridade posicional total**, sem chaves ausentes/extras.
- Esqueleto OK, `_comment` preservados, CRLF consistente, sem trailing whitespace.

### 2. Bateria global (366 flags heurísticos → todos classificados)

| Classe | Flags | Resultado |
|---|---|---|
| mob(s)→criatura | 168 | **166 valores convertidos** com concordância feminina revisada (pelos→pelas, atingidos→atingidas, laçados→laçadas, colocados→colocadas, adultos→adultas, nele→nela, deles→delas, cativados→cativadas); protegidos `@mob`, `Mowzie's Mobs`, `Mob Grinding Utils`, `Eldritch Mobs`, `doMobSpawning`/`mobGriefing`, Mobius, Mobile Suit, imobilizar etc. |
| deepslate→Ardosiabissal | 61+11 | ~20 grafias corrigidas (`ardósiabissal`/`Ardósia Abissal`/`ardósia profunda`→`ardosiabissal`); mantidos slates próprios de mod: Gloomslate=Ardósia Sombria, ardósia de telhado, Ferro Preto, Bola Ardósia |
| cor invariável pluralizada | 36 | **36 corrigidas** (Laranjas→Laranja, Rosas→Rosa, Magentas→Magenta, Cianos→Ciano, Marrons→Marrom) |
| bucket "Balde com" | 32 | **32 corrigidas** — conteúdo usa "com" (`Balde com Ácido de Redstone`), material mantém "de" (`Balde de Cerâmica/Edelwood/Aerorraiz com …`) |
| jukebox | 15 | 7 corrigidas (jade, sophisticated_*) — "Toca-Discos"→"Jukebox"; 8 legítimas (cluttered "Record Player" = toca-discos mobília) |
| subtitle | 13 | 3 corrigidas (icebomb "lançada", escudos TC/Metal-Cavaleiro, void_portal particípio); 10 já em particípio oficial |
| death voz passiva | 19 | **18 reescritas em voz ativa** (`%N$s` reordenado — exceção autorizada) |
| deepslate restantes | 61 | corrigidas na passada de grafia |
| upgrade=melhoria | 3 | falsos positivos — nomes de mod |
| welcome | 2 | "Boas-vindas"→"Bem-vindo(a)" |
| zombified piglin | 2 | "Piglin Zumbificado"→"Piglin-Zumbificado" |
| tick | 1 | "ticks/mB"→"tiques/mB" |
| meia-risco | 1 | "2–4"→"2-4" |
| crafting_table | 1 | "mesa de trabalho"→"janela de fabricação" |
| JSON inválido | 1 | dimensional_dungeons — `//` upstream, EN idêntico. Preservado |

### 3. Erros reais adicionais (scans secundários)
- **Placeholders inventados no PT** (arg inexistente no EN — quebra em runtime): `industrial_foregoing.laser_lens`, `relics` cost×3 (parênteses + `%5$s`), `enders_hand`/`ice_breaker`/`hunter_belt` (alcance/dano inventados), `malum.scythe_sweep` (`%2$s` sem agente). Reescritos espelhando o EN.
- **Nomes vanilla**: "Erva Marinha"→"Erva-Marinha" ×4; "Terra Grossa"→"Terra Infértil"; "preto-netherite"→"preto-netherita"; "no void"→"no vazio".
- **deeperdarker**: família `smooth_sculk_stone_*` estava nomeada como Gloomslate → corrigido para Pedra-Sculk Lisa; `Pedra-Dculk`/`Arinidade` typos.

### 4. Validação estrutural
- JSON válido em todos os arquivos tocados (único "inválido" é JSONC upstream em dimensional_dungeons, fiel ao EN).
- Placeholders/§/`\n`/URL íntegros — divergências restantes são **autorizadas/documentadas**:
  - Reordenação `%N$s` em deaths, affixes (apotheosis), barris/storage (sophisticated), curios — necessária à voz ativa/ordem natural PT.
  - `vampirism`: EN `§I` inválido → PT `§l` (correção de bug upstream, igual occultism `'% s'`).
  - cobblepedia/mystical_agriculture: PT enriquece/atualiza links `$(l:https…)` — melhoria do tradutor, documentada.
- **EOL**: 92 pt_br LF → normalizados CRLF (paridade com EN, 100% CRLF).
- **U+FFFD**: 0. **Resíduo EN**: 0 sequências de prosa; `=EN` remanescentes são `_comment` upstream, nomes de mod, formatos, unidades — todos legítimos. Case-diffs: `mB`, `ForceCraft`, `CPUs/SMD/SoCs`, `GUIs` — convenções deliberadas.

## Estado
Todos os 366 flags da bateria foram classificados e os erros reais corrigidos. Log detalhado em `.devin/skills/ptbr-mod-translation-review/ERROS_E_CORRECOES.md`.
