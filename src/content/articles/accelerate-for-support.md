---
title: "What DORA's AI Research Actually Says, and Why Every Support Leader Should Read It"
date: "2026-02-10"
description: "Applying the Accelerate/DORA AI Capabilities Model to customer support operations."
---

*The 2025 DORA AI Capabilities Model identifies seven foundational conditions that determine whether AI makes your organization better or worse. I ran a $500M enterprise support organization. Here's what these capabilities look like outside of engineering.*

---

Most conversations about AI in the workplace are about tools. Which tool, how fast, how much it costs. DORA's 2025 research cuts through that and asks a different question: under what conditions does AI actually produce better outcomes?

The answer is uncomfortable for anyone hoping to shortcut the work: **AI is an amplifier.** It magnifies the strengths of high-performing organizations and the dysfunctions of struggling ones. Nearly 90% of technology professionals are already using AI. The gap between who benefits and who doesn't isn't about access to tools. It's about what was built before the tools arrived.

DORA identified seven capabilities that determine whether AI adoption produces real organizational gains or just faster chaos. These capabilities are framed for software engineering teams. But every one of them has a direct equivalent in customer-facing organizations - and most support orgs are failing most of them.

Here's what they mean outside of engineering.

---

## Capability 1: Clear and Communicated AI Stance

DORA's research found that ambiguity around AI stifles adoption and creates risk. Without a clear organizational stance, two failure modes emerge: team members act too conservatively, afraid to use AI for fear of overstepping, or too permissively, using AI in ways that create liability. Neither is optimal.

A clear stance amplifies AI's positive impact on individual effectiveness, organizational performance, and throughput. It also reduces friction. Clarity provides the psychological safety needed for experimentation.

**In support, this failure is everywhere.** Most support organizations have not told their agents what they can and cannot use AI for. Agents are making individual decisions - often inconsistently, often invisibly to leadership. One agent uses AI to draft responses; another refuses to for fear of compliance issues; a third uses it to summarize call notes in ways that violate data policies nobody has thought to articulate yet.

The fix is not a restrictive policy. DORA is explicit: the goal is to be comprehensible and communicated, not permissive or restrictive. A useful framework classifies use cases in three buckets: prohibited (high-risk), permitted with guardrails (approved tools and controls), and actively encouraged (low-risk, high-value). Publish it. Socialize it. Create a feedback loop so agents can ask questions and the policy evolves as the tools do.

I built something like this for a global support team before we deployed AI tools. The 93% adoption rate we achieved came in part because people knew what was permitted and felt safe experimenting within those boundaries. The policy wasn't a gate - it was a runway.

---

## Capability 2: Healthy Data Ecosystems

AI's benefits on organizational performance are significantly amplified by high-quality, accessible, and unified internal data. When data environments are low quality, DORA found that AI creates localized productivity gains that get "absorbed by downstream bottlenecks," resulting in little real value for the organization as a whole.

**In support, your data ecosystem is your knowledge base, your ticket history, your escalation records, your account health data, and your customer relationship context.**

Most support orgs have data. Almost none have a healthy data ecosystem. Knowledge bases are outdated and siloed by team. Ticket history lives in one system, account context in another, escalation records in a third. Nobody owns data quality. Nobody can tell you what your true first-contact resolution rate is across the full system because the data doesn't connect.

AI connected to this environment will produce bad answers. Garbage in, garbage out, but faster and at scale.

The starting point is not a massive consolidation project. DORA's guidance: assign a team to a pilot bounded to one specific application or service. Identify one critical data source - your most-used knowledge base article, your most common escalation type - and make it clean, current, and accessible. Measure the improvement. Build the business case. Then scale.

---

## Capability 3: AI-Accessible Internal Data

This is distinct from data ecosystem health. Healthy data exists. AI-accessible data is healthy data that your AI tools can actually use. DORA calls the shift from prompt engineering to **context engineering** - moving from one-off queries to a system that automatically gathers relevant internal context and provides it to AI tools as a complete briefing.

AI with access to internal context becomes a specialist, not a generic assistant. DORA's research confirmed this amplifies individual effectiveness and code quality with high certainty.

**In support, the equivalent is whether your AI can access your actual playbooks, escalation history, account notes, product documentation, and known issue logs** - or whether it's answering every question from general training data.

A support agent asking an AI tool "what's the standard response for a billing dispute on an enterprise contract" should get an answer that knows your specific EDP terms, your escalation path, your SLA commitments for that customer tier, and the last three interactions with that account. Instead, most get a generic answer that the agent has to manually contextualize anyway.

The path forward is phased. Start with manual context engineering - teach agents to assemble the context the AI needs, not just write a query. Build shared context templates for common scenarios. Then move to automated retrieval: connect AI tools to your most critical internal sources through secure, curated integration. The goal is an AI that understands your organization, not just the general category of your problem.

---

## Capability 4: Strong Version Control Practices

In engineering, version control means every change is tracked, auditable, and reversible. DORA found that frequent commits amplify AI's positive influence on individual effectiveness, and that rollback capability amplifies team performance. This is because AI-assisted coding increases the volume and velocity of change - and without a safety net, that speed becomes instability.

**In support, version control is your process discipline.** Are your playbooks versioned? When you change an escalation path, do you know what it was before? When a process change fails, can you roll back quickly and cleanly?

Most support organizations operate on informal institutional knowledge, Word documents in shared drives, or Confluence pages with no version history and no single owner. Process changes happen via email or Slack. Nobody knows when the current protocol was last updated or why.

DORA's finding applies directly: in a high-velocity environment where AI is accelerating the rate of change, you need the ability to roll back. This means treating your playbooks, templates, escalation frameworks, and response guidelines as versioned artifacts with owners, change logs, and the organizational discipline to revert when something breaks.

---

## Capability 5: Working in Small Batches

AI can generate large amounts of output quickly. DORA's research found that this speed, without the discipline of small batch sizes, increases instability and creates downstream chaos. Working in small batches counteracts this - it channels AI's generative speed into reviewable, testable, deployable units of work.

The data is specific: small batch sizes amplify AI's positive impact on product performance and reduce friction. The tradeoff is a slight reduction in perceived individual effectiveness - but DORA is explicit that individual speed is not the goal. Organizational and product performance are.

**In support, batch size is how large your process changes and escalation deployments are.**

Low-performing support orgs make big changes: reorg the team, rebuild the knowledge base, redesign the escalation framework. These big-bang changes are hard to test, harder to diagnose when they fail, and nearly impossible to roll back.

High-performing support orgs make small, deliberate changes: update one section of the playbook, test a new response template on one account tier, adjust one escalation trigger. Measure. Iterate.

I ran a sprint-based reporting and process improvement cadence at AWS that operated on this principle - small, observable, reversible changes rather than periodic big resets. The sprint cadence created fast feedback loops. Failures were cheap. The system learned faster.

When AI is in the loop, this discipline becomes more important, not less. AI can help you draft ten new response templates in an hour. The question is whether you have the discipline to test and deploy one at a time.

---

## Capability 6: User-Centric Focus

This is where DORA's 2025 research contains its most striking finding for support leaders: **teams with poor user-centric focus that adopt AI see decreased team performance.** Not flat. Decreased.

The logic is direct: AI is an amplifier. If a team is not oriented toward the actual needs of the people they serve, AI accelerates movement in the wrong direction. Speed without a compass is worse than no speed.

Conversely, a team with strong user-centric focus sees team performance increase significantly with AI adoption. DORA found that user-centric focus predicts a 40% improvement in organizational performance.

**In support, user-centric focus is not assumed - it has to be built.** The feature factory failure mode DORA describes (teams measuring output, not outcomes) has a direct support equivalent: teams measuring tickets closed rather than problems solved. AI tools can close tickets faster. They cannot tell you whether the customer's actual problem was resolved.

The diagnostic is simple: what does your team celebrate? If the answer is throughput metrics (tickets closed, response time, SLA compliance) rather than outcome metrics (customer satisfaction, issue recurrence, account health trends), your team is not user-centric in DORA's sense. AI will make you better at the wrong things.

The fix involves making user metrics visible alongside operational metrics, integrating customer feedback loops into the improvement cycle, and connecting team members directly to customer experience rather than intermediating it through aggregated data.

---

## Capability 7: Quality Internal Platforms

DORA found that 90% of organizations have internal platforms and 76% have dedicated platform teams. More importantly: when platform quality is low, AI's effect on organizational performance is negligible. When platform quality is high, AI's effect becomes strong and positive.

The platform's role is to turn individual productivity gains into systemic organizational improvements. Without it, AI-generated gains get swallowed by testing bottlenecks, security reviews, and deployment complexity.

**In support, your platform is your support infrastructure** - your ticketing system, your knowledge management system, your escalation tools, your health monitoring dashboards, your AI tooling. If these systems are fragmented, unintegrated, or poorly documented, individual agents using AI will produce gains that never propagate to the organization.

An agent using AI to draft better responses doesn't help the team if there's no mechanism to share those responses as templates. An AI tool that identifies account risk signals doesn't help the organization if it doesn't connect to the escalation workflow. The platform is what turns individual capability into organizational capability.

The path DORA recommends: treat your support platform as an internal product. Assign ownership. Map developer journeys (in support: agent journeys). Find the points of maximum friction. Build "golden paths" that make the right behavior the easy behavior. Make failure cheap and recovery fast.

---

## The Sequencing That Matters

DORA's core message across all seven capabilities is the same as the original *Accelerate* research: **the fundamentals are prerequisites, not afterthoughts.**

AI does not create generative culture. It does not build healthy data ecosystems. It does not install version control discipline or user-centric focus. It amplifies what is already there.

This is both a warning and an opportunity. The warning: organizations racing to deploy AI tools without doing the foundational work will get faster dysfunction. The opportunity: organizations that build the foundation first will compound their advantage rapidly once AI is layered in. The gap between prepared and unprepared is going to widen significantly over the next two to three years.

When I led AI adoption across a global enterprise support team, we hit 93% adoption and increased production capacity by 45% without adding headcount. That result didn't come from the tools. We had spent four years building psychological safety, measurement discipline, a clear escalation framework, and a culture where failure was investigated rather than buried. The AI came second. The sequencing was not accidental.

The window to build the foundation is now - before AI adoption becomes mandatory rather than strategic.

---

## A Self-Assessment for Support Leaders

Rate your organization on each capability (1–5):

1. **Clear AI stance**: Can every agent on your team tell you what they're allowed to use AI for?
2. **Healthy data ecosystem**: Is your knowledge base current, unified, and trustworthy?
3. **AI-accessible data**: Can your AI tools access account context, escalation history, and internal playbooks?
4. **Version control discipline**: Are your processes versioned, owned, and reversible?
5. **Small batch discipline**: Are your process changes small enough to test and reverse quickly?
6. **User-centric focus**: Does your team measure and celebrate customer outcomes, not just operational throughput?
7. **Platform quality**: Does your support infrastructure turn individual gains into organizational capability?

If your average score is below 3, adding AI tools will accelerate the problems you already have.

Start there.

---

*Morgan Travis is an operations and AI transformation leader who spent four years applying lean and DORA principles to enterprise customer support at AWS. He writes about organizational performance, AI adoption, and building teams that actually work.*

*Sources: Accelerate (Forsgren, Humble, Kim - 2018) · 2024 DORA State of DevOps Report · DORA AI Capabilities Model (2025) · dora.dev/ai*