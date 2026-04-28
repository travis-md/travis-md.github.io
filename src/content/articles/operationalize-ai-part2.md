---
title: "How to Actually Operationalize AI in a Support Org"
date: "2026-01-14"
description: "How to actually operationalize AI in a support organization."
---

*Part 2 of 2 - Based on DORA's 2025 AI Capabilities Model*

---

Most support leaders I talk to are past the "should we use AI" conversation. They've run pilots. They've bought tools. Some have even hit early wins. The question now is: why doesn't it scale?

DORA's 2025 AI Capabilities Model identifies seven technical and process capabilities that determine whether AI amplifies performance - or amplifies problems. Part 1 covered the first three. Here are the four that break most support orgs.

---

## 1. AI-Accessible Internal Data

DORA reframes this as "context engineering" - not prompt engineering. The difference matters.

Prompt engineering is teaching your agents how to ask better questions. Context engineering is building a system that automatically assembles the right internal information before the question even gets asked.

Generic AI gives generic answers. A support agent asking about a billing dispute shouldn't get a textbook response - they should get an answer that already knows your EDP terms, the escalation path for that account tier, the SLA commitments in place, and the last three interactions with that customer. That's not magic. That's architecture.

When I built the Marquee Customer Experience model at AWS - 192 strategic accounts, 62 dedicated resources, sub-one-hour SLA - the thing that made it work wasn't better agents. It was giving those agents a complete picture before they picked up the phone. AI doesn't change that principle. It accelerates it.

**How to get there:** Start manual. Train your agents to assemble context themselves - account notes, relevant playbook sections, recent ticket history - before engaging AI. That process teaches you what context actually matters. Then automate it with RAG pipelines or MCP integrations that retrieve and inject that context at query time.

Phase one: humans build the habit. Phase two: the system does it automatically. Skip phase one and you'll automate noise.

---

## 2. Working in Small Batches

AI generates large outputs fast. That speed is the risk.

DORA found that small batch discipline is a direct amplifier of performance - it creates tight feedback loops and reduces the cost of being wrong. The engineering equivalent is frequent, small commits versus one massive release.

In support, the temptation is to go big. Rebuild the entire knowledge base. Retrain the full team. Redesign every escalation path. Those initiatives take months, they're impossible to test cleanly, and they're nearly impossible to roll back.

The B.E2E billing program I ran at AWS achieved a 50% reduction in support touches - not through a big-bang process overhaul, but through targeted workflow redesigns that eliminated specific unnecessary handoffs one at a time. We knew what was working because we changed one thing and measured it.

**The support translation:** Run sprint-based process improvement cycles. Pick one playbook section. Test one response template on one tier. Measure the outcome. Iterate. That's not slow - that's the only way to know what's actually driving results versus what just feels like progress.

---

## 3. Strong Version Control and Process Discipline

In engineering, frequent commits combined with rollback capability are proven amplifiers of AI-assisted performance. The logic is simple: if you can't undo a change, you're afraid to make changes. Fear kills iteration.

Now ask yourself: are your playbooks versioned? When you change an escalation path, can you roll back? When a knowledge base article gets updated, do you know who changed it, when, and why?

Most support orgs I've seen run on informal knowledge. Word docs with no owners. Confluence pages that haven't been reviewed since 2022. Escalation frameworks that live in someone's head and get passed down through tribal onboarding.

That works fine until you're feeding it into AI. Then it's a liability. AI will confidently operationalize bad process at scale.

I built a sprint-based reporting system that tracked account health KPIs across five global regions. The reason it sustained 99.9% SLA adherence and 98.5% CSAT wasn't the metrics themselves - it was that we had a disciplined change management process underneath them. Changes were tracked, owned, and reversible.

**The implementation:** Treat your playbooks, escalation frameworks, and response templates as versioned artifacts. Assign owners. Create a change log. Build a rollback process. This is operational hygiene that pays off in every direction - and it's a prerequisite for trusting AI-generated process recommendations.

---

## 4. Quality Internal Platforms

DORA's data on this one is sharp: 90% of organizations have internal platforms. 76% have dedicated platform teams. But when platform quality is low, AI's effect on organizational performance is negligible. When quality is high, AI's effect is strong and positive.

AI doesn't fix a broken platform. It makes the brokenness visible faster.

In support, your internal platform is your ticketing system, your knowledge management tooling, your escalation infrastructure, your health monitoring dashboards. If tickets fall into black holes, if knowledge is siloed across three systems that don't talk to each other, if your escalation tool requires four manual steps - AI doesn't solve those problems. It runs into them at speed.

The 93% GenAI adoption rate and 45% capacity increase I drove at AWS didn't come from deploying AI into a mess. It came after years of treating support infrastructure as an internal product - with a roadmap, with someone accountable for agent experience, with investment in making the underlying systems work.

**The reframe:** Stop thinking of your ticketing system as a vendor relationship and start thinking of it as an internal product. Who's the PM? What does the agent experience roadmap look like? When did you last run user research with your frontline team about what's slowing them down? Those questions determine whether AI investments compound or evaporate.

---

## The Self-Assessment

Rate your org 1–5 on each of the seven DORA AI capabilities in a support context:

| Capability | Score (1–5) |
|---|---|
| Clear and communicated AI stance | |
| Healthy data ecosystem | |
| User-centric focus | |
| AI-accessible internal data | |
| Working in small batches | |
| Process version control and discipline | |
| Quality internal platform | |

**If your average is below 3, adding AI tools will accelerate the problems you already have.**

The good news: these aren't AI problems. They're operations problems that have always mattered. AI just raised the stakes.

Start with the lowest-scoring capability. Fix the foundation. Then let AI do what it's actually good at.

---

*Morgan Travis is an operations and AI transformation leader who spent four years applying lean and DORA principles to enterprise customer support at AWS.*

*Source: DORA AI Capabilities Model (2025) · dora.dev/ai*