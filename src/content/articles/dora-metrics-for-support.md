---
title: "The Four DORA Metrics Nobody Built for Support Teams. Until Now."
date: "2026-03-18"
description: "Four performance measures for support teams: a direct translation of the DORA software delivery framework."
---

Engineering teams have had a performance measurement framework for over a decade. DORA metrics came out of years of research across thousands of teams and gave engineering leaders something concrete: four numbers that tell you whether your delivery operation is elite or struggling, and why.

Support teams are still measuring tickets closed and call volume.

That's not a small gap. That's a structural blind spot that compounds every year - and with AI entering support operations at scale, it's becoming a competitive liability.

I spent four years at AWS running enterprise customer support across 5,000+ enterprise accounts and a $500M portfolio. During that time I pushed GenAI adoption to 93% across the team, added 45% capacity without headcount, and held 98.5% CSAT across our 192 most strategic enterprise accounts. None of that happened because we tracked handle time better. It happened because we started measuring the right things - and DORA gave us the framework to figure out what "right" actually meant.

Here's the translation I never saw written down anywhere.

## What DORA Actually Measures

DORA measures software delivery performance across two dimensions: throughput and stability. Throughput is how often and how fast you ship. Stability is how often things break and how fast you recover.

The core research finding is counterintuitive to most people the first time they hear it: elite teams are high on both. Not high throughput at the expense of stability. Not high stability through slow, cautious releases. Both, at the same time. That's the insight. Low performers make the tradeoff. Elite performers break it.

Four metrics capture this picture. Two measure throughput: Deployment Frequency and Lead Time for Changes. Two measure stability: Change Failure Rate and Time to Restore Service.

Support operations have the same structure. You are also in the business of throughput and stability. You're just not measuring it that way.

## The Four Support Translations

**First Contact Resolution Rate = Deployment Frequency**

Deployment Frequency asks: how often are you successfully shipping? In support, that question becomes: how often are you successfully resolving a contact on the first try?

FCR is the support equivalent of a clean deployment. Every time a customer reaches out and leaves with their issue resolved, you shipped something. Every time they have to call back, open a follow-up ticket, or escalate, the deployment failed.

Elite engineering teams deploy frequently because they've built the capability to do it reliably. Elite support teams resolve on first contact frequently for the same reason. FCR is a capability metric, not a volume metric. If your FCR is low, you have a capability problem - not a staffing problem.

**Resolution Lead Time = Lead Time for Changes**

Lead Time for Changes measures the time from code commit to production. In support, the equivalent is the time from customer contact to resolution.

This is not handle time. Handle time measures how long an agent was on the phone. Lead Time measures how long the customer waited for their problem to actually be solved. Those are different clocks, and conflating them is one of the most common mistakes in support operations.

A customer who gets put on hold, transferred twice, and resolved in 45 minutes of active handle time may have a contact-to-resolution window of three days. That's the number that matters. That's what the customer experiences.

**Escalation Rate = Change Failure Rate**

This is the sharpest translation in the framework.

Change Failure Rate measures the percentage of changes that result in a failure requiring remediation. In support, escalation IS the failure mode. When a Tier 1 agent cannot resolve a contact and passes it up the chain, the resolution failed at that tier. The contact required remediation.

Most support organizations track escalation rate as a routing metric. They want to know where contacts are going. DORA tells you to track it as a quality metric. It tells you what percentage of your deployments failed.

When you look at escalation rate this way, the questions it generates are completely different. Instead of "how do we route escalations faster," you ask "why are resolutions failing at Tier 1 and what would it take to prevent that?" That's a product question, a training question, a tooling question. It has answers. And closing that loop is what elite teams actually do.

**Escalation Resolution Time = Time to Restore Service**

Time to Restore Service measures how fast you recover after a failure event. In support, once a contact has escalated, the clock is running on how long it takes to fully resolve.

Escalated contacts are your most expensive contacts. They consume senior capacity, they have longer resolution timelines, and they produce worse customer experiences. The teams that are elite on this metric have built infrastructure specifically around recovery: clear SLAs at each escalation tier, warm transfer protocols, tooling that passes context up the chain rather than making customers repeat themselves.

Low performers treat escalation as a normal part of the workflow. Elite performers treat it as an incident.

## The Real Problem Is Activity vs. Performance

The teams that are struggling aren't measuring the wrong metrics by accident. They're measuring activity because activity is easy to count.

Tickets closed is an activity metric. It tells you how many times an agent touched something. FCR is a performance metric. It tells you how many times a customer actually got helped.

Call volume is an activity metric. Resolution Lead Time is a performance metric.

Handle time is an activity metric. Escalation Rate is a performance metric.

The shift from activity to performance measurement is the shift that changes what decisions you're able to make. When you measure activity, you optimize for throughput of work. When you measure performance, you optimize for throughput of outcomes. Those are not the same optimization.

DORA's own research on AI and software delivery found that AI is an amplifier - it magnifies whatever your operation already is. Elite teams that adopt AI get more elite. Struggling teams that adopt AI get more efficient at struggling.

That finding applies directly to support. If your engineering team runs on DORA and your support team runs on spreadsheets, you already know which one is going to scale with AI and which one isn't.

The framework exists. The translation is not complicated. The question is whether your support operation is ready to be measured on performance or whether it's still hiding behind activity.