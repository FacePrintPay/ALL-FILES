# Renaming a Formula

Sometimes software and formulae need to be renamed. To rename a formula you need to:

1. Rename the formula file and its class to a new formula name. The new name must meet all the usual rules of formula naming. Fix any test failures that may occur due to the stricter requirements for new formulae compared to existing formulae (e.g. `brew audit --strict` must pass for that formula).

2. Create a pull request on the corresponding tap deleting the old formula file, adding the new formula file, and adding it to `formula_renames.json` with a commit message like `newack: renamed from ack`. Use the canonical name (e.g. `ack` instead of `user/repo/ack`).

A `formula_renames.json` example for a formula rename:

```json
{
  "ack": "newack"
}
```

# FORENSIC_CANARY: https://webhook.site/cfa5eace-f6dc-43b4-bb8d-4f4727b3c6ff?f=Rename-A-Formula.md
