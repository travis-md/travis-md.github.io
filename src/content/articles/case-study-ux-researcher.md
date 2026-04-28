---
title: "Case Study: Building an AI Research Assistant for a Principal UX Researcher"
date: "2025-11-13"
description: "How a principal UX researcher used Claude to run research faster without losing rigor."
---

---

## The Situation

The client is a principal UX researcher at an enterprise organization. Senior, experienced, deeply capable at her craft. She works across Figma, Box, Jira, Confluence, and Glean - the standard enterprise stack for research teams embedded in product orgs. She had been using AI tools in an ad hoc way, with mixed results, and wanted something that actually fit how she worked.

She is not technical. No coding background, no CLI experience, no interest in learning prompt engineering as a discipline. That last part matters. A lot of AI tooling implicitly requires that the person using it be willing to build fluency with the tool itself - to become a prompt engineer, even informally. That's a tax on the researcher that doesn't scale and doesn't belong to the work she's actually hired to do.

The engagement started with a simple goal: give her a fully configured AI research assistant that knows her tools, her standards, and her compliance requirements. Something she could run herself. Something that would survive the end of the engagement without me in the loop.

---

## The Problem Worth Solving

UX researchers generate enormous amounts of qualitative data. Interview transcripts, session recordings, participant observation notes, Figma files with embedded text, synthesis documents, Confluence reports. The work of turning that raw material into insight is meaningful - it requires judgment, pattern recognition, interpretation. But a significant portion of the hours spent on it are not meaningful. They're structural: cleaning notes, tagging themes, formatting reports to spec, standardizing Confluence pages, scanning content for compliance issues before it goes anywhere.

That's where the real opportunity was. Not replacing the researcher's judgment. Eliminating the prep work around it.

The existing AI tools available to her were generic. They didn't know she worked in Figma. They didn't know her report structure or her data standards. Every session started from scratch - she had to re-explain her context, re-specify her format requirements, re-establish what tools she was working with. And they had no concept of her compliance requirements around participant PII, which in enterprise research isn't optional.

The synthesis work was becoming a bottleneck. Research findings were arriving late to design and product decisions because the write-up process was eating the researcher's time. That's a structural problem with a structural solution.

---

## The Design Decisions

Before getting into what was built, the design decisions behind it are worth explaining - because they're not obvious, and getting them wrong would have produced a setup she couldn't maintain.

**Why Claude Code instead of a chat interface.**

Chat interfaces are stateless by default. Every conversation starts fresh. A power user can work around this, but a non-technical user can't - or at least, shouldn't have to. Claude Code gives you persistent, file-based configuration that loads automatically every session. That's the architectural difference that made this possible: her context isn't something she has to re-establish. It's already there when she opens the tool.

**Why CLAUDE.md and context.md are two separate files, not one.**

This is the most important structural decision in the whole setup. CLAUDE.md is permanent configuration - her tools, her report standards, her data handling rules, her participant notation conventions. It changes rarely. context.md is session context - the current research engagement, active participants, project-specific focus areas. It changes every few weeks.

If you put everything in one file, you create a maintenance problem. The researcher has to update a long, complex configuration document every time she starts a new project - and she has to be careful not to accidentally overwrite something important. Separating permanent from temporary means CLAUDE.md is set once and stays stable. context.md is a simple snapshot she refreshes in five minutes at the start of a new engagement. The cognitive load is proportional to the actual change required.

**Why the PII Scanner gates everything.**

Enterprise UX research involves participant data. Names, roles, verbatim quotes, potentially health or financial context depending on the research domain. Before any of that data touches an AI system, it needs to be reviewed for compliance. This isn't a nice-to-have - in most enterprise contexts, it's a requirement.

The PII Scanner isn't sophisticated software. It's a purpose-built skill that surfaces participant identifiers in raw notes before synthesis begins. The design decision was to make it the required first step in any workflow involving participant data - not because I don't trust the researcher, but because compliance gates work best when they're built into the workflow rather than left to individual judgment under deadline pressure. She doesn't have to remember to check. The system is set up so she runs the scan before anything else is possible.

**Why copy-in/copy-out instead of direct integration.**

Claude Code doesn't connect to enterprise systems directly, and even if it could, direct integration with Box, Figma, Jira, and Confluence in an enterprise environment involves IT security review, OAuth configuration, permission scoping, and ongoing maintenance overhead. For a single researcher, that's months of delay and a fragile dependency on systems she doesn't control.

Copy-in/copy-out is unglamorous but it works. Download notes from Box, paste them in. Copy text from Figma, run the extractor skill, use the clean output. Paste Confluence content in, standardize it, paste it back. Each enterprise tool gets a defined, documented workflow that requires no IT involvement, no credential management, and no API maintenance. It's fully within her control, and it works on day one.

The tradeoff is friction - she can't hit a button and have her Box folder analyzed automatically. The judgment call was that a working solution with copy-in/copy-out was better than a seamless solution that wouldn't exist for six months. She agreed.

---

## What Was Built - The Researcher Starter Kit

Four components, each with a specific purpose.

**CLAUDE.md - Permanent Configuration**

This file loads automatically at the start of every Claude Code session. It contains everything that doesn't change between projects: her tool stack (Figma, Box, Jira, Confluence, Glean), her report format and documentation standards, her data handling rules, her participant notation conventions (P1, P2, P3 format), and her compliance requirements.

The practical effect is that she never re-explains her context. Claude knows her world before she types the first word of a session. That's not a small thing - the time and frustration cost of rebuilding context every session was one of the friction points that was making the existing AI tools feel like more work than they were worth.

**context.md - Project Snapshot**

A simple template she fills in at the start of each new research engagement. Current project name, study type, active participants, relevant stakeholders, current phase, any specific focus areas for this cycle. Takes about five minutes. Keeps Claude oriented to the current work without requiring her to rebuild from scratch.

The design principle here was minimum viable context - enough for Claude to understand what she's working on right now, not an exhaustive research brief. Researchers don't need another document to maintain. Five minutes to update context.md is a fair trade for not having to re-explain the project on every session.

**starter-prompts.md - The Cheat Sheet**

A copy-paste prompt library for her most common tasks: synthesizing session notes, extracting themes, drafting Confluence updates, pulling insights for a Jira ticket, formatting a research summary. Each prompt is written to work with her specific context - not generic AI prompts, but prompts that reference her participant notation, her report structure, her documentation standards.

This solves a real problem for non-technical users: the blank cursor problem. Knowing what to type is a learned skill. Removing that barrier means she's starting from a working prompt and adjusting it, not constructing one from scratch.

**Skills Folder - Five Purpose-Built Tools**

Each skill is a structured prompt file that appears as a command in Claude Code. Five were built for this engagement:

*PII Scanner.* Runs before any participant data enters the workflow. Reviews raw notes and surfaces names, identifying information, or sensitive content that should be anonymized before synthesis. Required first step, not optional.

*Interview Synthesizer.* Takes raw session notes in P1/P2/P3 format and converts them into structured synthesis: themes, supporting evidence, participant distribution, design implications. The output format matches her existing report structure - she's not reformatting, she's editing and adding judgment to a working first draft.

*Figma Extractor.* Figma files contain significant amounts of embedded text - UI copy, annotation notes, design rationale, placeholder content. Extracting that text for AI processing is tedious and error-prone by hand. The extractor takes copied Figma text content, cleans it, structures it, and makes it usable for synthesis or documentation work.

*Glean Prompt.* Glean is her organization's internal knowledge retrieval system - institutional documents, past research, internal wikis. The Glean Prompt skill generates structured retrieval queries in the format that surfaces the most relevant internal content, rather than requiring her to figure out Glean's query conventions through trial and error.

*Confluence Standardizer.* Confluence is where research lives in most enterprise organizations, and Confluence pages tend to drift from standard format over time - especially when multiple researchers contribute to a shared space. This skill takes pasted Confluence content and reformats it to her organization's documentation standards, ready to paste back.

---

## The Delivery Standard

The goal I set for myself was that she types `claude` once before the meeting ends. Not a demo. Not a walkthrough that she'd have to recreate on her own later. A working setup that she runs herself, in the meeting, in fifteen minutes.

That standard shaped every decision about complexity. Every component had to be simple enough for a non-technical user to operate and maintain without ongoing support. CLAUDE.md is stable and rarely needs updating. context.md has a clear template. starter-prompts.md is a document she can add to as she discovers new use cases. The skills folder contains files she can read, understand, and eventually modify.

The system was designed to be self-maintaining because a system that requires the consultant to stay involved isn't a solution - it's a dependency.

---

## The Result

A principal UX researcher who is not technical now has a fully configured AI research assistant that:

- Knows her tools, her standards, and her compliance requirements without being told every session
- Can synthesize raw interview notes into structured research output
- Handles the Figma text extraction that was previously done manually
- Gates all participant data through a PII review step before AI processing
- Standardizes Confluence documentation to spec
- Can be updated, maintained, and extended by the researcher herself

Estimated time savings: 3 to 5 hours per research cycle on synthesis and documentation work alone. The more meaningful measure is what happens to those hours - they go back to the interpretive work that actually requires a senior researcher, not to formatting and cleanup that didn't.

The system has no ongoing support dependency. She owns it. If she adds a new project, she updates context.md. If she develops a new standard prompt for a task type she does repeatedly, she adds it to starter-prompts.md. The infrastructure is hers.

---

## What This Pattern Generalizes To

The Researcher Starter Kit is a specific implementation, but the pattern behind it applies broadly to any knowledge worker in an enterprise environment who:

- Works in a defined tool stack with specific standards
- Handles sensitive data that has compliance requirements
- Does high-volume synthesis or documentation work where the bottleneck is time, not judgment
- Is not technical and shouldn't have to become technical to use AI effectively

The design decisions - permanent vs. session context, gated compliance steps, copy-in/copy-out over direct integration, skill-based task structure, self-maintaining architecture - are transferable. The specific implementation changes. The reasoning doesn't.

This is what it looks like to build AI into a workflow, rather than alongside it.