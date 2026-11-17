---
published: true
layout: post
date: '2026-11-09 20:46 +0000'
title: "What if there was a color corrector in hyprland"
tags: linux luv mine ai 
---
Implemented in such a way that some apps can be excluded (original, preset applied, gui, green one, sepia with vignette, cyanred, oscilloscope, red monarch)    
[![screenshot-2026-11-09_21-41-07-foot](<https://imgpost.brontosaurusrex.workers.dev/i/7f6399de-061c-4e7c-b7f7-071bf108a738.avif>)](<https://imgpost.brontosaurusrex.workers.dev/i/e159ab90-a55c-4dbe-9542-b079f8de3f13.avif>) [![screenshot-2026-11-09_21-41-20-foot](<https://imgpost.brontosaurusrex.workers.dev/i/a6193201-9c7f-40a7-80fc-dc2b3691a390.avif>)](<https://imgpost.brontosaurusrex.workers.dev/i/1dd3f35e-cfda-4a0f-bfc6-3f9e8c02956e.avif>) [![screenshot-2026-11-09_21-41-39-foot](<https://imgpost.brontosaurusrex.workers.dev/i/b03566a5-1a86-4613-9823-e28461ec342d.avif>)](<https://imgpost.brontosaurusrex.workers.dev/i/512168f0-8b98-4457-ade2-699ddcbeae00.avif>) [![green](<https://imgpost.brontosaurusrex.workers.dev/i/64f7a57b-8b85-497d-b2c9-5de04b96584f.avif>)](<https://imgpost.brontosaurusrex.workers.dev/i/4e3d20d2-da27-4c4e-9adc-816214228cc5.avif>) [![pastelVignette](<https://imgpost.brontosaurusrex.workers.dev/i/f8b76e95-ac7d-4322-9fc6-196f4e16cd7e.avif>)](<https://imgpost.brontosaurusrex.workers.dev/i/2f0686dc-6608-43d2-87d0-d0a877b2cb09.avif>) [![cyanred](<https://imgpost.brontosaurusrex.workers.dev/i/3c8d3e9c-6f10-481b-810d-12a06c8107a3.avif>)](<https://imgpost.brontosaurusrex.workers.dev/i/da03ea2d-5977-4560-a808-8bb33f28f754.avif>) [![evolution](<https://imgpost.brontosaurusrex.workers.dev/i/47625480-5a51-4cfe-a0a9-e1aaa1f3981c.avif>)](<https://imgpost.brontosaurusrex.workers.dev/i/cb007241-9279-4bd4-a2bb-e17cbd76c6c6.avif>) [![screenshot-2026-11-14_18-05-21-foot](<https://imgpost.brontosaurusrex.workers.dev/i/0db2b322-ed7a-4672-8cdf-848ba9185615.avif>)](<https://imgpost.brontosaurusrex.workers.dev/i/3f552898-063a-4a91-827b-a1d22c873ffc.avif>)

Some simple cpu/gpu measurements on older T460 thinkpad laptop, moving window on the screen:

| Metric | Corrector off | Corrector on | Increase |
|:---|---:|---:|---:|
| GPU busy time | 20.6% | 41.5% | +20.9 pp |
| Total CPU usage | 6.6% | 8.4% | +1.8 pp |

Similar test on thinkpad T480s

| Metric | Corrector off | Corrector on | Change |
|---|---:|---:|---:|
| GPU busy time | 25.5% | 40.3% | +14.8 pp |
| Total CPU usage | 1.8% | 1.7% | −0.1 pp |

pp = percentage points—the difference between two percentages.

For example, 25.5% → 40.3% = +14.8 percentage points, or about 58% more GPU busy time relative to the starting value.
