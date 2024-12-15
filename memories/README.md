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
│   └── README.md (required)
│   └── global-rules.md (optional)
│   └── .windsurfrules (optional)
│   └── your-prompt.md (optional)
│   └── your-prompt-2.md (optional)
├── another-username/
│   └── README.md (required)
│   └── global-rules.md (optional)
│   └── .windsurfrules (optional)
│   └── their-prompt.md (optional)
│   └── their-prompt-2.md (optional)
└── README.md (what you're reading now)
```

## Documentation Requirements

Each contribution must include a `README.md` that tells a reader any additional information about the contribution, such as:

- Why you find your contribution useful
- Examples of non-standard MD files that enhance Windsurf's capabilities, such as:
  - Additional docs you point to to help Windsurf out
  - Custom templates or snippets you use
  - Reference materials or cheat sheets
- Any specific setup or configuration needed
- Tips and best practices you've discovered, though I'd encourage you to contribute that to [README.md](../README.md) for better discoverability
- Known limitations or considerations
- Examples of successful use cases
- Anything else you can think of that could be useful to the reader

See [CONTRIBUTING.md](../CONTRIBUTING.md) for detailed contribution guidelines.
