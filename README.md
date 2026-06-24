# GStack Claude Setup

This is a simplified setup guide for integrating GStack with Claude Code.

## Quick Start

1. **Install GStack** (30 seconds)
   ```bash
   cd ~/.claude/skills
   git clone --single-branch --depth 1 https://github.com/garrytan/gstack.git
   cd gstack
   ./setup
   ```

2. **Run Skills** in Claude Code
   - `/office-hours` — Start here. Reframe your product
   - `/plan-ceo-review` — CEO review of your feature idea
   - `/review` — Code review any branch
   - `/qa` — Test your staging URL
   - `/ship` — Ship to production

## What is GStack?

GStack is Garry Tan's open-source software factory that turns Claude Code into a virtual engineering team:

- **CEO** — Rethinks the product (/office-hours, /plan-ceo-review)
- **Eng Manager** — Locks architecture (/plan-eng-review)
- **Designer** — Catches AI slop (/plan-design-review, /design-review)
- **QA Lead** — Tests everything (/qa)
- **Release Engineer** — Ships code (/ship, /land-and-deploy)
- **Debugger** — Systematic root-cause analysis (/investigate)
- **Security Officer** — OWASP + STRIDE (/cso)

## Skills Overview

### Planning Phase
| Skill | Role | What it does |
|-------|------|-----|
| `/office-hours` | YC Office Hours | Reframe product with forcing questions |
| `/plan-ceo-review` | CEO / Founder | Find the 10-star product |
| `/plan-eng-review` | Eng Manager | Lock architecture, tests, edge cases |
| `/plan-design-review` | Designer | Rate design 0-10, find AI slop |
| `/plan-devex-review` | DX Lead | Developer experience audit |

### Building Phase
| Skill | Role | What it does |
|-------|------|-----|
| `/autoplan` | Review Pipeline | CEO → design → eng auto-review |
| `/pair-agent` | Multi-Agent | Coordinate multiple AI agents |
| `/design-consultation` | Design Partner | Build design system from scratch |
| `/design-shotgun` | Design Explorer | Generate 4-6 design variants |
| `/design-html` | Design Engineer | Mockup to production HTML |

### Review Phase
| Skill | Role | What it does |
|-------|------|-----|
| `/review` | Staff Engineer | Find production bugs before they ship |
| `/design-review` | Designer | Live design audit |
| `/devex-review` | DX Tester | Test onboarding, measure TTHW |
| `/investigate` | Debugger | Root-cause debugging |
| `/codex` | Second Opinion | Independent code review (GPT) |
| `/cso` | Security Officer | OWASP + STRIDE threat model |

### Testing Phase
| Skill | Role | What it does |
|-------|------|-----|
| `/qa` | QA Lead | Test, find bugs, fix, verify |
| `/qa-only` | QA Reporter | Report bugs only (no fixes) |
| `/browse` | QA Engineer | Real Chromium browser |

### Release Phase
| Skill | Role | What it does |
|-------|------|-----|
| `/ship` | Release Engineer | Tests → PR → push |
| `/land-and-deploy` | Release Engineer | PR → merge → CI → deploy → verify |
| `/canary` | SRE | Post-deploy monitoring |
| `/benchmark` | Perf Engineer | Page load & Core Web Vitals |

### Documentation Phase
| Skill | Role | What it does |
|-------|------|-----|
| `/document-release` | Tech Writer | Update docs for shipped features |
| `/document-generate` | Doc Author | Generate missing docs from scratch |

### Other Skills
| Skill | Role | What it does |
|-------|------|-----|
| `/retro` | Eng Manager | Weekly retrospective |
| `/learn` | Memory | Manage cross-session learnings |
| `/make-pdf` | Publisher | Markdown → publication-quality PDF |
| `/diagram` | Diagram Maker | English → mermaid + excalidraw |
| `/setup-deploy` | Deploy Config | One-time deploy setup |
| `/setup-gbrain` | GBrain Onboarding | Persistent knowledge base |
| `/gstack-upgrade` | Self-Updater | Upgrade gstack |

## The Sprint

GStack follows the natural flow of product development:

**Think → Plan → Build → Review → Test → Ship → Reflect**

1. **Think** (`/office-hours`) — Reframe the problem
2. **Plan** (`/plan-ceo-review` → `/plan-eng-review` → `/plan-design-review`) — Lock design & architecture
3. **Build** (`/autoplan` or manual `/design-html`) — Write code
4. **Review** (`/review` + `/design-review` + `/cso`) — Catch bugs and slop
5. **Test** (`/qa` + `/browse`) — Find and fix issues
6. **Ship** (`/ship` + `/land-and-deploy`) — Deploy to production
7. **Reflect** (`/retro` + `/document-release`) — Capture learnings

## Installation Methods

### Global Install (Recommended)
```bash
git clone --single-branch --depth 1 https://github.com/garrytan/gstack.git ~/.claude/skills/gstack
cd ~/.claude/skills/gstack
./setup
```

### Team Mode (Auto-update)
```bash
(cd ~/.claude/skills/gstack && ./setup --team)
~/.claude/skills/gstack/bin/gstack-team-init required
git add .claude/ CLAUDE.md
git commit -m "require gstack for AI-assisted work"
```

### Other AI Agents
```bash
./setup --host codex      # OpenAI Codex
./setup --host opencode   # OpenCode
./setup --host factory    # Factory Droid
./setup --host kiro       # Kiro
```

## Documentation

- [Full Skills Guide](https://github.com/garrytan/gstack/blob/main/docs/skills.md) — Deep dives for every skill
- [Architecture](https://github.com/garrytan/gstack/blob/main/ARCHITECTURE.md) — Design decisions
- [Browser Reference](https://github.com/garrytan/gstack/blob/main/BROWSER.md) — `/browse` command reference
- [Contributing](https://github.com/garrytan/gstack/blob/main/CONTRIBUTING.md) — Dev setup

## Uninstall

```bash
~/.claude/skills/gstack/bin/gstack-uninstall
```

Or manually:
```bash
rm -rf ~/.claude/skills/gstack
rm -rf ~/.gstack
```

## Privacy

GStack includes **opt-in** usage telemetry. Default is off — nothing is sent unless you explicitly say yes. No code, file paths, repo names, or prompts are ever sent.

Disable anytime: `gstack-config set telemetry off`

## License

MIT. Free forever. Made by Garry Tan @ Y Combinator.
