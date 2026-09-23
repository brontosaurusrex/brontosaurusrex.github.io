---
published: true
layout: post
date: '2026-09-23 09:34 +0000'
title: "Standardization is useful; monoculture is risky"
tags: misc linux 
---

TLDR: This is about CERN picking Debian for some of their fleet.

<https://blog.melashri.net/posts/scientific-linux-mistake>  
<https://news.ycombinator.com/item?id=49813286>

Written by ai:

## Toc
{:.no_toc}

* TOC
{:toc}

## Scientific Linux: What It Was and Why It Mattered

Scientific Linux was a free, community-maintained rebuild of Red Hat Enterprise Linux (RHEL), created primarily by Fermilab and CERN for research institutions. Its purpose was not to provide a large collection of specialist scientific applications, but to offer laboratories, universities, servers, desktops, and computing clusters a stable, long-lived, RHEL-compatible operating system without requiring a commercial licence for every machine.

## Why Scientific Linux existed

Large scientific collaborations run software across laboratories, universities, computing centres, and countries. A common operating system gives these institutions compatible libraries, packaging, binaries, and predictable long-term support.

Scientific Linux also gave the research community something less visible but strategically important: an independently maintained implementation of the Enterprise Linux platform. The institutions using it retained the people, infrastructure, procedures, and knowledge required to reproduce and support their own operating-system environment.

## Why it was discontinued

After Red Hat and CentOS joined forces in 2014, CentOS appeared to provide essentially the same freely available, RHEL-compatible platform with a larger community. CERN began adopting CentOS 7, and in 2019 Fermilab announced that there would be no Scientific Linux 8.

At the time, this was a reasonable efficiency decision: maintaining a separate distribution required package rebuilding, testing, security updates, repositories, release engineering, and user support. What the calculation undervalued was the benefit of retaining a credible independent alternative.

## What happened afterward

In 2020, Red Hat discontinued the traditional downstream CentOS Linux rebuild in favour of CentOS Stream, which sits ahead of RHEL. CERN and Fermilab consequently had to reconsider their platform and eventually recommended AlmaLinux for experiments.

Red Hat later changed the public distribution of RHEL-related source code, further demonstrating that technical compatibility with a vendor-controlled platform is not the same as institutional independence.

CERN subsequently encountered another problem: newer RHEL versions increased their minimum x86-64 CPU requirements. Many accelerator-control computers are connected to specialist electronics, legacy buses, and custom hardware that can remain operational for decades. Replacing those computers could also require redesigning boards, recabling racks, and recommissioning equipment.

Rather than replacing millions of francs' worth of functioning hardware to satisfy the operating system, CERN chose a different operating system. By the end of 2026, more than 2,200 accelerator front-end and embedded systems were expected to run Debian 13. CERN also began supporting Debian's long-term-maintenance ecosystem.

## Software included with Scientific Linux

The exact selection depended on the Scientific Linux release and the chosen installation profile. Because the distribution closely rebuilt RHEL, most of its software came directly from the corresponding Enterprise Linux release.

Typical software available through its installation media and repositories included:

- GNOME, with KDE and the lightweight IceWM as alternative desktops
- Firefox, LibreOffice, and standard desktop utilities
- GCC, Make, Git, Python, Perl, and other development tools
- Apache, Samba, OpenSSH, and common server software
- MySQL or MariaDB and PostgreSQL
- Numerical and technical packages such as NumPy, FFTW, and Graphviz
- Networking, clustering, storage, and virtualization tools inherited from RHEL

Scientific Linux itself added a relatively small set of packages and adaptations:

- **OpenAFS**, a distributed filesystem widely used by universities and research laboratories
- **IceWM**, useful on older or resource-constrained computers
- Tools for producing customised Scientific Linux installations or institutional “spins”
- Automatic-update and repository-configuration packages
- Scientific Linux branding and mechanisms for site-specific customisation

Despite its name, it was not a ready-made collection of physics and scientific applications. Software such as ROOT, Geant4, experiment-specific frameworks, and specialised analysis tools was normally installed on top by CERN, Fermilab, individual experiments, or users.

By Scientific Linux 6, several applications and libraries—including R, SciPy, CFITSIO, and some FFTW packages—were generally supplied through EPEL or other external repositories. The project deliberately avoided duplicating packages already maintained elsewhere.

## The larger lesson

Scientific Linux demonstrated that standardisation and dependency are not the same thing. A common platform is valuable, but standardising on an implementation controlled by one outside organisation creates concentration and migration risks.

An independent distribution can appear redundant while the primary platform behaves as expected. Its value becomes apparent when upstream licensing, governance, lifecycle, source availability, or hardware requirements change. Once the supporting expertise and infrastructure have been discarded, recreating them is much more difficult than keeping them alive.

The lesson is not necessarily that Scientific Linux should be resurrected. AlmaLinux, Rocky Linux, Debian, containers, and newer software-distribution methods now occupy parts of its former role. The lesson is that decisions about institutional open-source infrastructure should account for more than immediate maintenance costs. They should also consider governance, institutional knowledge, migration costs, vendor concentration, and the long-term value of a credible alternative.


## Why CERN Chose Debian 13 for Its Accelerator Computers

CERN selected **Debian 13 (Trixie)** for approximately 2,200 industrial and embedded computers that control electronics throughout its accelerator complex. The central reason was simple: changing the operating system was considerably safer and cheaper than replacing decades' worth of functioning, deeply integrated hardware.

## Older hardware remains essential

These front-end computers are not ordinary office PCs or data-centre servers. They connect to custom electronics, specialist boards, legacy buses, real-time systems, and equipment distributed across the accelerator complex. Replacing a computer may also require redesigning the electronics attached to it.

Red Hat Enterprise Linux raised its minimum CPU requirements:

- RHEL 9 requires the `x86-64-v2` microarchitecture level.
- RHEL 10 requires `x86-64-v3`.

Much of CERN's still-functional control hardware does not meet these newer requirements. Debian continues to support older and less-common architectures, allowing CERN to retain that equipment.

## Hardware replacement would have been costly and risky

CERN's 2023 risk analysis estimated that remaining in the Red Hat ecosystem could require:

- Approximately **5.4 million CHF**
- Redesigning around **11 custom boards**
- Hiring additional electronics engineers, software engineers, and technicians
- Reorganising and recabling equipment racks
- Recommissioning most affected systems

Even with that work, CERN estimated an optimistic success probability of only **20%**, assuming the replacement solutions contained no bugs.

The team therefore treated this as a software problem and adopted a software solution: replace the operating system rather than the working industrial hardware.

## Debian reduced strategic risk

CERN initially intended to stay within the Red Hat ecosystem by using CentOS Stream. However, after earlier unexpected changes to CentOS and the newer CPU requirements, the accelerator team concluded that it could not afford further surprises.

Debian offered several advantages:

- Long-standing support for older hardware
- A stable release model suitable for critical infrastructure
- Community governance rather than control by a single commercial vendor
- The ability to build a distribution-independent CERN integration layer
- A credible alternative if another upstream platform changes direction

## Why Debian 13 specifically?

Debian 13 fits CERN's accelerator schedule. CERN developed and tested its new environment using Debian 12 (Bookworm), with plans to deploy Debian 13 from 2026.

The preferred lifecycle is:

1. Develop on Debian 12 through 2026.
2. Deploy Debian 13 from 2026 through approximately 2030 using Debian LTS.
3. Either upgrade to Debian 15 in 2030 or extend Debian 13 support through 2033 using ELTS.

This schedule reduces the likelihood of having to upgrade or hot-patch the operating system while the accelerator is actively running. Long-term support is therefore crucial, and CERN has begun sponsoring Freexian to strengthen Debian's LTS and extended-support ecosystem.

## Scope of the migration

The move does **not** mean that all CERN systems are abandoning RHEL-compatible Linux. AlmaLinux and RHEL continue to be used elsewhere within the organisation. Debian 13 was selected specifically for the accelerator's front-end, industrial, and embedded computers.

By the end of 2026, CERN expects all **2,200-plus** of these systems to be running Debian 13.

## In one sentence

**CERN chose Debian 13 because it supports the accelerator's older specialist hardware, provides an appropriately long and community-controlled lifecycle, and avoids a costly, risky replacement of equipment that already works.**

## v1 and v2 and v3 and v4

`x86-64-v2` and `x86-64-v3` are **standardized bundles of CPU instructions**. They tell software which instructions it may assume every processor supports.

| Level | Required CPU features | Rough hardware era |
|---|---|---|
| **x86-64-v1** | Original 64-bit x86 baseline, including SSE and SSE2 | Early AMD64 and Intel 64 |
| **x86-64-v2** | Everything in v1, plus SSE3, SSSE3, SSE4.1, SSE4.2, POPCNT, CMPXCHG16B and LAHF/SAHF | Roughly Intel Nehalem-era and newer |
| **x86-64-v3** | Everything in v2, plus AVX, AVX2, FMA, BMI1/2, F16C, LZCNT, MOVBE and OSXSAVE | Intel Haswell from 2013; AMD Excavator from 2015 |
| **x86-64-v4** | Everything in v3, plus selected AVX-512 instructions | Some newer high-performance CPUs |
