# Awesome Windsurf

![alt text](windsurf_logo_wordmark.png)

A curated list of awesome resources for working with the Windsurf code editor. Windsurf is a new AI-powered code editor that brings agentic AI assistance to your development workflow.

[![Awesome](https://awesome.re/badge.svg)](https://awesome.re)

**This is not an official Codeium or Windsurf resource, but rather a community-driven endeavor**

> Our goal is to complement, not duplicate, the official documentation. We focus on community-contributed resources, tips, and solutions that enhance the Windsurf experience. For official features and usage documentation, please refer to the [Codeium Documentation](https://docs.codeium.com/getstarted/overview).

## Contents

- [Official Resources](#official-resources)
- [Getting Started](#getting-started)
- [FAQ](#faq)
- [Known Issues & Solutions](#known-issues--solutions)
- [Tips and Tricks](#tips-and-tricks)
- [Themes](#themes)
- [Troubleshooting](#troubleshooting)
- [Community](#community)
- [Contributing](#contributing)
- [Custom Prompts](#custom-prompts)

## Official Resources

- [Windsurf Discord](https://discord.com/invite/3XFf78nAx5) - Join the Windsurf community on Discord
- [Windsurf Website](https://www.codeium.com/windsurf) - Official website and download
- [Codeium Documentation](https://docs.codeium.com/getstarted/overview) - Official documentation
- [Changelog](https://codeium.com/changelog) - Stay updated with the latest Windsurf features and improvements

## Please Read The Docs Before Asking For Help

We are trying to build a community around Windsurf that is self-sufficient and supportive. Before asking for help in Discord or emailing Codeium support, please take a few minutes to read the [Codeium documentation](https://docs.codeium.com/getstarted/overview) linked above.

## Getting Started

### Installation

- Download Windsurf from the [official website](https://www.codeium.com/windsurf) or use package managers for your OS:

### macOS

  ```bash
  brew install windsurf
  ```

### Linux
  >
  > TODO: Linux installation instructions will be added once package managers and installation methods are confirmed.

### Windows
  >
  > TODO: Windows installation instructions will be added once the installer and package manager support is finalized.

## FAQ

### General Questions

This is a work in progress...

## Known Issues & Solutions

> For official documentation on common issues, please visit the [Codeium Common Issues Guide](https://docs.codeium.com/troubleshooting/common-issues)

### Common Issues

| Issue | Description | Solution |
|-------|-------------|----------|
| Special Characters in Chat | Special characters (like ANSI escape codes) can break the chat interface | Use this [custom Jest reporter](https://gist.github.com/BryceEWatson/79ce7138bb4edb0a5ab6104cf1f6f72a) to clean and format test output for chat compatibility |
| AI Model Availability | Sometimes certain AI models might be temporarily unavailable | Switch to Cascade Base as a reliable fallback option |
| Chat Response Issues | Chat might become unresponsive or timeout | 1. Start a new chat session<br>2. Switch to Cascade Base<br>3. If problems persist, restart Windsurf |
| Windsurf Rules Files | Rules don't appear to be honored | 1. Ensure your rules files are not more than 6k chars<br>2. Do not put any references to files in the rules files that would total more than 6k combined |
| Allowed Commands | Commands in your allow list still prompt to be accepted | 1. This currently seems to be related to rules files bloating<br>2. See solutions for rules files above |

## Tips and Tricks

*Coming soon - Share your favorite Windsurf tips here for maximum effectiveness with this awesome editor*

## Themes

*Coming soon - Share your favorite Windsurf themes here*

## Troubleshooting

*Coming soon - We will collect common issues and solutions here*

## Community

*Coming soon - Join the Windsurf community*

## Contributing

We welcome contributions! If you have suggestions, tips, or resources to add:

1. Fork this repository
2. Create a new branch for your changes
3. Submit a pull request with a clear description of your additions

## Custom Prompts

A collection of community-contributed prompts to enhance AI interactions and provide specialized guidance for code development. These prompts can be used to customize the behavior of AI assistants in various coding contexts.

See the [prompts directory](content/prompts) for the full collection. Here are some highlights:

- [Global Rules](content/prompts/global-rules.md) - A comprehensive set of coding guidelines by computerK

## License

This list is under the MIT License.
