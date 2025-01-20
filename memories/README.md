# Community Prompts

This directory contains community-contributed prompts for Windsurf.

## Standard Files

Windsurf recognizes two standard filenames for rules:

- `global_rules.md`: Global rules are rules that will be applied to Cascade in all workspaces.
- `.windsurfrules`: Local rules are rules that will be applied to Cascade in the current workspace.

Read about this [here](https://docs.codeium.com/windsurf/cascade#memories).

## Directory Structure

```text
memories/
├── your-username/
│   ├── README.md (required)
│   ├── Global-AI-rules/
│   │   ├── global-rules-1.md (optional)
│   │   └── global-rules-2.md (optional)
│   └── Workspace-AI-rules/
│       ├── .windsurfrules (optional)
│       └── your-prompt-2.md (optional)
├── another-username/
│   ├── README.md (required)
│   ├── Global-AI-rules/
│   │   ├── global-rules-1.md (optional)
│   │   └── global-rules-2.md (optional)
│   └── Workspace-AI-rules/
│       ├── .windsurfrules (optional)
│       └── their-prompt-2.md (optional)
└── README.md (what you're reading now)
```

## Documentation Requirements

Each contribution should include a `README.md` to help others understand and get the most out of your contribution. Here are some ideas of what you might want to include:

- Share why you created this and how it helps you
- Cool examples of non-standard files that make Windsurf even better, like:
  - Helpful documentation you reference
  - Your favorite templates or snippets
  - Handy reference materials or cheat sheets
- Any setup steps others might need
- Tips and tricks you've discovered (consider adding these to the main [README.md](../README.md) too!)
- Things to watch out for or current limitations
- Real-world examples where your contribution shines
- Anything else you think would help others!

This list is just to get you started - feel free to organize your README.md in whatever way best tells your contribution's story.

See [CONTRIBUTING.md](../CONTRIBUTING.md) for detailed contribution guidelines.
