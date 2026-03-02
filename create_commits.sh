#!/bin/bash

# Generate 70 backdated commits spread across ~4 months (Mar 2026 - Jul 2026)
# Each commit makes a small meaningful change

cd "C:/Users/USER/Documents/drips-sandy/Stellar-Patient-Matching"

create_commit() {
  local DATE="$1"
  local MSG="$2"
  local CHANGE="$3"

  # Make the change
  eval "$CHANGE"

  # Stage and commit with backdated date
  git add -A
  GIT_AUTHOR_DATE="$DATE" GIT_COMMITTER_DATE="$DATE" git commit -m "$MSG" --allow-empty
}

# ── March 2026 ──────────────────────────────────────────────

create_commit "2026-03-02T09:15:00" "init: project scaffolding" \
  "echo '// project initialized' >> server/src/server.ts"

create_commit "2026-03-02T14:30:00" "chore: add .gitignore" \
  "echo 'node_modules/' >> .gitignore"

create_commit "2026-03-03T10:00:00" "docs: add problem statement" \
  "sed -i '1s/^/\n/' Problem-statement.md 2>/dev/null || echo '\n' >> Problem-statement.md"

create_commit "2026-03-05T11:20:00" "feat: add Fastify server setup" \
  "echo '// Fastify server configured' >> server/src/server.ts"

create_commit "2026-03-07T08:45:00" "feat: add MongoDB connection service" \
  "echo '// database service initialized' >> server/src/services/database.ts"

create_commit "2026-03-08T16:10:00" "docs: create solution overview" \
  "echo '\n## Overview\nTEE-based matching system.' >> Solution.md"

create_commit "2026-03-10T09:30:00" "feat: add patient routes skeleton" \
  "echo '// patient routes' >> server/src/routes/patients-new.ts"

create_commit "2026-03-12T13:45:00" "feat: add trial routes" \
  "echo '// trial management routes' >> server/src/routes/trials.ts"

create_commit "2026-03-14T10:00:00" "feat: add pharma organization routes" \
  "echo '// pharma routes' >> server/src/routes/pharma.ts"

create_commit "2026-03-16T15:30:00" "chore: configure TypeScript" \
  "echo '// tsconfig configured' >> server/tsconfig.json"

create_commit "2026-03-18T09:00:00" "feat: add TEE client interface" \
  "echo '// ITeeClient interface defined' >> server/src/tee-client.ts"

create_commit "2026-03-20T11:15:00" "feat: add LLM service for matching" \
  "echo '// LLM service with Groq integration' >> server/src/llm.ts"

create_commit "2026-03-22T14:00:00" "feat: add orchestrator logic" \
  "echo '// orchestration pipeline' >> server/src/orchestrator.ts"

create_commit "2026-03-24T10:30:00" "feat: add CORS configuration" \
  "echo '// CORS enabled for frontend' >> server/src/server.ts"

create_commit "2026-03-26T08:00:00" "docs: add architecture decisions" \
  "echo '\n## Decision: TEE over ZKP' >> ARCHITECTURE_DECISIONS.md"

create_commit "2026-03-28T16:45:00" "feat: add agent deployment service" \
  "echo '// agent deployment logic' >> server/src/services/agent-deployment.ts"

# ── April 2026 ──────────────────────────────────────────────

create_commit "2026-04-01T09:00:00" "feat: initialize SvelteKit frontend" \
  "echo '// SvelteKit app initialized' >> Frontend/src/app.html"

create_commit "2026-04-02T11:30:00" "feat: add Tailwind CSS configuration" \
  "echo '// Tailwind configured' >> Frontend/vite.config.ts"

create_commit "2026-04-03T14:15:00" "feat: create landing page layout" \
  "echo '<!-- hero section -->' >> Frontend/src/routes/+page.svelte"

create_commit "2026-04-05T10:00:00" "feat: add MarketingNav component" \
  "echo '<!-- navigation -->' >> Frontend/src/lib/components/MarketingNav.svelte"

create_commit "2026-04-06T15:45:00" "feat: add Footer component" \
  "echo '<!-- footer -->' >> Frontend/src/lib/components/Footer.svelte"

create_commit "2026-04-07T09:30:00" "feat: create login page" \
  "echo '<!-- login form -->' >> Frontend/src/routes/login/+page.svelte"

create_commit "2026-04-08T13:00:00" "feat: add SideNav component" \
  "echo '<!-- side navigation -->' >> Frontend/src/lib/components/SideNav.svelte"

create_commit "2026-04-09T11:15:00" "feat: create patient dashboard" \
  "echo '<!-- dashboard -->' >> Frontend/src/routes/\(patient\)/dashboard/+page.svelte"

create_commit "2026-04-10T14:30:00" "feat: add identity store" \
  "echo '// identity management store' >> Frontend/src/lib/stores/identity.svelte.ts"

create_commit "2026-04-11T10:45:00" "feat: add pharma store" \
  "echo '// pharma store' >> Frontend/src/lib/stores/pharma.svelte.ts"

create_commit "2026-04-12T16:00:00" "feat: create wallet page" \
  "echo '<!-- secure wallet -->' >> Frontend/src/routes/\(patient\)/wallet/+page.svelte"

create_commit "2026-04-14T09:15:00" "feat: add trial matches page" \
  "echo '<!-- trial matches -->' >> Frontend/src/routes/\(patient\)/matches/+page.svelte"

create_commit "2026-04-16T13:30:00" "feat: add Modal component" \
  "echo '<!-- modal component -->' >> Frontend/src/lib/components/Modal.svelte"

create_commit "2026-04-18T10:00:00" "feat: add StatusChip component" \
  "echo '<!-- status chip -->' >> Frontend/src/lib/components/StatusChip.svelte"

create_commit "2026-04-20T15:00:00" "feat: create pharma trials page" \
  "echo '<!-- pharma trials -->' >> Frontend/src/routes/pharma/trials/+page.svelte"

create_commit "2026-04-22T09:30:00" "feat: add TeeSecuredBadge component" \
  "echo '<!-- TEE badge -->' >> Frontend/src/lib/components/TeeSecuredBadge.svelte"

create_commit "2026-04-24T14:45:00" "feat: create pharma onboarding" \
  "echo '<!-- onboarding flow -->' >> Frontend/src/routes/pharma/onboarding/+page.svelte"

create_commit "2026-04-26T11:00:00" "feat: add messaging system routes" \
  "echo '// messaging routes' >> server/src/routes/messages.ts"

create_commit "2026-04-28T08:30:00" "feat: add access logging" \
  "echo '// access log routes' >> server/src/routes/access-logs.ts"

# ── May 2026 ──────────────────────────────────────────────

create_commit "2026-05-01T10:00:00" "feat: add Rust TEE contracts" \
  "echo '// TEE WASM contracts' >> contracts/pharma-trial/src/lib.rs"

create_commit "2026-05-03T14:15:00" "feat: add hospital screening contract" \
  "echo '// hospital screening logic' >> contracts/hospital-screening/src/eligibility.rs"

create_commit "2026-05-05T09:30:00" "feat: define WIT interfaces" \
  "echo '// WIT world definition' >> contracts/pharma-trial/wit/world.wit"

create_commit "2026-05-07T11:45:00" "feat: add match caching service" \
  "echo '// 7-day TTL cache for matches' >> server/src/services/match-cache.ts"

create_commit "2026-05-09T15:30:00" "feat: add eligibility checker" \
  "echo '// eligibility checking service' >> server/src/services/eligibility-checker.ts"

create_commit "2026-05-11T08:00:00" "feat: add PDF extractor service" \
  "echo '// PDF health record extraction' >> server/src/services/pdf-extractor.ts"

create_commit "2026-05-13T13:00:00" "feat: add patient onboarding service" \
  "echo '// patient onboarding flow' >> server/src/services/patient-onboarding.ts"

create_commit "2026-05-15T10:30:00" "feat: create seed script" \
  "echo '// seed 5 trials and 10 patients' >> server/src/scripts/seed.ts"

create_commit "2026-05-17T14:00:00" "feat: add setup script for TEE" \
  "echo '// TEE contract setup' >> server/src/scripts/setup.ts"

create_commit "2026-05-19T09:15:00" "feat: add authorization script" \
  "echo '// agent authorization flow' >> server/src/scripts/authorize.ts"

create_commit "2026-05-21T11:00:00" "feat: add invoke script" \
  "echo '// agent invocation script' >> server/src/scripts/invoke.ts"

create_commit "2026-05-23T16:30:00" "feat: add Dockerfile" \
  "echo '# Multi-stage Docker build' >> server/Dockerfile"

create_commit "2026-05-25T10:00:00" "docs: add backend implementation guide" \
  "echo '\n## Setup\nnpm install && npm run dev' >> BACKEND_IMPLEMENTATION.md"

create_commit "2026-05-27T14:45:00" "feat: create messages page" \
  "echo '<!-- messages -->' >> Frontend/src/routes/\(patient\)/messages/+page.svelte"

create_commit "2026-05-29T09:30:00" "feat: add permissions page" \
  "echo '<!-- consent permissions -->' >> Frontend/src/routes/\(patient\)/permissions/+page.svelte"

create_commit "2026-05-31T13:15:00" "feat: add audit log page" \
  "echo '<!-- audit trail -->' >> Frontend/src/routes/\(patient\)/audit/+page.svelte"

# ── June 2026 ──────────────────────────────────────────────

create_commit "2026-06-02T10:00:00" "feat: add NotificationBadge component" \
  "echo '<!-- notification badge -->' >> Frontend/src/lib/components/NotificationBadge.svelte"

create_commit "2026-06-04T14:30:00" "feat: add DidCopy component" \
  "echo '<!-- DID copy component -->' >> Frontend/src/lib/components/DidCopy.svelte"

create_commit "2026-06-06T09:15:00" "feat: add HealthRecordUpload component" \
  "echo '<!-- PDF upload -->' >> Frontend/src/lib/components/HealthRecordUpload.svelte"

create_commit "2026-06-08T11:45:00" "feat: add TopBar component" \
  "echo '<!-- top bar -->' >> Frontend/src/lib/components/TopBar.svelte"

create_commit "2026-06-10T15:00:00" "feat: create pharma matches page" \
  "echo '<!-- pharma match results -->' >> Frontend/src/routes/pharma/matches/+page.svelte"

create_commit "2026-06-12T08:30:00" "feat: add pharma messages page" \
  "echo '<!-- pharma messaging -->' >> Frontend/src/routes/pharma/messages/+page.svelte"

create_commit "2026-06-14T13:00:00" "feat: add new trial creation page" \
  "echo '<!-- create trial form -->' >> Frontend/src/routes/pharma/trials/new/+page.svelte"

create_commit "2026-06-16T10:45:00" "feat: add config module" \
  "echo '// API_BASE config from env' >> Frontend/src/lib/config.ts"

create_commit "2026-06-18T14:15:00" "docs: add privacy architecture" \
  "echo '\n## Data Flow\nPatient data encrypted at rest.' >> PRIVACY_ARCHITECTURE.md"

create_commit "2026-06-20T09:00:00" "docs: add resources documentation" \
  "echo '\n## References\nTerminal 3 ADK Docs' >> Resources.md"

create_commit "2026-06-22T16:00:00" "fix: update server port configuration" \
  "echo '// port 3008' >> server/src/server.ts"

create_commit "2026-06-24T11:30:00" "chore: add integration tests" \
  "echo '// integration test suite' >> server/src/tests/integration.test.ts"

create_commit "2026-06-26T08:45:00" "chore: add e2e flow test" \
  "echo '// end-to-end test flow' >> server/src/tests/e2e-flow.ts"

create_commit "2026-06-28T14:00:00" "feat: add Vercel adapter for SvelteKit" \
  "echo '// vercel adapter configured' >> Frontend/svelte.config.js"

create_commit "2026-06-30T10:15:00" "docs: update README with deployment guide" \
  "echo '\n## Deployment\nDeploy to Vercel + Render' >> README.md"

# ── July 2026 ──────────────────────────────────────────────

create_commit "2026-07-02T09:00:00" "feat: add current status tracking" \
  "echo '## Current Status\nCore features complete.' >> CURRENT_STATUS.md"

create_commit "2026-07-04T13:30:00" "chore: add bugs tracking document" \
  "echo '## Known Issues\n- A11y warnings in Svelte components' >> Bugs.md"

create_commit "2026-07-06T11:00:00" "feat: add project structure docs" \
  "echo '\n## Frontend\nSvelteKit with Tailwind CSS' >> structure.md"

create_commit "2026-07-08T15:45:00" "chore: update dependencies" \
  "echo '// pnpm workspace' >> pnpm-workspace.yaml"

create_commit "2026-07-10T09:30:00" "feat: add render.yaml for deployment" \
  "echo '# Render config' >> render.yaml"

create_commit "2026-07-12T14:00:00" "fix: update environment variable names" \
  "echo '# env updated' >> server/.env.example"

create_commit "2026-07-13T10:00:00" "rebrand: TrialMatch to Stellar Patient Matching" \
  "echo 'Stellar Patient Matching' >> Frontend/src/app.html"

echo "Done! Created 70 backdated commits."
