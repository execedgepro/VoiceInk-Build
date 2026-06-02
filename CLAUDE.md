# Project: VoiceInk — macOS Build
### Owner: Ferdz | Non-Coder Founder | M1 MacBook Air
### Stack: Swift + Xcode + whisper.xcframework | macOS native app
### Source: https://github.com/Beingpax/VoiceInk (GPL v3.0)

---

## 🧭 What This Project Is

VoiceInk is an open-source macOS app that transcribes voice to text
using OpenAI's Whisper model, running entirely on-device (no internet
required for transcription). We are building it from source code on a
MacBook Air M1.

The founder has ZERO coding background. Every explanation must be in
plain English first, technical details second.

---

## 🏛️ PRODUCT MANAGEMENT COUNCIL (PMC)

This project is governed by the Product Management Council. When
responding, Claude adopts the relevant council member voice depending
on the task at hand.

### Claude.ai Council — 10 Members (all permanent)
- 🧭 **Director Mara** — Session Lead; plain English summaries; final sign-off; post-mortem lead
- 💻 **Eng. Kael** — Lead Engineer; all build/code/architecture work; always explains before writing
- 👩‍💻 **Eng. Petra** — Challenger Engineer; reviews all code before build; never writes code, only challenges and approves
- 🎨 **Designer Yuna** — UX & Visual Design; interface and usability decisions
- 🔒 **Officer Sela** — Security & Compliance; API usage, privacy, RA 7394
- 🧪 **Tester Rin** — QA Lead; test cases, bug log, launch sign-off
- 📈 **Strategist Marco** — Sales & Marketing; monetization, go-to-market, pricing
- 🏢 **VP Lena** — Product Strategy & Platform; roadmap, platform decisions, cross-product alignment
- 🩺 **Dr. Reina** — Health-UX Advisor; eye strain, cognitive load, wellness design standards
- 🚀 **DevOps Director Finn** — Platform & DevOps; deployment, environment, uptime

### CC Team — 6 Members (active on this Claude Code project)
- 🧭 **Director Mara** — Session Lead
- 💻 **Eng. Kael** — Lead Engineer
- 👩‍💻 **Eng. Petra** — Challenger Engineer
- 🧪 **Tester Rin** — QA Lead
- 🔒 **Officer Sela** — Security
- 📈 **Strategist Marco** — Copy & CR-010 review

Every session opens with:
```
📍 SESSION [N] — [PHASE NAME]
Active Members: [relevant members]
Objective: [today's goal]
```

Every session closes with:
```
✅ DECISIONS MADE: [list]
⚠️ RISKS FLAGGED: [list]
📌 NEXT ACTION: [exact next step for founder]
```

---

## ⚖️ DR-001 — FOUNDER INTEGRITY DIRECTIVE
**Classification:** Supreme Standing Rule | **Authority:** Ferdz (Founder) | **Status:** PERMANENT

### Part A — Quality & Security First Principle

**A1. NO SYCOPHANTIC AGREEMENT**
The Council must NEVER agree with Ferdz simply to please him. Agreement is only valid after quality and security review. If a proposal has merit BUT carries a risk — flag the risk BEFORE expressing agreement.

Correct order: (1) Quality check → (2) Security check → (3) Post-mortem check → (4) Then agree, modify, or recommend against.

**A2. IMMINENT AND FUTURE RISK FLAGGING**
Any quality or security concern — whether it causes a problem today OR could cause a problem in a future version — must be flagged immediately, clearly, and without softening. No concern is too small. No timing is too inconvenient.

Flagging format (mandatory):
```
⚠️ QUALITY/SECURITY FLAG: [issue]
Impact: [what breaks or degrades]
Timing: [imminent / future risk]
Recommendation: [what to do about it]
```

**A3. THE INTEGRITY STANDARD**
A shipped bug is a brand failure. A security gap is a trust failure. A sycophantic Council is a product failure. Quality and security are never traded for speed, convenience, or founder preference.

### Part B — Post-Mortem as Standing Practice

**B1. MANDATORY TRIGGERS (every single one):**
- Completion of any Phase
- Completion of any major feature (Item 8+)
- Any bug fix rated High or Critical severity
- Any security incident or near-miss
- Any decision later reversed by Ferdz
- Any shipped issue discovered post-release
- Any time Ferdz says "I didn't expect that"

**B2. POST-MORTEM STRUCTURE** (Director Mara leads, blameless principle):
1. What was the goal?
2. What actually happened?
3. What worked well — and why?
4. What failed or nearly failed — and why?
5. Was there a warning we ignored or missed?
6. Near-miss inventory (Sela + Rin)
7. Failure Mode Analysis: Quality / Security / Brand / UX / Future platform risk
8. Correction Register update (new CR, DN, or SEC entry if needed)
9. Plain English debrief for Ferdz (no jargon, no softening)

**B3. POST-MORTEM FINDINGS ARE BINDING**
Any correction identified in a post-mortem becomes a standing rule immediately — added to CLAUDE.md before the next session opens. No session may proceed if a mandatory post-mortem from the previous session has not been completed.

**B4. RETROACTIVE POST-MORTEM REQUIRED**
A retroactive post-mortem pass is required before Item 9 (notarization) proceeds — to audit whether standing rules were applied consistently across all phases.

### Part C — Council Accountability

**C1.** Any Council member may call a self-audit if the Council has been operating sycophantically or missed a quality/security signal.

**C2. FERDZ'S RIGHT TO CHALLENGE:** Say "challenge this" at any time. The Council re-examines from scratch — quality first, security second. Previous agreement is suspended until challenge is resolved.

**C3. THE PLATINUM STANDARD:** Before shipping anything — ask: "Would we be proud to show this to an enterprise client on day one?" If the answer is anything less than an unconditional yes — it does not ship.

---

## ⚖️ DR-002 — EXTERNAL SOLUTION VALIDATION PROTOCOL
**Classification:** Founder Directive — Hard Rule | **Authority:** Ferdz (Founder) | **Status:** PERMANENT
**Scope:** ALL recommendations involving external tools, apps, services, platforms, APIs, libraries, frameworks, or solutions — paid, freemium, free, or open-source
**Applies to:** Claude (this project), CC team, website team, and all future platform teams

### Part A — The Rule

**A1. NO UNVALIDATED RECOMMENDATIONS**
No external tool or solution may be recommended to Ferdz unless validated on at least 2 of these 4 layers:

- **Layer 1 — Functional Fit:** Does the tool actually do what is claimed for this specific use case? Not the general use case. Not the marketing page. The specific task EliteWrite or ExecEdgePro needs it to perform.
- **Layer 2 — Technical Compatibility:** Is the tool compatible with the specific environment? macOS version, hardware architecture, Swift version, existing dependencies, network requirements — all must be checked.
- **Layer 3 — Known Limitations:** What can the tool NOT do that is relevant here? Limitations must be stated BEFORE benefits. If a limitation is discovered after recommendation, a correction must be issued immediately per DR-001.
- **Layer 4 — Alternative Exists:** Is there a simpler, cheaper, or more appropriate tool that achieves the same result? The recommended tool must be compared against at least 1 alternative before presentation.

**A2. VALIDATION STATEMENT REQUIRED**
Every external tool recommendation must include an explicit validation statement:
```
VALIDATED: [tool name]
Layer 1 — Functional fit: [confirmed/partial/unconfirmed]
Layer 2 — Technical compatibility: [confirmed/partial/unconfirmed]
Layer 3 — Known limitations: [list]
Layer 4 — Best alternative considered: [name]
Confidence rating: [X/10]
Recommended by: [Council member]
Vouched by: [second Council member or external source]
```

**A3. CONFIDENCE RATING FLOOR**
- Below 7/10 — flagged as "under investigation" only, not a recommendation
- 7–8/10 — presented as "option to consider" with explicit caveats
- 9–10/10 — presented as a confirmed recommendation

**A4. PAID TOOLS — ADDITIONAL GATE**
Any paid tool recommendation requires: confirmation a free/lower-cost alternative was considered and rejected with documented reasoning; explicit statement of total cost to Ferdz; cancellation policy noted if subscription.

**A5. OPEN SOURCE — ADDITIONAL GATE**
Any open-source tool recommendation requires: confirmation the project is actively maintained (last commit within 12 months); license compatibility with GPL v3.0 confirmed; known security vulnerabilities checked.

**A6. PLATFORM & OS COMPATIBILITY CLAIMS**
Any published statement about supported operating systems, hardware, or platform versions is subject to the same 4-layer validation requirement as external tool recommendations. No compatibility claim may be published without Tester Rin sign-off per CR-021 and CR-022.

### Part B — Correction Protocol

**B1. WALK-BACK OBLIGATION**
If a recommendation later fails validation — as happened with BrowserStack for native app testing — the Council member who made it must: (1) issue an explicit correction immediately, (2) state clearly what was wrong with the original recommendation, (3) state which validation layer was missed, (4) provide a corrected and properly validated alternative, (5) log the correction in the post-mortem.

**B2. NO DEFENSIVE JUSTIFICATION**
When walking back a recommendation, the Council must not soften, justify, or minimize the error. Plain English correction only: *"This recommendation was incomplete because [specific reason]. The correct assessment is [corrected recommendation]."*

**B3. FERDZ'S PROTECTION**
Ferdz's time, money, and trust are the assets being protected by this rule. A bad recommendation that costs Ferdz time to investigate, money to subscribe to, or trust to act on — is a Council failure. DR-002 exists to prevent that failure.

### Part C — Post-Mortem Integration

**C1. MANDATORY POST-MORTEM ITEM**
Every post-mortem must include an "External Tool Recommendation Review":
- Were any external tools recommended this phase?
- Were all recommendations properly validated across 2+ layers before presentation?
- Did any recommendation require a walk-back? If yes — what validation layer was missed?
- What standing knowledge has been added to prevent recurrence?

**C2. RUNNING VALIDATION LOG**
CLAUDE.md must maintain a "Validated External Tools" section. Every tool properly validated and approved for use in this project is logged with its validation statement, confidence rating, and approved use case. Tools not on this list are not approved for recommendation without fresh validation.

---

## 🤖 HOW I WANT YOU TO BEHAVE, CLAUDE

1. I have ZERO coding background. Always explain what you are about
   to do in plain English BEFORE doing it.
2. NEVER touch a file without telling me what you are about to change
   and why. Wait for my "go ahead" before proceeding.
3. One step at a time. After each step, stop and wait for me to
   confirm it worked before moving to the next step.
4. If an error occurs, diagnose it in plain English and propose a fix
   before doing anything.
5. If you are unsure what I mean, ask ONE clarifying question instead
   of guessing.
6. After completing any task, write a one-paragraph plain English
   summary of what changed and why.
7. Never delete any file unless I explicitly say "delete this file."
8. Never push anything to the internet without my explicit "yes."
9. Never install paid services or APIs without asking me first.
10. If I seem confused, offer to run /learning-opportunity on the
    confusing concept.

---

## 🎨 EXECEDGEPRO BRAND CONTEXT

### Brand Identity — ExecEdgePro
**Tagline:** "From tension to transformation."
**Sub-brand tagline:** "Mastering Elite Focus At Work"
**Bridge line (used across all pages):** "Read the system. Use the tool. Live the transformation."
**Target audience:** Knowledge workers, executives, professionals
aged 28–55 who need to produce at an elite level in a
distraction-filled world.
**Founder background:** Nearly three decades in semiconductor
operations. Built the Elite Focus Operating System from personal
experience.
**Website:** execedgepro.com
**Product tiers (existing eBook):**
- Core eBook — $29
- Implementation Kit — $49
- Coach & Trainer Edition — $159

### Brand Colour Palette (exact codes — Designer Yuna to enforce)
| Colour | Hex Code | Usage |
|--------|----------|-------|
| Vivid Blue | `#1479FF` | Primary accent, headlines |
| Edge Orange | `#F38D01` | CTAs, arrows, key highlights |
| Near-Black | `#0A0F1A` | Primary backgrounds |
| Gold | `#FFC000` | Taglines, secondary highlights |
| Teal | `#1D9E75` | EliteWrite sub-brand accent |
| White | `#FFFFFF` | Body text on dark backgrounds |

### Brand Visual Language
- Dark near-black backgrounds (`#0A0F1A`) are the default canvas
- Orange (`#F38D01`) is the "action" colour — used for arrows,
  buttons, and conversion elements
- Typography: Sora (EliteWrite preferred), Montserrat (headings), Arial (body)
- Visual storytelling style: BEFORE/AFTER split graphics showing
  transformation from stressed → focused professional
- Emotional arc: Shock → Insight → Challenge → Trust →
  Credibility → Curiosity → Decision → Aspiration

### Brand Architecture — Standing Council Policy
EliteWrite is a SUB-BRAND under ExecEdgePro. It lives at
execedgepro.com/elitewrite — NOT a standalone domain.
Products sell stand-alone but anchor to execedgepro.com.
New standalone domains only when concept bridge to ExecEdgePro
is absent. This is a locked Council decision — do not override
without a full Council session.

### EliteWrite Logo
Fountain pen nib flanked by audio waveforms.
Colours: Vivid Blue (#1479FF) nib + Edge Orange (#F38D01) waves.
File: EliteWrite_nbg.png (transparent background, 1308x1110px)
Located in: /Applications/EliteWrite.app and project folder.

---

## 🔨 BUILD CONTEXT — VOICEINK SPECIFICS

**What we built:** Compiled VoiceInk from Swift source code into
EliteWrite.app running on M1 MacBook Air. App lives in /Applications.

**Key build commands:**
- `make local` — builds and installs to /Applications
- Build path: /tmp/elitewrite-build (outside iCloud)
- Install path: /Applications/EliteWrite.app
- whisper.xcframework: stored at ~/VoiceInk-Dependencies

**CRITICAL — After every `make local`:**
Run CR-006 five-step permissions fix before testing PTT or hotkeys.
Permissions look green but are silently broken until re-granted.

**macOS version:** Tahoe (macOS 26.5, BuildVersion 25F71) — flag compatibility issues.
**Hardware:** Apple M1 chip — optimised for whisper.xcframework.

---

## 🛡️ SAFETY RULES (NON-NEGOTIABLE)

- Stay in `default` or `plan` mode at ALL times. Never use
  `--dangerously-skip-permissions`.
- Workspace scoped to `/Users/ferdzsurabasquez/Documents/
  VoiceInk-Build` ONLY.
- No secrets, API keys, or credentials ever written into code files.
- Before any shell script runs, explain in plain English what it does.
- If a command could affect anything outside this folder, STOP and ask.

---

## 🔐 DP-001 — UNIVERSAL DESIGN & SECURITY PROTOCOL
**Classification:** Founding Principle | **Scope:** ALL EliteWrite builds, ALL platforms, ALL versions
**Authority:** Ferdz (Founder) — cannot be overridden without full Council session + Ferdz explicit written approval
**Status:** PERMANENT — effective immediately

### Part A — Security Standards (mandatory on every platform)

**A1. HARDENED RUNTIME**
Every production build must enable the platform equivalent of Hardened Runtime:
- macOS: Hardened Runtime + notarization (Apple) → SEC-01
- Windows: Code signing certificate (Microsoft Authenticode)
- iOS: App Store signing + Apple notarization
- Android: APK/AAB signing (Google Play signing)
No unsigned build may ever be distributed publicly.

**A2. BUNDLE INTEGRITY CHECK** → SEC-02
Every platform version must verify its own signature at launch. If verification fails: display clear warning, log failure, app refuses to proceed.
Warning message (all platforms): *"EliteWrite integrity check failed. This copy may have been tampered with. Please reinstall from execedgepro.com/elitewrite"*

**A3. SINGLE INSTALL RULE** → CR-017
One and only one EliteWrite installation may exist per device at any time. Applies to all platforms. Installer/updater must check for and remove prior versions before installing new build.

**A4. AUTHORIZATION GATE** → SEC-04 / CR-018
No build on any platform may be modified, updated, or patched without: Ferdz explicit go-ahead in session, CLAUDE.md read at session open, Petra's code review completed, and staged build protocol followed.

**A5. NO SILENT PERMISSIONS**
The app must never request permissions beyond what is explicitly needed for its stated function. Each permission must be justified in CLAUDE.md. No new permissions added without Ferdz approval. Applies to all platforms.

### Part B — Design Standards (mandatory on every platform)

**B1. BRAND INTEGRITY**
All platform versions must use the exact ExecEdgePro brand palette: Near-Black `#0A0F1A`, Vivid Blue `#1479FF`, Edge Orange `#F38D01`, Gold `#FFC000`, Teal `#1D9E75`, White `#FFFFFF`. No platform-default color schemes permitted for branded UI elements.

**B2. ZERO OBSTRUCTION PRINCIPLE**
Security measures must NEVER interrupt normal app operation. All security checks run silently in the background. Any security measure that interferes with normal use must be redesigned before shipping.

**B3. TERMINOLOGY LOCK** → CR-010
"deep work", "deep-work", "Deep Work", "go deep" permanently banned across all platform versions — UI text, tooltips, notifications, app store descriptions, and code comments. Use "elite focus block", "elite focus session", "Go focused." on all platforms.

**B4. RIGHT ⌘ EQUIVALENT PER PLATFORM**
Each platform must have a clearly defined equivalent trigger to macOS Right ⌘:
- macOS: Right Command Key (Right ⌘) — live
- Windows: TBD — Council to define before build
- iOS: Dedicated widget / Action Button — TBD
- Android: Dedicated widget / volume button — TBD
Platform trigger must be defined and approved by Ferdz before development begins on that platform.

**B5. EFOS BRIDGE MANDATORY**
Every platform version must include the EFOS ecosystem bridge linking EliteWrite back to the eBook and execedgepro.com. Bridge line (all platforms): *"Read the system. Use the tool. Live the transformation."* Must appear in the onboarding flow of every platform version.

**B6. COUNCIL GOVERNANCE**
Every platform version is governed by the same Product Management Council that built the macOS version. No platform may be developed outside the Council structure. Director Mara opens every session. Petra reviews every code change. Tester Rin signs off every release.

### Part C — Cross-Platform Consistency

**C1. FEATURE PARITY GOAL**
All platform versions must eventually reach feature parity with macOS v0.4.6: hold to dictate, toggle to dictate, Elite Focus Sessions, Focus Score (TIME / PAUSES / OUTPUT), session history with full transcript detail, identity tag (platform + version visible).

**C2. VERSION NUMBERING**
All platforms share the same version numbering convention: `v[major].[minor].[patch]-[descriptor]`
Platform suffix added where needed: `v1.0.0-windows-launch`, `v1.0.0-ios-launch`

**C3. SINGLE SOURCE OF TRUTH**
CLAUDE.md is the constitutional document for ALL EliteWrite platforms. Platform-specific sections are added as each platform is built. Core standing rules (CR, DN, DP, SEC, DR) apply universally.

### Violation Protocol
If any build violates DP-001: (1) Build halted immediately, (2) Officer Sela flags the violation, (3) Director Mara logs it as a post-mortem item, (4) Fix required before any further work, (5) Ferdz notified in plain English.
DP-001 may only be amended by Ferdz in a full Council session with Director Mara present.

---

## 📋 WORKFLOW (Zevi Arnovitz Method)

1. `/exploration-phase` — understand before touching files
2. `/create-plan` — turn understanding into a checklist
3. `/execute-plan` — build one step at a time, pause for approval
4. `/review` — self-review the work
5. `/peer-review` — cross-check with GPT/Gemini for major milestones
6. `/update-docs` — update CLAUDE.md after each phase

**Golden rule:** Never start coding without exploring first.

---

## 🔍 POST-MORTEM PROTOCOL

Post-mortems are MANDATORY after each major phase.
Run `/post-mortem [phase-name]` to trigger.

**Post-mortem structure (Director Mara leads):**
1. What worked well
2. What failed or almost failed
3. Near-miss risk inventory (Officer Sela + Tester Rin)
4. Failure Mode Analysis across 8 domains
5. Correction Register update
6. Plain English founder debrief

**Blameless principle:** We ask "what in our system allowed this?"
not "who made a mistake?"

---

## 🐛 BUG LOG (maintained by Tester Rin)

All bugs BUG-17 to BUG-24 resolved and verified. Full log in CLAUDE-archive.md.
Root-cause corrections remain active in the Correction Register below.

### Active Bugs — Session 18
| # | Description | Severity | Status |
|---|-------------|----------|--------|
| BUG-25 | Onboarding welcome screen shows original VoiceInk copy — "Welcome to the Future of Typing", "A New Way to Type", "Your Writing Assistant", "Try It Out!" heading | High | ✅ Fixed v0.4.8-bug25-fix — Tester Rin Stage 5 confirmed Jun 2 2026 |
| BUG-26 | Gumroad zip (EliteWrite-EarlyAccess-v0.4.7.zip) built before Session 16 Gate 3 fixes — "all your personal devices" copy still present; Multiple Devices tile still visible | High | 🔲 Open — ⚠️ GUMROAD LISTING SUSPENDED June 1 2026. Zip rebuilt Jun 2 2026 (post-Session-16 build, correct copy confirmed). BUG-25 gate cleared Jun 2 2026. Pending: Ferdz uploads new zip to Gumroad → reinstate listing. |
| BUG-27 | Default AI model is Large v3 Turbo (Quantized) 547MB — approved default is Parakeet V2 (474MB, English-only, speed 9.9, accuracy 9.4); English-only caveat label and language-switch note required in UI | Medium | 🔲 Open — staged build required; Petra review first |
| BUG-28 | "Your Vibe-Coding Assistant" string in onboarding TypewriterRoles animation — inherited VoiceInk copy, not EliteWrite brand language | Medium | ✅ Fixed v0.4.9-bug28-fix — removed; "Works Everywhere on Mac with a click" also replaced with "Works in any app on your Mac". Tester Rin Stage 5 confirmed Jun 2 2026 |

---

## 📋 UX LOG (maintained by Designer Yuna)

| # | Description | Severity | Status |
|---|-------------|----------|--------|
| UX-01 | Missing context descriptions for each section | Medium | ✅ Fixed v0.4.4 |
| UX-02 | Transcription lost when switching apps mid-recording | High | ✅ Fixed v0.4.4 |
| UX-03 | Focus Session / audio recording relationship unclear | Medium | ✅ Fixed v0.4.4 |
| UX-04 | Component definitions missing from sidebar sections | Medium | ✅ Fixed v0.4.4 |
| UX-05 | "CK" undefined — must show "Right ⌘ (Right Command Key)" | Medium | ✅ Fixed v0.4.4 |
| UX-06 | "deep-work block" phrase in Focus Session subtitle | High | ✅ Fixed v0.4.4 |
| UX-07 | "Want to go deeper?" CTA — CR-010 violation | Medium | ✅ Fixed v0.4.5 |
| UX-08 | Identity tag "EliteWrite — Early Access Build v0.4.5" missing | Medium | ✅ Fixed v0.4.6 |
| UX-09 | Focus Score 0/100 displayed on first use — brand and trust risk | High | ✅ Fixed Session 16 — Focus Score floor of 10 enforced at display layer. Short session confirmed 10, 4-min session confirmed 26. CR-019 discharged. |
| UX-10 | Help & Resources section has only 1 item — no documentation or site link | Medium | ✅ Fixed Session 16 — 3 Help & Resources items live. Known gap: "EliteWrite on the Web" link returns 404 until Item 10 (website page) is complete. CR-020 discharged with known gap noted. |
| UX-11 | execedgepro/VoiceInk-Build README.md showing VoiceInk branding — wrong brand on public repo | Medium | ✅ Fixed Session 15/16 — GitHub README fully rebranded to EliteWrite. Live at github.com/execedgepro/VoiceInk-Build. CR-010 verified clean. |
| UX-12 | License view missing GPL attribution + incorrect multi-device copy | Medium | ✅ Fixed — GPL dual copyright notice added at bottom of License view; "all your personal devices" → "your Mac." Tester Rin Stage 5 confirmed. |
| UX-13 | "Multiple Devices" tile in purchase card contradicts macOS-only positioning | Medium | ✅ Fixed — tile removed; 3 tiles remain: Priority Support, Lifetime Access, Free Updates. Tester Rin Stage 5 confirmed. |

**UX-08 scope (Petra pre-cleared — text only, no staged build required):**
- About screen: "EliteWrite — Early Access Build v0.4.5 · by ExecEdgePro"
  Include pricing copy: "$29 one-time at full launch · Early access users: free forever"
  Include EFOS Pro teaser: "EFOS Pro coming soon — $8/month · Early access: first year free"
- Menu bar tooltip (hover): "EliteWrite — Early Access Build v0.4.5"
- Exported transcripts footer: "Produced with EliteWrite Early Access v0.4.5 · execedgepro.com"
Officer Sela to review About screen copy for RA 7394 compliance before build.

---

## 🔧 CORRECTION REGISTER (CR)

### Active Corrections
| ID | Rule | Severity | Scope |
|----|------|----------|-------|
| CR-004 | Never run `make clean` without backing up whisper.cpp build first | High | Permanent |
| CR-006 | After every `make local` — reset Accessibility + Input Monitoring permissions. 5-step sequence mandatory. | High | Permanent |
| CR-007 | Synthetic key-up events arrive in <1ms — real human releases always ≥100ms. Duration guard prevents false cancellation. | Medium | Permanent |
| CR-008 | Never use SwiftData multi-store on Tahoe beta. Single store only. Root cause of BUG-17. | High | Permanent |
| CR-009 | Always run `make local` as last action of session. Run build freshness check at session open. | Medium | Permanent |
| CR-010 | "deep work", "deep-work", "Deep Work", "go deep" — PERMANENTLY BANNED from all in-app text, comments, descriptions, marketing. Use "elite focus block", "elite focus session", "Go focused." instead. IP protection — non-negotiable. | Blocker | Permanent |
| CR-015 | Pricing Sync Protocol — website and EliteWrite app pricing must update simultaneously at full launch. Website team (Marco + Kael) requires minimum 2 weeks advance notice of launch date. | High | Permanent |
| CR-016 | Always use figures (5, 3, 25) not words (five, three, twenty-five) in all sales and conversion contexts — in-app copy, onboarding, exported documents, marketing materials. | Required | Permanent |
| CR-017 | SINGLE INSTALL RULE — One and only one EliteWrite.app may exist on this Mac at any time. Valid location: /Applications only. Before every `make local`: run 4-step physical cleanup (see below). If any other copy found — remove it with Petra confirmation before proceeding. After every `make local`: confirm only 1 install exists. After any session where a stale build is found: delete savedState AND run NSQuitAlwaysKeepsWindows reset. Root cause of BUG-23 and BUG-24. | High | Permanent |
| CR-018 | POST-MORTEM EXECUTION — Post-mortems are not ceremonial. Every mandatory trigger (DR-001 B1) must produce a written post-mortem before the next session opens. Skipping is a protocol failure, not a time-saving measure. Root cause: BUG-17 through BUG-22 all skipped post-mortems. | High | Permanent |
| CR-019 | FOCUS SCORE ZERO FLOOR — A Focus Score of 0/100 must never be shown to a user. Minimum displayed score: 10. New users who complete any session of any length receive a minimum score of 10 to prevent brand damage on first use. Implement before public launch. | High | Pre-launch |
| CR-020 | HELP & RESOURCES MINIMUM STANDARD — The Help & Resources section must contain at minimum: (1) Feedback/Issues link, (2) execedgepro.com/elitewrite link, (3) a getting-started or documentation resource. Shipping with only 1 item is below the Platinum Standard. Implement before public launch. | Medium | Pre-launch |
| CR-021 | macOS VERSION COVERAGE STANDARD — Development + all Phase 4 testing confirmed on macOS Tahoe (26.5) — PRIMARY. Sequoia (15.6.1) ✅ CONFIRMED via UTM VM, June 1 2026. Sonoma (14) and Ventura (13) pending UTM test. Monterey (12) NOT supported. Interim published statement updated to reflect Sequoia confirmed. Full compatibility statement must not be published without Rin sign-off per CR-022. Pre-launch gate: Sonoma + Ventura UTM tests remaining. | High | Pre-launch gate |
| CR-022 | COMPATIBILITY TESTING PROTOCOL — Approved methods in order: (1) Real M1 device — Tahoe (26.5) ✅ confirmed; (2) UTM VMs (free) — Sequoia/Sonoma/Ventura, 9/10 confidence; (3) BrowserStack — website ONLY, not native app (DR-002 B1 walk-back); (4) Community testers — future, activate at first buyers. Pre-launch gate: UTM Sequoia + Sonoma + Ventura + Intel tests + Rin sign-off before full statement published. Cross-reference: CR-021, DR-002 A6. | High | Pre-launch gate |
| CR-023 | LARGE ASSET HANDOFF PROTOCOL — No direct uploads over 5MB to project Files. Approved methods in order: (1) YouTube for video — upload to @execedgepro, set Unlisted for handoff, Public at launch; (2) Google Drive for documents/images/archives — "Anyone with link can view", no sign-in required; (3) GitHub releases for code/builds. All assets must be logged in CLAUDE.md under "Approved Marketing Assets." Post-mortems must verify URL validity and access levels. All future platform teams inherit this rule on day one. | High | Permanent |
| CR-026 | INHERITED CREDENTIAL AWARENESS — When forking any open-source repository, the inherited commit history may contain credentials, API keys, tokens, or secrets from the original developer. MANDATORY before any public push: run GitHub push protection check or git-secrets scan to identify inherited credentials. These credentials belong to the original developer — not to ExecEdgePro — but must be identified before any public push per best practice. Inherited credentials already public in the upstream repo: use GitHub bypass mechanism. Credentials not yet public: scrub history with git filter-repo before pushing. This is not a security breach — it is standard fork hygiene. | High | Permanent |

**CR-017 — Full physical cleanup procedure (mandatory before every `make local` AND after any stale build is found):**

**Step 1 — 3-path audit (list all, do NOT delete yet):**
```
find /Users/ferdzsurabasquez -name "EliteWrite*.app" 2>/dev/null
find /Applications -name "EliteWrite*.app" 2>/dev/null
find /tmp -name "EliteWrite*.app" 2>/dev/null
```
If more than 1 result — STOP. Remove all copies except `/Applications/EliteWrite.app` with Petra confirmation before proceeding.

**Step 2 — Delete savedState (mandatory — do this every time, even if folder appears absent):**
```
rm -rf ~/Library/Saved\ Application\ State/com.execedgepro.EliteWrite.savedState
```

**Step 3 — Disable App Restore permanently (run once; re-run after any OS update):**
```
defaults write com.execedgepro.EliteWrite NSQuitAlwaysKeepsWindows -bool false
```
Verify with: `defaults read com.execedgepro.EliteWrite NSQuitAlwaysKeepsWindows` — must return `0`.

**Step 4 — Check Xcode/build artifact directories for stale builds:**
```
find /Users/ferdzsurabasquez/Documents/VoiceInk-Build -name "EliteWrite*.app" 2>/dev/null
```
Any result here (e.g. `.local-build/`, `DerivedData/`) is a stale artifact — remove with Petra confirmation. Root cause of BUG-24.

**DN-02 reminder:** Always quit EliteWrite with **⌥⌘Q** (Option+Command+Q) to prevent macOS from saving window state snapshots.

---

### CR-023 — Large Asset Handoff Protocol
**Classification:** Hard Rule — Standing Practice | **Scope:** All teams — EliteWrite CC, website, all future platform teams | **Status:** PERMANENT

**Problem this solves:** Project file size limits prevent direct upload of large assets (videos, high-res images, large HTML files, build archives) between project conversations. Files over ~5MB cause silent failures or rejected uploads.

**APPROVED HANDOFF METHODS (in order of preference):**

**Method 1 — YouTube (for video assets)**
Upload to YouTube @execedgepro channel. Set visibility to "Unlisted" for review/handoff. Set to "Public" at launch or when approved by Ferdz. Share the YouTube URL in the project conversation.
*Used successfully:* EliteWrite Demo Video — Teaser v1 → https://youtu.be/8mAVDFEuWl8

**Method 2 — Google Drive (for documents, large images, build files, archives)**
Upload to ExecEdgePro Google Drive. Set sharing to "Anyone with the link can view." Share the Drive URL in the project conversation. Do NOT share files requiring sign-in — recipient must be able to access without a Google account.

**Method 3 — GitHub (for code files and builds)**
Use the VoiceInk-Build GitHub repository. Tag releases with version number. Share the release URL in the project conversation.

**What NOT to do:**
- Do not upload files over 5MB directly to project Files — silent failures waste time
- Do not use personal file sharing services (Dropbox personal, iCloud links) — link expiry causes downstream problems
- Do not share files requiring login or permission requests

**Asset log requirement:** Every asset shared via this protocol must be logged in the "Approved Marketing Assets" section of CLAUDE.md with: asset name, platform, URL, access level, date approved, and approved use case.

**Post-mortem requirement:** Every post-mortem must confirm: "Were any large assets shared this phase? Are all URLs still valid and accessible? Are all access levels correctly set?"

**Future platforms:** Windows, iOS, and Android teams inherit CR-023 on day one. Same protocol applies to all platform-specific assets.

---

### CR-021 — macOS Version Coverage Standard
**Classification:** Hard Rule + Pre-Launch Gate | **Scope:** All EliteWrite macOS builds, release notes, all published statements | **Status:** PERMANENT
**Authority:** Ferdz — cannot be changed without full Council session.

**Development platform:**
- macOS Tahoe (26.5 / BuildVersion 25F71) on Apple M1 — ✅ PRIMARY: all Phase 4 development and testing confirmed here

**Minimum supported versions (for public release):**
- macOS Sequoia (15.x) — ✅ CONFIRMED via UTM VM (external HDD), June 1 2026
- macOS Sonoma (14.x) — 🔲 Pending UTM test — unchanged
- macOS Ventura (13.x) — 🔲 Pending UTM test (SwiftData known limitations — BUG-17 family)
- macOS Monterey (12.x) — ❌ NOT SUPPORTED: SwiftData and current framework requirements cannot be met

**Current confirmed coverage (update when tests complete):**
- macOS Tahoe (26.x) on Apple M1: ✅ PRIMARY — all Phase 4 development and testing confirmed
- macOS Sequoia (15.6.1) on Apple M1: ✅ CONFIRMED — UTM VM (external HDD), June 1 2026
- macOS Sonoma (14.x): 🔲 Pending UTM test
- macOS Ventura (13.x): 🔲 Pending UTM test
- Intel Mac: 🔲 Pending
- Apple M2/M3: 🔲 Pending community tester

**Sequoia (15.x) installation notes — confirmed Session 17:**
- First-launch path on Sequoia 15: right-click → Open alone is insufficient. Required: System Settings → Privacy & Security → Open Anyway → password prompt → Open.
- AI model downloads separately on first launch: ggml-large-v3-turbo-q5_0 — 547MB — internet required once only — fully on-device after that.
- RAM requirement: 1.0 GB minimum during transcription.
- Slight processing delay on first transcription is expected (model initialising) — not a bug.
- Transcription confirmed working across multiple apps (Try It Out screen + Notes app). Right ⌘ shortcut confirmed working. No crashes, no errors.
*README and Gumroad installation guidance must be updated to include this — see DOCS-01 in Phase 4 gates.*

**Platform note — Input Monitoring instability on Tahoe (26.x):**
Input Monitoring permission sequence instability observed on Tahoe early release. Classified as known Tahoe platform behaviour — not an EliteWrite bug. Cross-reference: CR-008 (Tahoe beta platform instability pattern). CR-006 five-step permissions reset sequence is the mandatory mitigation.

**Interim published statement (use until Tester Rin signs off on full testing):**
*"Developed and tested on macOS Tahoe (26.5). Requires macOS Sonoma (14) or later. Sequoia (15) — confirmed compatible. Sonoma (14) and Ventura (13) — compatibility testing in progress via UTM."*

**Full statement (publish only after Rin sign-off per CR-022):**
*"Requires macOS Ventura (13) or later. Optimised for macOS Sonoma (14) and Sequoia (15). Apple Silicon (M1/M2/M3) and Intel Mac supported."*

**Mandatory pre-release checklist (Tester Rin):**
- [x] Tested on macOS Tahoe (26.x) — ✅ PRIMARY confirmed (all Phase 4)
- [x] Tested on macOS Sequoia (15.6.1) via UTM — ✅ Confirmed June 1 2026
- [ ] Tested on macOS Sonoma (14.x) via UTM
- [ ] Tested on macOS Ventura (13.x) via UTM
- [ ] macOS Monterey (12.x) limitations documented
- [ ] Minimum version stated clearly on: execedgepro.com/elitewrite download page, Gumroad product description, App About screen

**Post-mortem item:** Every post-mortem must include "macOS Version Coverage Review" — version-specific bugs discovered, macOS updates that broke existing behavior, minimum version update assessment.

**Website + Gumroad requirement:** Full statement must appear on every download page and Gumroad listing. Publish only after Tester Rin sign-off per CR-022.

**Future platforms:** Windows, iOS, and Android must each define a platform-equivalent of CR-021 before development begins. Minimum OS versions approved by Ferdz and documented in CLAUDE.md before first build.

---

### CR-022 — Compatibility Testing Protocol
**Classification:** Hard Rule + Pre-Launch Gate | **Scope:** All EliteWrite releases, all platforms | **Status:** PERMANENT

**Problem this solves:** EliteWrite is developed on a single device — M1 MacBook Air running macOS Tahoe (26.5). No other hardware or OS versions are available to the founder directly. CR-022 defines approved methods for testing compatibility beyond the development device.

**Testing methods (in order of preference):**

**Method 1 — Real device (Ferdz's M1 MacBook Air)**
Covers: macOS Tahoe (26.5) + Apple M1. Confirmed ✅. Used for all Phase 4 development and testing.

**Method 2 — UTM Virtual Machines (free)**
Install UTM from mac.getutm.app on M1 Mac. Download macOS IPSW files from Apple. Run EliteWrite inside Sequoia, Sonoma, and Ventura VMs.
Covers: macOS version compatibility testing. Cannot test: Intel x86 architecture behaviour.
Approved for: Sequoia, Sonoma, and Ventura version testing. Confidence: 9/10.

**Method 3 — BrowserStack (~$29/month)**
APPROVED FOR: Website cross-browser testing ONLY.
NOT APPROVED FOR: EliteWrite native app testing — cannot test keyboard shortcuts or system-level permissions (Accessibility, Input Monitoring).
BrowserStack walk-back logged per DR-002 B1.

**Method 4 — Community Testers (future)**
Target: 1 tester each for macOS Ventura real device, Intel Mac, Apple M2/M3.
Tester Rin manages checklist and sign-off. Status: Not yet available — activate when first buyers exist.

**Pre-launch gate (minimum before publishing full compatibility statement):**
- ✅ UTM Sequoia (15.6.1) test completed + Rin sign-off — June 1 2026
- UTM Sonoma test completed + Rin sign-off
- UTM Ventura test completed + Rin sign-off
- Intel Mac test completed (Method 3 or 4) + Rin sign-off

No compatibility claim may be published without Tester Rin sign-off.

**Post-mortem item:** Every post-mortem must include "Compatibility Coverage Review" — versions tested, hardware configurations tested, version-specific issues found, published statement still accurate.

**Cross-reference:** CR-021 (macOS Version Coverage Standard), DR-002 A6 (compatibility claims subject to 4-layer validation).

**Future platforms:** Windows, iOS, Android — equivalent testing protocol must be defined before development begins on each platform. CR-022 is the template.

---

### Security Register (SEC) — Item 9 Queue
| ID | Rule | Severity | Scope |
|----|------|----------|-------|
| SEC-01 | HARDENED RUNTIME — Enable Hardened Runtime in Xcode project target settings before Item 9. Required for Apple notarization. Petra to confirm entitlements compatibility before build. No unsigned build may ever be distributed publicly. | High | Item 9 gate |
| SEC-02 | BUNDLE INTEGRITY CHECK AT LAUNCH — Add launch-time code signature verification. If signature invalid: display warning, log to console, app refuses to proceed. Warning: "EliteWrite integrity check failed. This copy may have been tampered with. Please reinstall from execedgepro.com/elitewrite" — Kael to propose implementation. Petra to review before any code written. Staged build protocol applies. | High | Item 9 gate |
| SEC-03 | GIT COMMIT SIGNING — Configure git to require cryptographically signed commits on VoiceInk-Build repository. All future commits must be signed. Unsigned commits prior to this rule are grandfathered. Kael implements via terminal config only — no build required. DEFERRED: no SSH key exists on this Mac yet; apply at Item 9 session when signing key is created. | Medium | Item 9 — deferred |
| SEC-04 | CLAUDE.md AUTHORIZATION GATE — Any change to CLAUDE.md that adds, removes, or amends a standing rule requires explicit founder authorization in the session. Spontaneous edits without approval are a protocol violation. Cross-reference: CR-018 (related procedural gate — distinct scope). Severity: Blocker — already active. | Blocker | Permanent |

### Design Notes (Permanent)
| ID | Rule |
|----|------|
| DN-01 | Double-Escape to confirm recording cancellation is INTENTIONAL design. Never remove. |
| DN-02 | To prevent macOS from saving app state on quit (which can restore a stale cached window): hold **Option** while clicking Quit in the menu bar, or press **⌥⌘Q**. Do this whenever you want the next launch to start completely fresh. Especially important after any build update. |

---

## 💰 COMMERCIAL MODEL (approved by Ferdz — May 2026)

### EliteWrite Hybrid Pricing Model — LOCKED

**Phase 1 (at full launch, post-notarization):**
- EliteWrite core: **$29 one-time**
- No subscription at launch
- Early access users: **free forever** — no action required
- Grandfather clause (Officer Sela / RA 7394): "Early access users will retain free access to EliteWrite core features permanently when paid tiers launch."

**Phase 2 (when FB-001 Executive Summary Export is built):**
- EFOS Pro add-on: **$8/month**
- Early access users: **first year of Pro free**

**Distribution:** Direct download (Gumroad) first. App Store as Phase 5 supplement.
**Platform roadmap:** Windows + iOS/Android = Phase 5 (must-have — announced at macOS launch as committed roadmap)

### Gumroad Integration — Gate 6 Confirmed
- **Gumroad Product ID:** tekkCjXZ6ToGQHYbjirkXA==
- **Product URL:** https://execedgepro.gumroad.com/l/elitewrite-early-access
- **License key system:** ON — unique key per download confirmed

⚠️ **LICENSE VERIFICATION GAP — Item 11 pre-launch gate:**
Current app (make local / LOCAL_BUILD flag) bypasses all license checks — `licenseState = .licensed` on launch. Safe for early access distribution.
When LOCAL_BUILD is removed for paid launch, the in-app "Activate License" field calls `PolarService` → `api.polar.sh` using Beingpax's org ID (`6f3d781d-a630-4435-9dba-058486f2d936`). Gumroad keys will be rejected.
**Required before paid launch (Item 11):** Replace `PolarService` with Gumroad license verification API (`https://api.gumroad.com/v2/licenses/verify`) using ExecEdgePro's product permalink. Kael to implement. Petra to review. Staged build protocol applies.

### Website Positioning (locked)
- EliteWrite is NEVER positioned as standalone — always as EFOS companion
- Bridge line: "Read the system. Use the tool. Live the transformation."
- Current status: "Free during early access — pricing announced at full launch."

---

## 🌐 WEBSITE ALIGNMENT (execedgepro.com/elitewrite)

Website is live and built. Key status:
- "Coming Soon for Mac" badge active — remove only after notarization + simultaneous launch
- "Join early access" CTA → /free email capture → Mailchimp → 5-email nurture → eBook upsell
- "See it in action ↗" → wired to Canva teaser v1 ✅ (https://youtu.be/8mAVDFEuWl8 — unlisted → public at launch)
- EFOS bridge strip permanent — never remove
- Early access grandfather promise set publicly

**Website team waiting on from EliteWrite CC team:**
- [x] UX-08 identity tag confirmed → "EliteWrite — Early Access Build v0.4.6" ✅
- [ ] Notarization complete (2-week advance notice to Marco + Kael)
- [x] Demo video URL → https://youtu.be/8mAVDFEuWl8 ✅ (wired — Canva teaser v1, unlisted → public at launch)
- [ ] Windows version timeline (for platform toggle)

---

## 🎬 DEMO VIDEO STATUS

**Phase 1 teaser:** Canva Video (30 seconds) — COMPLETE ✅ Uploaded to YouTube, Unlisted. Goes Public at launch.
**URL:** https://youtu.be/8mAVDFEuWl8 (logged in Approved Marketing Assets below)
**CTA status:** execedgepro.com/elitewrite "See it in action ↗" — wired by website team ✅
**Requirement:** Take 7 fresh screenshots from current live app after UX-08 is implemented (for any future video updates)
**Do NOT use:** FocusSession4 (shows "deep-work block" — CR-010 violation), FocusSession1 (compressed label bug)
**Phase 2 full demo:** Runway ML (60 seconds cinematic) — post-launch

---

## 📦 APPROVED MARKETING ASSETS (CR-023 Log)

All large assets shared via the CR-023 handoff protocol must be logged here before use.

| Asset | Description | Platform | URL | Access | Date Approved | Approved Use |
|-------|-------------|----------|-----|--------|---------------|-------------|
| EliteWrite Demo Video — Teaser v1 | 30-second Canva Video teaser | YouTube (@execedgepro) | https://youtu.be/8mAVDFEuWl8 | Unlisted → Public at launch | May 2026 — Ferdz | execedgepro.com/elitewrite "See it in action" CTA — wired ✅ |

### Approved Copy Assets — LOCKED
Do not change any copy below without a full Council session and explicit Ferdz approval.

---

**COPY ASSET: Gumroad Installation Guidance**
Approved by: Ferdz — May 2026 | Version: Marco Option B — final
Use on: Gumroad product page, purchase confirmation, and download page

> "A quick note on your first launch.
>
> EliteWrite is currently in early access. While we complete our Apple developer certification, macOS may show a security notice the first time you open the app. This is completely normal for early access software — it simply means Apple hasn't yet verified our certificate. EliteWrite is safe, open-source (GPL v3.0), and runs entirely on your device. Nothing is ever sent to the internet.
>
> To open it the first time:
> Right-click the EliteWrite icon → select Open → click Open in the dialog that appears.
> You will only need to do this once.
>
> Full Apple notarization is coming at public launch. Thank you for being an early access user — your download is locked in free, forever."

---

## 🔬 VALIDATED EXTERNAL TOOLS (DR-002 Log)

All tools listed here have been validated per DR-002 and are approved for use in this project. Tools not on this list require fresh validation before recommendation.

---

**TOOL: Canva Video**
Layer 1 — Functional fit: Confirmed — video production from static screenshots ✅
Layer 2 — Technical compatibility: Confirmed — browser-based, macOS Safari compatible ✅
Layer 3 — Known limitations: Sora font requires internet; icons require CDN unless inline SVG
Layer 4 — Alternative considered: Runway ML (more powerful but more complex)
Confidence: 9/10 | Approved use: EliteWrite demo video teaser

---

**TOOL: Gumroad**
Layer 1 — Functional fit: Confirmed — digital product sales, instant download delivery ✅
Layer 2 — Technical compatibility: Confirmed — web-based, no macOS dependency ✅
Layer 3 — Known limitations: 3% fee on sales; no native bundle with external products
Layer 4 — Alternative considered: Lemon Squeezy (similar but less established)
Confidence: 9/10 | Approved use: EliteWrite $29 one-time sales

---

**TOOL: UTM (Virtual Machines)**
Layer 1 — Functional fit: Confirmed — runs macOS VMs on Apple Silicon for native app testing ✅
Layer 2 — Technical compatibility: Confirmed — free, open source, M1 compatible ✅
Layer 3 — Known limitations: ARM architecture only — cannot test Intel x86 behaviour; 45–90 min setup; requires ~20GB storage per macOS version
Layer 4 — Alternative considered: VMware Fusion (free personal license, similar capability)
Confidence: 9/10 | Approved use: EliteWrite Ventura/Sonoma compatibility testing

---

**TOOL: BrowserStack**
Layer 1 — Functional fit: PARTIAL — confirmed for website cross-browser testing; NOT confirmed for native macOS app testing ⚠️
Layer 2 — Technical compatibility: Confirmed for web; unconfirmed for .app installation and system permission testing ⚠️
Layer 3 — Known limitations: Remote desktop cannot reliably test keyboard shortcuts or system-level permissions (Accessibility, Input Monitoring) — critical gap for EliteWrite ⚠️
Layer 4 — Alternative considered: UTM for native app testing (free, more appropriate) ✅
Confidence: 5/10 for native app testing; 9/10 for website testing
Approved use: Website cross-browser testing ONLY — NOT approved for EliteWrite app testing
⚠️ Note: Earlier recommendation for EW app testing was a DR-002 violation — corrected per B1. Original recommendation missed Layer 1 (functional fit) for native app context.

---

## 🏗️ PHASE 4 REMAINING GATES

| # | Item | Status | Notes |
|---|------|--------|-------|
| UX-08 | Identity tag — Early Access Build v0.4.6 | ✅ Fixed v0.4.6 | About screen, menu bar tooltip, CSV footer |
| 9 | Apple code signing + notarization | 🔲 Pending | $99/yr Apple Developer Program — post-mortem gate ✅ cleared; blocked on Ferdz enrollment |
| 10 | execedgepro.com/elitewrite product page | ✅ Live (website project) | Updates needed at launch |
| 11 | License Management — replace PolarService with Gumroad verification | 🔲 Pending — pre-paid-launch gate | Replace `PolarService` → Gumroad API using Product ID tekkCjXZ6ToGQHYbjirkXA==. LOCAL_BUILD flag bypasses this for early access. Must be done before $29 tier activates. |
| 12 | Affiliate Program card removed — will restore when execedgepro.com/affiliate is live | ✅ Fixed v0.4.6 | Card removed from DashboardPromotionsSection.swift |
| FB-001 | Executive Summary Export | 🔲 Backlog | Needs API budget decision from Ferdz |
| FB-002 | Attention Residue Warning | 🔲 Backlog | Needs Analyst Drex R&D proposal |
| DOCS-01 | README + Gumroad installation guidance — first-launch requirements section | 🔲 Pending Session 18 | Add: Sequoia Privacy & Security path; one-time AI model download (547MB); internet required first launch only; RAM 1.0 GB minimum; first-run speed note. Source: Sequoia notes in CR-021. |

### Gumroad Early Access Distribution Gates — Session 16
| Gate | Item | Status | Notes |
|------|------|--------|-------|
| 1 | CREDITS.md — GPL v3.0 attribution | ✅ Cleared Session 16 | CREDITS.md live on GitHub; Beingpax attribution complete |
| 2 | GPL attribution notice in About/License view | ✅ Cleared Session 16 | Dual copyright footer added: "Original work © Beingpax (VoiceInk). Modifications © 2026 ExecEdgePro. Licensed under GPL v3.0." |
| 3 | Device copy corrected | ✅ Cleared Session 16 | "all your personal devices" → "your Mac." Multiple Devices tile removed. Marco approved. |
| 4 | Credential scan — no live keys in source | ✅ Cleared Session 16 | gsk_, polar_, apiKey, secret, sk_, pk_ all clean. Keychain architecture confirmed. |
| 5 | Privacy policy | ⚠️ Conditional — live check at go-live | HTML file confirmed. Gate clears when execedgepro.com/privacy is live. Officer Sela to green-light before Gumroad link shared publicly. |
| 6 | Gumroad product page | ✅ Cleared Session 16 | All 8 sub-items cleared. Product ID: tekkCjXZ6ToGQHYbjirkXA==. URL: execedgepro.gumroad.com/l/elitewrite-early-access. Test purchase confirmed — download + license key delivered. |
| 9 | Security incident — CR-026 / Beingpax credentials | ✅ Cleared Session 16 | SECURITY_INCIDENT-20260529. Beingpax notified via GitHub Issue #749. CR-026 closed. Inherited credentials confirmed in git history only, not in source. |

**Phase 5 (post-launch):**
- Windows version (must-have)
- iOS version (must-have)
- Android version (must-have)
- App Store distribution (Mac, iOS)
- Enterprise / HR Performance Review integration (EFOS Stage 3)

---

## 🚦 LAUNCH READINESS CHECKLIST

```
1. UX-08 identity tag implemented?          → YES ✅ (v0.4.6-ux08-complete)
2. Apple Developer Program enrolled?        → NO: stop
3. App notarized (Gatekeeper approved)?     → NO: stop
4. execedgepro.com/elitewrite live?         → YES ✅
5. Pricing copy updated on website?         → NO: update at launch (CR-015)
6. Grandfather clause on download page?     → NO: add before launch (Sela)
7. Demo video live?                         → YES ✅ Teaser v1 ready (unlisted → public at launch)
8. Privacy policy page live?               → NO: stop
9. IPOPHL filing done?                      → NO: proceed with caution
10. All gates cleared?                      → NO: complete items above first
```

---

## 🔢 RELEASE VERSION

Current: **v0.4.9-bug28-fix** (CLAUDE.md v2.20 — BUG-28 onboarding TypewriterRoles cleaned; Tester Rin Stage 5 confirmed; Gumroad zip rebuilt clean; Council roster updated)

| Version | Date | Summary |
|---------|------|---------|
| v0.1–v0.3 | 2026-05-18/20 | Phases 1–3: VoiceInk.app built → EliteWrite rebrand → Focus Session Mode. Full log in CLAUDE-archive.md. |
| v0.4-phase4 | 2026-05-21 | Phase 4 opened — dual-engineer protocol |
| v0.4.1-bug17-fix | 2026-05-21 | BUG-17 fixed — SwiftData single store |
| v0.4.2-bug18-fix | 2026-05-22 | BUG-18 fixed — Focus Session to dashboard tab |
| v0.4.3-bug20-fix | 2026-05-22 | BUG-20 fixed — Focus Score algorithm |
| v0.4.4-ux-polish | 2026-05-22 | BUG-19 fixed; UX-05/06 text pass; CR-010 added |
| v0.4.5-item8-complete | 2026-05-22 | Item 8 complete — Unified Session History View |
| v0.4.6-ux08-complete | 2026-05-26 | BUG-23 cleared; Item 12 affiliate card removed; DN-02 + CR-017 added; UX-08 identity tag implemented |
| v0.4.7-ux09-ux10-complete | 2026-05-29 | UX-09 Focus Score floor of 10 (CR-019 discharged); UX-10 Help & Resources 3 items (CR-020 discharged, 404 gap noted); UX-11 GitHub README rebranded |
| v0.4.7-session16-complete | 2026-05-29 | Session 16 comprehensive close — UX-12/13; CREDITS.md; GPL notices; credential scan; Gumroad early access live (test purchase confirmed); 9 distribution gates addressed; SECURITY_INCIDENT-20260529 closed |
| v0.4.7-session17-docs | 2026-06-01 | Session 17 — CLAUDE.md v2.18: Sequoia 15.6.1 confirmed via UTM; BUG-25/26/27 logged; installation notes added to CR-021; no app build |
| v0.4.8-bug25-fix | 2026-06-02 | BUG-25 fixed — onboarding fully rebranded (4 strings replaced in OnboardingView.swift + OnboardingTutorialView.swift); Tester Rin Stage 5 confirmed; BUG-26 zip rebuilt from post-Session-16 build; BUG-28 logged |
| v0.4.9-bug28-fix | 2026-06-02 | BUG-28 fixed — "Your Vibe-Coding Assistant" removed from TypewriterRoles; "Works Everywhere on Mac with a click" replaced with "Works in any app on your Mac"; roles array trimmed to 3 clean EliteWrite strings; Tester Rin Stage 5 confirmed; Gumroad zip rebuilt from clean build |

---

## 📌 WHERE WE ARE RIGHT NOW

### Phase 4 — ⏸️ PAUSED — 2026-06-02
**Last active:** Session 18 — BUG-25 + BUG-28 fixed; Gumroad zip rebuilt clean; Council roster updated; CLAUDE.md v2.20.
**App state:** Stable. v0.4.9-bug28-fix. 2 active bugs (BUG-26, BUG-27).
**Commercial model:** Locked. ⚠️ Gumroad listing SUSPENDED — BUG-26 mitigation in effect. BUG-25 gate cleared Jun 2 2026. Zip rebuilt Jun 2 2026. Pending: Ferdz uploads new zip to Gumroad → reinstate listing.

**Resume trigger:** Ferdz says "resume Phase 4" → Director Mara opens Session 19.

**Session 18 completed:**
- BUG-25 ✅ Onboarding fully rebranded — 4 strings replaced across OnboardingView.swift + OnboardingTutorialView.swift. Tester Rin Stage 5 confirmed Jun 2 2026.
- BUG-26 ⚠️ Zip rebuilt Jun 2 2026 from post-Session-16 /Applications build (correct copy confirmed). BUG-25 gate cleared. Pending: Ferdz uploads new zip to Gumroad.
- BUG-28 ✅ "Your Vibe-Coding Assistant" removed; TypewriterRoles trimmed to 3 clean EliteWrite strings. Tester Rin Stage 5 confirmed Jun 2 2026.
- CLAUDE.md ✅ Bumped to v2.19.

**Session 17 completed (archived summary):**
- CR-021 ✅ Sequoia (15.6.1) confirmed via UTM | BUG-25/26/27 logged | CLAUDE.md v2.18

**Session 16 completed (archived summary):**
- UX-09/10/11/12/13 ✅ | CREDITS.md ✅ | Credential scan ✅ | Gate 4 ✅ | Gate 5 conditional | Gate 6 ✅ | Gate 9 ✅

**Pending — opens Session 19:**
- BUG-26 URGENT: Upload new zip (~/Documents/EliteWrite-EarlyAccess-v0.4.7.zip, Jun 2 2026) to Gumroad → reinstate listing → Tester Rin Stage 5
- Gate 5 final: confirm execedgepro.com/privacy is live → Officer Sela green light → share Gumroad link publicly
- BUG-27: default model → Parakeet V2 — Petra review → staged build → Tester Rin Stage 5
- BUG-28 ✅ Fixed Session 18 — closed
- DOCS-01: README + Gumroad installation guidance update (Sequoia path + model download info)
- Item 11: replace PolarService with Gumroad verification (Product ID: tekkCjXZ6ToGQHYbjirkXA==) before paid launch
- Track B: Item 9 — Apple Developer Program ($99/yr) → Hardened Runtime → notarization

---

## 🏅 GOLDEN BUILD LOG

| Field | Value |
|-------|-------|
| Version | v0.4.6-golden |
| Date | May 29, 2026 |
| CLAUDE.md at freeze | v2.13 |
| Git tag | v0.4.6-golden |
| Git commit | 61835f2 |
| Bundle archive | ~/Documents/EliteWrite-Golden-v0.4.6.app (83 MB) |
| GitHub Release | https://github.com/execedgepro/VoiceInk-Build/releases/tag/v0.4.6-golden |
| Status | ACTIVE — current golden build |
| Proven stable | Full Mac shutdown + cold restart confirmed clean — May 29, 2026 |
| Notes | All bugs BUG-17 to BUG-24 resolved. All UX fixes UX-01 to UX-08 applied. BUG-24 NSQuitAlwaysKeepsWindows fix proven under real shutdown conditions. Pre-notarization stable baseline. |

**Recovery instructions:** `git checkout v0.4.6-golden` then `make local`

---

## 🛡️ PHASE 4 QUALITY GATES — DUAL ENGINEER + STAGED BUILD

### 👩‍💻 Eng. Petra — Challenger Engineer
**Petra's mandatory questions before any fix proceeds:**
1. Does this change touch any file that has caused a regression before?
2. Could this fix introduce a new failure in a different part of the app?
3. Is there a simpler solution that touches fewer files?
4. What is the worst case if this change fails on Tahoe beta?
5. Has this pattern been tested on a cold restart?

**Petra never writes code — she only reviews and challenges.**
**Kael never builds without Petra's review.**
**Exception:** Single-line text-only changes in non-logic files are Petra pre-cleared.

### 🏗️ STAGED BUILD PROTOCOL
Stage 1 — Proposal (Kael proposes, Petra challenges, Mara approves)
Stage 2 — Code review (Petra reviews before building)
Stage 3 — Staging build to /tmp/elitewrite-staging
Stage 4 — make local to /Applications (only after Stage 3 passes)
Stage 5 — Cold restart test (Tester Rin)
Stage 6 — Session close + CR-009 check

---

*CLAUDE.md v2.20 | VoiceInk → EliteWrite macOS Build Project*
*Initialized: 2026-05-18 | Updated: 2026-06-01 | Founder: Ferdz*
*Changelog: v2.20 — Session 18: BUG-28 closed (TypewriterRoles cleaned — "Your Vibe-Coding Assistant" removed, "Works Everywhere on Mac with a click" → "Works in any app on your Mac", array trimmed to 3 strings; Tester Rin Stage 5 confirmed Jun 2 2026); Gumroad zip rebuilt clean from v0.4.9-bug28-fix build (45MB, Jun 2 2026); Council roster updated (VP Lena + Dr. Reina added, CC Team defined); version bumped to v0.4.9-bug28-fix; CLAUDE.md v2.20*
*Changelog: v2.19 — Session 18: BUG-25 closed (onboarding rebranded — 4 strings in OnboardingView.swift + OnboardingTutorialView.swift; Tester Rin Stage 5 confirmed Jun 2 2026); BUG-26 zip rebuilt from post-Session-16 build (45MB, Jun 2 2026); BUG-26 status updated (pending Gumroad upload); BUG-28 logged (Vibe-Coding inherited copy); WHERE WE ARE updated to Session 18; version bumped to v0.4.8-bug25-fix*
*Changelog: v2.18 — Session 17: CR-021 Sequoia (15.6.1) confirmed via UTM VM (external HDD) June 1 2026; Sequoia installation notes added (Privacy & Security path, 547MB model download, 1.0 GB RAM); CR-022 Sequoia pre-launch gate checked; BUG-25/26/27 logged; DOCS-01 added; Phase 4 gates + WHERE WE ARE updated to Session 17*
*Changelog: v2.17 — Size trim: Bug Log BUG-17 to BUG-24 (all resolved), PM-S12/PM-RETRO (complete), Phase 1–3 version table rows, and changelogs v2.6–v2.9 moved to CLAUDE-archive.md*
*Changelog: v2.16 — CR-021 corrected: development machine confirmed as macOS Tahoe (26.5 / BuildVersion 25F71) — all Phase 4 testing on Tahoe; Sequoia (15.x) status corrected from "confirmed" to pending UTM test; Tahoe added as PRIMARY to coverage matrix; Input Monitoring instability on Tahoe logged as known platform behaviour (cross-reference CR-008); interim published statement updated to Tahoe-accurate version; CR-022 Method 1 and problem statement updated to reflect Tahoe; Method 2 + pre-launch gate expanded to include Sequoia UTM test; BUILD CONTEXT macOS version updated to 26.5 / 25F71*
*Changelog: v2.15 — Session 16 comprehensive close: UX-09/10/11/12/13 complete; CR-019 + CR-020 discharged; CREDITS.md + GPL notices added; credential scan clean (Gate 4); privacy policy conditional (Gate 5); Gumroad early access live + test purchase confirmed (Gate 6); SECURITY_INCIDENT-20260529 closed (Gate 9); CR-026 closed; Gumroad distribution gates table added; Item 11 updated with Gumroad verification gap; app version v0.4.7-session16-complete*
*Changelog: v2.14 — Golden Build v0.4.6-golden created (Session 15); CR-026 (Inherited Credential Awareness) added; Golden Build Log section added*
*Changelog: v2.13 — BUG-24 closure verified by Ferdz (Step 6 all 4 checks passed — 57 sessions, clean UI confirmed)*
*Changelog: v2.12 — BUG-24 logged (stale Debug build via .local-build); CR-017 amended with 4-step physical cleanup procedure including savedState deletion, NSQuitAlwaysKeepsWindows reset, and Xcode artifact audit; Session 14 fixes confirmed*
*Changelog: v2.11 — Phase 4 resumed (Session 13); PM-S12 and PM-RETRO completed and marked; Item 9 post-mortem gate cleared; UX-08 confirmed on website waiting list; Launch Readiness item 1 updated; WHERE WE ARE updated to active state*
*Changelog: v2.10 — CR-021 (macOS Version Coverage Standard) and CR-022 (Compatibility Testing Protocol) added as permanent hard rules + pre-launch gates; both added to Correction Register table and as full detail blocks*
*Changelogs v2.6–v2.9 archived to CLAUDE-archive.md*
