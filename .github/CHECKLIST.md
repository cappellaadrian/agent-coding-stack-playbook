# Pre-merge checklist

Shared by humans and agents. Prefer failing CI over skipping boxes with vibes.

## Scope

- [ ] PR is atomic (one logical change)
- [ ] Title/body match the finish condition
- [ ] No unrelated refactors mixed in

## Verification

- [ ] Repro before fix (bugs)
- [ ] Real app driven via verify skill / feature map
- [ ] Evidence attached on the PR
- [ ] Fresh agent or human verifier signed off

## Quality bars

- [ ] Hard CI green
- [ ] Import / layer boundaries respected
- [ ] No reliance on code comments as durable policy
- [ ] Feature code colocated when applicable

## Skills / follow-ups

- [ ] New failure mode → skill or CI rule filed
- [ ] Feature map updated if navigation changed (`/maintain-verification-skill`; no product edits in that pass)

## Unattended / overnight

- [ ] Overnight contract present if applicable
- [ ] Decision log complete
- [ ] Stop conditions honored
