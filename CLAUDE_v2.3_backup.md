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
on the task at hand:

- 🧭 **Director Mara** (CPO) — leads sessions, plain English summaries,
  final sign-off, post-mortem lead
- 💻 **Eng. Kael** (Lead Engineer) — all build/code/architecture work,
  always explains what code does before writing it
- 🎨 **Designer Yuna** (UX/UI) — interface and usability decisions
- 📊 **Analyst Drex** (Data) — ranking logic, data accuracy
- 🔒 **Officer Sela** (Security) — compliance, API usage, privacy
- 📈 **Strategist Juno** (Growth) — monetization, go-to-market
- 🧪 **Tester Rin** (QA) — test cases, bug log, launch sign-off
- 🚀 **Ops. Finn** (DevOps) — deployment, environment, uptime

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
| White | `#FFFFFF` | Body text on dark backgrounds |

### Brand Visual Language
- Dark near-black backgrounds (`#0A0F1A`) are the default canvas
- Orange (`#F38D01`) is the "action" colour — used for arrows,
  buttons, and conversion elements
- Typography: Montserrat (headings), Arial (body)
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

**macOS version:** Tahoe (macOS 26 beta) — flag compatibility issues.
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

| # | Description | Severity | Status | Fixed in |
|---|-------------|----------|--------|----------|
| 1–7 | Phase 1 build blockers (whisper patch, iCloud xattr codesign failure, entitlements, bundle ID, etc.) | High | ✅ Fixed | Phase 1 (2026-05-18) |
| 8 | All Application Support paths not updated after Phase 2 bundle ID change — models/recordings/sounds saved to wrong folder | High | ✅ Fixed | Phase 2 (2026-05-19) |
| 9 | Settings window silent failure — clicking Settings from menu bar did nothing after Phase 2 rebuild | High | ✅ Fixed | Phase 2 (2026-05-19) |
| 10 | Right Command PTT hotkey not working; Accessibility permission toggle snapping back; Input Monitoring not granted | High | ✅ Fixed | Phase 2 (2026-05-19) |
| 11–16 | Phase 3 integration issues — permissions repair flow edge cases, FSM timer drift, CGEvent tap limitations on Tahoe beta (CR-007) | Medium | ✅ Fixed | Phase 3 (2026-05-20) |
| 17 | Dictionary entries not displaying despite data present on disk — SwiftData multi-store routing bug on macOS Tahoe beta silently returned 0 rows from the wrong store | Medium | ✅ Fixed | Phase 4 (2026-05-21) |
| 18 | Focus Session stutter — Pause/End buttons in menu bar dropdown stutter and scroll randomly; root cause: 1-second timer forcing NSMenu re-layout every tick + duplicate End button in MenuBarView | High | ✅ Fixed | Phase 4 (2026-05-22) — FSM moved to main dashboard; menu bar shows static label only |
| 19 | Right Command key triggers macOS system mic indicator (orange dot) but no transcription occurs after app relaunch — PTT race condition during .starting state; synthetic key-up from CR-007 tap re-enable fired within 1ms of key-down, before 100ms human-release threshold | High | ✅ Fixed | Phase 4 (2026-05-22) — 100ms duration guard added to push-to-talk key-up handler in RecordingShortcutManager |
| 20 | Focus Score algorithm inconsistency — short sessions (9 sec) scored higher than longer sessions (57 sec); root cause: pause component awarded flat 30 points regardless of session duration | High | ✅ Fixed | Phase 4 (2026-05-22) — pause points now scaled by session completion fraction |
| UX-01 | Missing context descriptions — each section/window lacks a plain English explanation of what it does and why. Dashboard, Focus Session, and all settings panels affected. | Medium | ✅ Fixed | Phase 4 (2026-05-22) — description text added to AI Models, Enhancement, Audio Input, Dictionary, Focus Session views |
| UX-02 | Transcription lost when switching apps during recording — text lands in History only, not in the source app (e.g. MS Word). Root cause: no source-app capture at recording start; paste always fires at whatever app is frontmost when transcription finishes. | High | ✅ Fixed | Phase 4 (2026-05-22) — CursorPaster.pasteTargetApp captures source app at CK press; re-activates before paste fires |
| UX-03 | Focus Session and audio recording relationship unclear — users don't understand that CK dictation works independently inside a Focus Session. In-app explanation needed. | Medium | ✅ Fixed | Phase 4 (2026-05-22) — Focus tab idle subtitle updated to explain CK relationship |
| UX-04 | Component definitions missing — Enhancement, AI Models, Audio Input, Dictionary sections have no description of what they do or why to use them. | Medium | ✅ Fixed | Phase 4 (2026-05-22) — see UX-01 |
| UX-05 | "CK" terminology undefined for new users — all in-app text that mentions CK must define it on first use per screen as "Right ⌘ (Right Command Key)". Text-only fix, no logic change. | Medium | ✅ Fixed | Phase 4 (2026-05-22) — FocusSessionView + AudioInputSettingsView updated |
| UX-06 | Focus Session subtitle used "deep-work block" — IP/brand integrity risk; Cal Newport's "Deep Work" terminology must never appear in the app. Replaced with "elite focus block". Full subtitle: "Start a timed elite focus block. Dictate freely with Right ⌘ (Right Command Key) during the session — everything is captured automatically." | High | ✅ Fixed | Phase 4 (2026-05-22) — FocusSessionView.swift idleView subtitle updated; CR-010 added as permanent standing rule |
| BUG-21 | Focus Score OUTPUT pill showing 0 in Session History detail sheet — SwiftData @Model scalar properties (wordCount, pauseCount, focusedTime) fault to default values (0) when read inside a .sheet on macOS Tahoe beta | High | ✅ Fixed | Phase 4 (2026-05-22) — wordCount, focusedTime, targetDuration, pauseCount read in parent FocusSessionView at tap time and passed as plain Swift params to FocusSessionDetailView |
| BUG-22 | Session History detail sheet showing empty state even when dictations exist — SwiftData @Query inside .sheet does not inherit parent model context on macOS Tahoe beta; returns 0 rows (same family as BUG-17) | High | ✅ Fixed | Phase 4 (2026-05-22) — @Query moved to parent FocusSessionView; transcriptions pre-filtered at tap time and passed as plain [Transcription] array; no SwiftData access inside sheet |
| UX-07 | "Want to go deeper?" CTA text — CR-010 adjacent phrasing risk; replaced with ExecEdgePro-native "Ready to go further?" across FocusSessionView.swift and FocusSessionSummaryView.swift | Low | ✅ Fixed | Phase 4 (2026-05-22) — text-only change; CR-010 compliant |

---

## 📐 FAILURE MODE WATCH LIST

| Domain | Risk Level | Status |
|--------|-----------|--------|
| whisper.xcframework build failure | High | Resolved — built, patched, stored at ~/VoiceInk-Dependencies |
| Xcode signing issues | Medium | Resolved — ad-hoc local signing working; app in /Applications |
| macOS Tahoe compatibility | Medium | Active — Tahoe beta restricts Accessibility for apps outside /Applications |
| Shell script side effects | Low | Monitoring |
| Dependency version mismatches | Medium | Monitoring |
| iCloud xattr codesign interference | High | Resolved — build path moved to /tmp/elitewrite-build |
| macOS permissions wiped on bundle ID change | High | Resolved — all permissions re-granted; documented in CR-005 |
| App location restriction (Accessibility) | High | Resolved — Makefile now installs to /Applications on every build |
| Permissions silently invalidated on every rebuild | High | Active — Phase 3 to automate via permissions repair flow |

---

## 📦 CORRECTION REGISTER

*Append-only. Never delete entries.*

### Standing Rules (apply to ALL future work)
- CR-001: Never run shell scripts without explaining them in plain
  English first.
- CR-002: Always confirm the working directory before running any
  command that creates or modifies files.
- CR-003: All build errors are logged in the Bug Log before attempting
  a fix.
- CR-004: Never run `make clean` without first backing up the
  whisper.cpp build and the build-xcframework.sh patch. Running
  `make clean` wipes the entire whisper.cpp build — the macOS-only
  patch must be manually re-applied before the next build.
  Severity: High. Permanent standing rule.
- CR-005: After ANY bundle ID change, ALL macOS privacy permissions
  are wiped. Must re-grant: Accessibility, Input Monitoring,
  Microphone, and Screen Recording. App MUST be in /Applications
  before granting Accessibility — toggling it for an app in
  ~/Downloads silently fails on macOS Tahoe. Use
  `sudo tccutil reset Accessibility <bundle-id>` to clear stale
  entries before re-granting. Input Monitoring requires manual add
  via System Settings. Severity: High. Permanent standing rule.
- CR-006: After every app rebuild or update (`make local`), macOS
  silently invalidates Accessibility and Input Monitoring permissions
  even when they appear green in System Settings. Confirmed fix:
    1. Quit EliteWrite
    2. Run: `tccutil reset Accessibility com.execedgepro.EliteWrite`
    3. System Settings → Accessibility → remove (−) then re-add (+)
       EliteWrite from /Applications
    4. System Settings → Input Monitoring → remove (−) then re-add
       (+) EliteWrite from /Applications
    5. Relaunch EliteWrite
  Cause: ad-hoc code signature hash changes on every rebuild — macOS
  treats it as a new app. Phase 3 to automate this entirely.
  Severity: High. Permanent standing rule.
- CR-007: CGEvent tap (used by ShortcutMonitor for PTT key detection) can be
  silently disabled by macOS Tahoe beta on timeout or user-input guard triggers.
  ShortcutMonitor now re-enables the tap and dispatches synthetic key-ups when
  this happens. Never bypass or remove this re-enable logic.
  Severity: Medium. Permanent standing rule.
- CR-008: Never use SwiftData multi-store (multiple ModelConfiguration objects in
  one ModelContainer) on macOS Tahoe beta. The framework silently routes @Query
  fetches to the wrong store, returning empty results even when data is present on
  disk. All model types — Transcription, VocabularyWord, WordReplacement,
  SessionMetric, FocusSession — must live in a single ModelConfiguration named
  "default" pointing to default.store.
  Severity: High. Permanent standing rule.
- CR-009: Build freshness check is mandatory at every session open. Run:
    find ~/Documents/VoiceInk-Build -name '*.swift' \
      -newer /Applications/EliteWrite.app 2>/dev/null
  If any Swift files are listed, run `make local` before testing. At session
  close, `make local` must be the last action if any Swift files were edited —
  never end a session with untested edits sitting in source but not in the app.
  Severity: Medium. Permanent standing rule.
- CR-010: The phrases "deep work", "deep-work", or "Deep Work" must never appear in any
  in-app text, tooltip, description, log entry, or comment in the codebase.
  Cal Newport's "Deep Work" is trademarked IP — using it creates brand and legal risk.
  Use "elite focus", "focused work", or "elite work block" instead.
  Severity: High. Permanent standing rule.
- DN-01: Double-Escape to confirm recording cancellation is an intentional design decision — approved by founder. Never remove or simplify this to single-Escape. The two-step confirmation prevents accidental session loss during long recordings.
  Severity: N/A. Permanent design decision.

### Open Corrections
| ID | Issue | Severity | Target | Status |
|----|-------|----------|--------|--------|
| (none) | | | | |

### Fixed Corrections
| ID | Issue | Fixed In | Notes |
|----|-------|----------|-------|
| (none) | | | |

---

## 🎯 FOCUS SESSION MODE — FULL FEATURE SPEC (v1.0)
### Council vote: 6/6 · Built in Phase 3 · Owned by Eng. Kael + Designer Yuna

### What it is
A timed transcription mode built around the 25-minute elite focus block
from the Elite Focus Operating System. Users enter intentional,
deliberate sessions — not just quick dictation bursts.

### Interaction model (Director Mara — LOCKED)
- **Primary:** Menu bar icon click — one click starts session, one
  click ends it. Zero keyboard required. Default for all users.
- **Power-user shortcut:** Cmd + Shift + F toggles session on/off.
  No holding required — single tap, not PTT.
- **Quick Dictate mode preserved:** Original PTT hold-to-record
  remains available for quick bursts. Two modes, user chooses.
- PTT is NOT the default for Focus Sessions. Never revert to PTT
  style for FSM without founder approval.

### What it builds (Eng. Kael)
- Session timer UI — 25 min default, user-adjustable (15/25/50 min)
- Session states: idle → active → paused → complete
- Focus Score calculation at session end based on:
  - Session duration completed (% of target)
  - Number of pauses taken
  - Words captured per minute
- Session summary screen showing:
  - Time focused, full transcript, Focus Score (0–100)
  - One-line coaching note tied to score range
- Session history log — tracks focus trend over time
- Soft CTA on summary screen (dismissable):
  "Want to go deeper? The Elite Focus Self-Audit is inside the
  Implementation Kit — execedgepro.com"

### Visual design (Designer Yuna)
- Background: Near-Black #0A0F1A
- Active timer ring + Focus Score number: Edge Orange #F38D01
- Session summary header: Vivid Blue #1479FF
- Coaching note tagline: Gold #FFC000
- Typography: Montserrat headings, Arial body
- Minimal, distraction-free — one screen, no clutter

### Privacy (Officer Sela)
- All session data stays 100% on-device
- No cloud sync, no telemetry, no external API calls

### Commercial bridge (Strategist Juno)
- Focus Score mirrors the Elite Focus Self-Audit in the $49 tier
- Soft CTA appears only after a completed session, never mid-session
- Direct funnel: free app → $49 paid tier → $159 Coach Edition

### QA criteria (Tester Rin)
- [ ] Timer starts, pauses, resumes, completes correctly
- [ ] Focus Score calculates accurately for all session lengths
- [ ] Summary screen renders without errors on macOS Tahoe
- [ ] Edge cases: abandoned session, Mac sleeps, zero words captured
- [ ] Menu bar click reliably toggles session state
- [ ] Cmd+Shift+F shortcut works globally (app not in focus)
- [ ] Quick Dictate PTT mode still works independently

---

## 🗂️ FEATURE BACKLOG (future iterations)

| ID | Feature | Rationale | Owner | Target |
|----|---------|-----------|-------|--------|
| FB-001 | Executive Summary Export | One-tap AI clean-up into bullets/action items. Requires Anthropic API — needs budget decision first. | Eng. Kael | v1.1 / Phase 4 |
| FB-002 | Attention Residue Warning | Detects rapid task-switching, flags focus risk. Requires custom algorithm R&D. | Analyst Drex | v1.2 / Phase 4 |
| FB-003 | License Management | Proper license activation system — requires backend service | TBD | Phase 4 |
| FB-004 | Affiliate Program | Replace Beingpax affiliate with ExecEdgePro program — Gumroad recommended | Strategist Juno | Phase 4 |
| FB-005 | YouTube / Video Guides | Requires ExecEdgePro tutorial content creation first | TBD | Phase 4 |

Rule: No backlog feature is built until the current phase passes
post-mortem and founder gives explicit approval.

---

## 📋 PHASE 3 — CONFIRMED SCOPE & ORDER
### Status: Ready to begin | Director Mara sign-off: ✅
### Updated: May 20, 2026

| # | Task | Effort | Owner | Status |
|---|------|--------|-------|--------|
| 1 | Remove "Pro" suffix from EliteWrite title | 10 min | Eng. Kael | 🔲 Not started |
| 2 | Permissions repair flow — CR-006 automation | 3 hrs | Eng. Kael + Designer Yuna | 🔲 Not started |
| 3 | Focus Session Mode — FSM full build | 4–6 hrs | Eng. Kael + Designer Yuna | 🔲 Not started |
| 4 | Medium effort links — docs, Discord, email, changelog | 2 hrs | Eng. Kael | 🔲 Not started |

**Total estimated Phase 3 effort: 9–12 hours across sessions**

### Task 1 — Remove "Pro" Suffix
- Find and remove "Pro" from the EliteWrite Pro page title
- Result: page shows "EliteWrite" not "EliteWrite Pro"
- Confirm with founder if Pro tier is deliberately planned before removing
- Severity: Cosmetic | Owner: Eng. Kael

### Task 2 — Permissions Repair Flow (CR-006 automation)
**Must be built before Focus Session Mode testing begins.**
Deliverables:
- Permissions health check on every app launch
- One-screen repair guide for non-technical users — no Terminal needed
- Pre-update tccutil reset script bundled with every future build
- User-facing update guide — plain English for what to do after updates

### Task 3 — Focus Session Mode
Full spec documented above in FSM section. Reference:
🎯 FOCUS SESSION MODE — FULL FEATURE SPEC (v1.0)

### Task 4 — Medium Effort Links
| Link | Current State | Target |
|------|--------------|--------|
| Documentation | Removed — was broken | execedgepro.com/docs (create first) |
| Discord | Removed — was VoiceInk | ExecEdgePro Discord (create first) |
| Email support | Removed | support@execedgepro.com (set up first) |
| Changelog | Points to GitHub | EliteWrite public GitHub repo (create first) |

Note: Founder Ferdz must create destinations before Eng. Kael wires links.

### Phase 3 Post-Mortem Trigger
Run /post-mortem phase-3 when ALL of the following are true:
- [ ] All 4 tasks above complete
- [ ] Permissions repair flow tested on a fresh rebuild
- [ ] Focus Session Mode passes all 7 Tester Rin QA criteria
- [ ] No critical bugs in bug log
- [ ] Director Mara sign-off
- [ ] Founder Ferdz final approval

---

## 🔍 PHASE 3 POST-MORTEM PROTOCOL

### Failure Mode Watch List — Phase 3 specific
| Domain | Risk Level | Status |
|--------|-----------|--------|
| FSM timer accuracy | Medium | Pre-build |
| Focus Score algorithm fairness | Medium | Pre-build |
| Menu bar interaction reliability | Low | Pre-build |
| Global shortcut conflicts | Medium | Pre-build |
| Permissions repair flow reliability | High | Pre-build |
| GPL v3.0 compliance | High | Pre-build |
| On-device privacy (no data leaks) | High | Pre-build |
| macOS Tahoe UI compatibility | Medium | Pre-build |

### Post-mortem structure (Director Mara leads)
1. What worked well — each Council member reports one win
2. What failed or almost failed
3. Near-miss risk inventory — Officer Sela + Tester Rin
4. Failure Mode Analysis (table above)
5. Correction Register update
6. Plain English founder debrief:
   - What EliteWrite does well
   - What was fixed before release
   - What is still being monitored
   - 30-day improvement plan

---

## 🚀 DEPLOYMENT GATE — PRE-LAUNCH LEGAL CHECKLIST
### Owner: Officer Sela | Mandatory before ANY public distribution
### Status: Not started — activates after Phase 3 post-mortem passes

**HARD RULE: EliteWrite cannot be distributed publicly — free or paid —
until every item below is signed off by Officer Sela and Director Mara.**

### Gate 1 — GPL v3.0 Compliance
- [ ] CREDITS.md in repo — credits Beingpax/VoiceInk + lists all
      ExecEdgePro modifications
- [ ] LICENSE file (GPL v3.0) present and unchanged
- [ ] Public GitHub repo for EliteWrite modified source — live before
      any binary is distributed
- [ ] About screen: dual copyright notice:
      "Original work © Beingpax (VoiceInk). Modifications © 2026
      ExecEdgePro. Licensed under GPL v3.0."
- [ ] Distribution channel confirmed GPL-compatible:
      - ✅ Direct download from execedgepro.com
      - ✅ GitHub releases
      - ✅ Gumroad direct download
      - ⚠️  Mac App Store — requires separate legal opinion first

### Gate 2 — Trademark & Brand Protection
- [ ] "EliteWrite" trademark search confirmed clear — done May 19 2026
      USPTO ✅ EUIPO ✅ IPOPHL ✅
- [ ] IPOPHL trademark application filed — Class 9 (downloadable
      software) | Budget: PHP 3,200–5,600 + PHP 15,000–30,000 attorney
- [ ] execedgepro.com/elitewrite product page live before launch
- [ ] Social handles secured:
      - [ ] LinkedIn — @EliteWrite company page
      - [ ] Facebook — @EliteWrite page
      - [ ] Instagram — @elitewrite
      - [ ] X (Twitter) — @EliteWrite

### Gate 3 — Technical Legal Requirements
- [ ] App runs from /Applications (CR-005)
- [ ] Sparkle auto-updater disabled or pointing to execedgepro.com
- [ ] No hardcoded API keys or credentials in any distributed file
- [ ] Privacy policy live at execedgepro.com/privacy:
      "EliteWrite processes all audio on-device. No data transmitted."
- [ ] FSM soft CTA link to execedgepro.com confirmed live

### Gate 4 — Apple Code Signing
- [ ] Apple Developer Program enrolled — USD $99/year
      URL: developer.apple.com/programs
- [ ] App signed with Apple Developer certificate
- [ ] App notarized by Apple (required for public distribution)
- [ ] Tested on clean Mac — zero friction install confirmed

**Until Gate 4 complete: trusted users only (right-click → Open).**

### Gate 5 — Commercial Readiness
- [ ] Pricing decided — free, freemium, or paid
- [ ] Payment processor set up — Gumroad recommended
- [ ] Refund policy written and published
- [ ] Support email set up — support@execedgepro.com
- [ ] IPOPHL trademark application filed
- [ ] IP attorney consulted for formal clearance opinion

### Deployment Sign-off (all four required)
- [ ] Officer Sela — legal and compliance cleared
- [ ] Director Mara — product and brand cleared
- [ ] Tester Rin — zero critical bugs in current build
- [ ] Founder Ferdz — final approval

**Signed off: _________________ Date: _________________**

### Deployment Decision Tree
```
1. Phase 3 post-mortem passed?          → NO: stop
2. GPL compliance complete?             → NO: stop
3. Public GitHub repo live?             → NO: stop
4. Privacy policy page live?            → NO: stop
5. App notarized?                       → NO: trusted users only
6. IPOPHL filing done?                  → NO: proceed with caution
7. All gates cleared?                   → YES: cleared for launch 🚀
```

---

## 🔢 RELEASE VERSION

Current: **v0.4.5-item8-complete** (Phase 4 active — Unified Session History View complete; BUG-21/22 fixed; UX-07 CTA text updated; 10/10 Stage 5 pass)

| Version | Date | Summary |
|---------|------|---------|
| v0.1-build | 2026-05-18 | CLAUDE.md initialized, source cloned |
| v0.1-phase1 | 2026-05-18 | Phase 1 complete — VoiceInk.app built; 7 blockers resolved |
| v0.2-phase2 | 2026-05-19 | Phase 2 complete — EliteWrite rebrand; 3 bugs resolved; /Applications |
| v0.3-phase3 | 2026-05-20 | Phase 3 complete — permissions repair flow; Focus Session Mode built; cleanup |
| v0.4-phase4 | 2026-05-21 | Phase 4 opened — dual-engineer protocol; Eng. Petra added; staged build |
| v0.4.1-bug17-fix | 2026-05-21 | BUG-17 fixed — SwiftData consolidated to single default.store |
| v0.4.2-bug18-fix | 2026-05-22 | BUG-18 fixed — Focus Session Mode moved to main dashboard tab; NSMenu stutter eliminated |
| v0.4.3-bug20-fix | 2026-05-22 | BUG-20 fixed — Focus Score pause component now scales with session completion fraction |
| v0.4.4-ux-polish | 2026-05-22 | BUG-19 fixed — 100ms PTT duration guard; UX-05 CK → Right ⌘ text pass; UX-06 deep-work → elite focus; CR-010 added |
| v0.4.5-item8-complete | 2026-05-22 | ITEM 8 complete — Unified Session History View; BUG-21/22 fixed (SwiftData sheet context); UX-07 CTA text updated |

---

## 📌 WHERE WE ARE RIGHT NOW

### Phase 1 — Build (COMPLETE ✅ 2026-05-18)
- [x] Xcode license accepted
- [x] VoiceInk source cloned to VoiceInk-Build folder
- [x] Claude Code installed and authenticated
- [x] CLAUDE.md created
- [x] whisper.xcframework built and patched for macOS Tahoe
- [x] VoiceInk.app compiled and running
- [x] Phase 1 Post-Mortem completed

### Phase 2 — EliteWrite Rebrand (COMPLETE ✅ 2026-05-19)
- [x] App name: VoiceInk → EliteWrite
- [x] Bundle ID: com.prakashjoshipax.VoiceInk → com.execedgepro.EliteWrite
- [x] All Application Support paths updated (6 Swift files)
- [x] Custom sounds path updated
- [x] Settings window bug fixed
- [x] Makefile: build → /tmp, install → /Applications
- [x] All permissions re-granted
- [x] Right Command PTT hotkey working
- [x] Quick wins cleanup complete (strings, links, system info, tip jar)
- [x] Phase 2 Post-Mortem completed

### Phase 3 — COMPLETE ✅ 2026-05-20
- [x] Task 1: Remove "Pro" suffix from EliteWrite title
- [x] Task 2: Permissions repair flow (CR-006 automation)
- [x] Task 3: Focus Session Mode full build
- [x] Task 4: Medium effort links
- [x] Phase 3 Post-Mortem (+ Phase 3 Addendum post-mortem 2026-05-21)

### Phase 4 — ⏸️ PAUSED 2026-05-23
**Pause reason:** Ferdz in convalescence (post-PPV recovery). Deliberate hold — not abandonment.
**Resume trigger:** Ferdz says "resume Phase 4" → Director Mara opens next session formally.
**App state at pause:** Stable and clean. v0.4.5-item8-complete. CR-009 confirmed. All active bugs resolved.

- [x] Dual-engineer protocol established — Eng. Petra active
- [x] Staged build protocol locked in (6 stages)
- [x] BUG-17: SwiftData single-store migration — COMPLETE
- [x] BUG-18: Focus Session stutter — FIXED (FSM moved to main dashboard tab)
- [x] BUG-20: Focus Score algorithm — FIXED (pause points now scale with session completion)
- [x] BUG-19: Right Command key / no transcription — FIXED (2026-05-22) 100ms PTT duration guard
- [x] ITEM 8: Unified Session History View — COMPLETE (2026-05-22) tappable session rows, detail sheet with score breakdown, dictations, BUG-21/22 fixed

#### Phase 4 Remaining Gates (do not start without Ferdz explicit go-ahead)
| # | Item | Dependency | Notes |
|---|------|------------|-------|
| 9 | Apple code signing + notarization | Apple Developer Program enrolment ($99/yr) | Required before public distribution |
| 10 | execedgepro.com/elitewrite product page | execedgepro.com website work (separate Claude.ai project) | Must be live before launch |
| 11 | License Management — EliteWrite branding | None | EliteWrite-branded license system |
| 12 | Affiliate Program link fix | execedgepro.com/elitewrite live | Replace Beingpax affiliate with ExecEdgePro |
| FB-001 | Executive Summary Export | API budget decision from Ferdz | Anthropic API cost TBD |
| FB-002 | Attention Residue Warning | R&D proposal required first | Algorithm design needed |

---

*CLAUDE.md v2.3 | VoiceInk → EliteWrite macOS Build Project*
*Initialized: 2026-05-18 | Updated: 2026-05-23 | Founder: Ferdz*
*Changelog: v1.1 — ExecEdgePro brand context + Phase 2 rebrand plan*
*Changelog: v1.2 — CR-004 (make clean warning)*
*Changelog: v1.3 — Phase 2 complete: bug log, CR-005, release version*
*Changelog: v1.4 — CR-006 (permissions invalidated on every rebuild)*
*Changelog: v1.5 — MERGED: brand architecture policy, FSM spec, Phase 3
  confirmed scope, feature backlog, deployment gate, Phase 4 backlog*
*Update this file after every completed phase using /update-docs*

---

## 🛡️ PHASE 4 QUALITY GATES — DUAL ENGINEER + STAGED BUILD

### Why this exists
Phase 3 and early Phase 4 revealed that single-engineer builds on macOS Tahoe beta
carry hidden risks — silent framework failures, permission loops, and regressions
after cold restarts. A second layer of review is now mandatory before any code
change reaches /Applications.

---

### 👩‍💻 Eng. Petra — Challenger Engineer (NEW)
**Role:** Independent code reviewer. Challenges every solution Eng. Kael proposes
before a single line is written. Petra's job is to find what Kael missed.

**Petra's mandatory questions before any fix proceeds:**
1. Does this change touch any file that has caused a regression before?
2. Could this fix introduce a new failure in a different part of the app?
3. Is there a simpler solution that touches fewer files?
4. What is the worst case if this change fails on Tahoe beta?
5. Has this pattern been tested on a cold restart?

**How the dual-engineer flow works:**
1. Bug reported → Eng. Kael diagnoses and proposes fix
2. Eng. Petra reviews the proposal and raises any concerns
3. Director Mara decides: proceed, modify, or reject
4. Only after Director Mara's go-ahead does Eng. Kael write any code
5. Eng. Petra reviews the written code before make local runs
6. Tester Rin signs off after testing

**Petra never writes code — she only reviews and challenges.**
**Kael never builds without Petra's review.**

---

### 🏗️ STAGED BUILD PROTOCOL (NEW)
Every Phase 4 change follows this sequence. No exceptions.

**Stage 1 — Proposal**
Eng. Kael describes the fix in plain English. Eng. Petra challenges it.
Director Mara approves before any code is written.

**Stage 2 — Code review**
Eng. Kael writes the code changes. Eng. Petra reviews for:
- Regression risk
- Files touched unnecessarily
- Tahoe beta compatibility
- Single-store SwiftData compliance (CR-008)

**Stage 3 — Staging build**
Build is compiled to /tmp/elitewrite-staging/ NOT to /Applications.
```
xcodebuild -project VoiceInk.xcodeproj \
  -scheme VoiceInk \
  -configuration Release \
  CONFIGURATION_BUILD_DIR=/tmp/elitewrite-staging \
  build
```
Tester Rin runs basic smoke tests on the staging build.

**Stage 4 — Production build**
Only after Stage 3 passes: run make local to install to /Applications.
Then run CR-006 permissions sequence.
Then Tester Rin confirms on production build.

**Stage 5 — Cold restart test**
Quit EliteWrite. Wait 30 seconds. Relaunch.
Confirm the fix survives a cold restart before closing the bug.

**Stage 6 — Session close**
Run build freshness check (CR-009).
Confirm make local was the last action.
Document in bug log.

---

### 🚦 PHASE 4 BUILD DECISION MATRIX

| Situation | Action |
|-----------|--------|
| Bug reported | Kael diagnoses → Petra challenges → Mara approves → then code |
| Fix touches FSM files | Petra mandatory cold restart test |
| Fix touches permissions files | Full CR-006 sequence after every build |
| Fix touches SwiftData/models | CR-008 compliance check mandatory |
| Fix touches Makefile | Ops. Finn reviews before approval |
| Any regression found | Immediate stop — post-mortem before continuing |
| Session ending | CR-009 — make local must be last action |

---

### 📋 PETRA'S PRE-BUILD CHECKLIST
Before every make local Petra confirms:
- [ ] Change scope is minimal — only files that must be touched are touched
- [ ] No SwiftData multi-store introduced (CR-008)
- [ ] No files outside VoiceInk-Build folder accessed
- [ ] Permissions implications reviewed
- [ ] Cold restart behaviour considered
- [ ] Tester Rin has a clear test plan ready

If any item is unchecked — build does not proceed.

