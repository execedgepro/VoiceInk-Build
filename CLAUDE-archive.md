# CLAUDE-archive.md — EliteWrite Historical Record
*Archived from CLAUDE.md | Do not delete — reference document*
*Last archived: v2.17 | Date: 2026-05-30*

---

## 🐛 BUG LOG — All Resolved (Archived from CLAUDE.md v2.17)

All bugs below confirmed resolved and verified. Root-cause corrections
are permanently logged in the active Correction Register in CLAUDE.md.

| # | Description | Severity | Status | Fixed in |
|---|-------------|----------|--------|----------|
| BUG-17 | SwiftData multi-store silent routing failure on Tahoe beta | Critical | ✅ Fixed | v0.4.1 |
| BUG-18 | Focus Session stutter in NSMenu dropdown | High | ✅ Fixed | v0.4.2 |
| BUG-19 | Right Command key / no transcription (synthetic key-up) | High | ✅ Fixed | v0.4.4 |
| BUG-20 | Focus Score math — short sessions score higher than long | Medium | ✅ Fixed | v0.4.3 |
| BUG-21 | OUTPUT score pill showing 0 for sessions with dictation | Medium | ✅ Fixed | v0.4.5 |
| BUG-22 | Sessions WITH dictation showing empty state incorrectly | High | ✅ Fixed | v0.4.5 |
| BUG-23 | macOS App Restore relaunching cached pre-rebrand build showing "EliteWrite PRO" label | High | ✅ Fixed | Session 12 — state cleared, no Pro strings in code |
| BUG-24 | macOS App Restore loading stale Debug build (v1.76) after Mac shutdown — `.local-build/Build/Products/Debug/EliteWrite.app` persisted with same bundle ID as `/Applications` build; CR-017 physical cleanup was incomplete in BUG-23 fix session | High | ✅ Fixed + Verified | Session 14 — stale Debug artifact removed; NSQuitAlwaysKeepsWindows disabled; CR-017 amended; Step 6 verified by Ferdz ✅ — 57 sessions, 4,008 words, 90.4 WPM, no PRO label, no affiliate card |

**CR cross-references:** BUG-17 → CR-008. BUG-19 → CR-007. BUG-23/24 → CR-017.

---

## ✅ COMPLETED POST-MORTEMS — Phase 4 (Archived from CLAUDE.md v2.17)

| ID | Item | Status | Notes |
|----|------|--------|-------|
| PM-S12 | Post-mortems for Session 12 (BUG-23, Item 12, UX-08) | ✅ Complete — Session 13 | BUG-23 near-miss logged; DN-02 + CR-017 binding corrections confirmed |
| PM-RETRO | Retroactive post-mortem audit across all phases | ✅ Complete — Session 13 | No new CRs required; framework confirmed mature; cleared for Item 9 |

---

## 📦 RELEASE VERSION — Phase 1 through Phase 3 (Archived from CLAUDE.md v2.17)

| Version | Date | Summary |
|---------|------|---------|
| v0.1-build | 2026-05-18 | CLAUDE.md initialized, source cloned |
| v0.1-phase1 | 2026-05-18 | Phase 1 complete — VoiceInk.app built |
| v0.2-phase2 | 2026-05-19 | Phase 2 complete — EliteWrite rebrand |
| v0.3-phase3 | 2026-05-20 | Phase 3 complete — Focus Session Mode built |

---

## 📝 CHANGELOGS — v2.6 through v2.9 (Archived from CLAUDE.md v2.17)

*Changelog: v2.9 — DR-002 clause A6 (Platform & OS Compatibility Claims) added; Gumroad Installation Guidance logged as locked copy asset (Marco Option B — final, Ferdz approved May 2026)*
*Changelog: v2.8 — DR-002 (External Solution Validation Protocol) added as permanent Founder Directive; Validated External Tools log created with 4 initial entries (Canva Video, Gumroad, UTM, BrowserStack); BrowserStack native app testing walk-back formally logged per DR-002 B1*
*Changelog: v2.7 — CR-023 (Large Asset Handoff Protocol) added as permanent standing rule; Approved Marketing Assets section created; EliteWrite Demo Video Teaser v1 logged (https://youtu.be/8mAVDFEuWl8); website alignment and demo video status updated to reflect CTA wired by website team*
*Changelog: v2.6 — DR-001 (Founder Integrity Directive) added as supreme standing rule; DP-001 (Universal Design & Security Protocol) added covering all platforms; SEC-01–04 added to Security Register (Item 9 queue); CR-018/SEC-04 cross-reference confirmed; CR-018–020 added; UX-09/UX-10 flagged; retroactive Phase 4 post-mortem completed*
