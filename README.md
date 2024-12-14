# Awesome Windsurf

![alt text](windsurf_logo_wordmark.png)

A curated list of awesome resources for working with the Windsurf code editor. Windsurf is a new AI-powered code editor that brings agentic AI assistance to your development workflow.

[![Awesome](https://awesome.re/badge.svg)](https://awesome.re)

**This is not an official Codeium or Windsurf resource, but rather a community-driven endeavor**

> Our goal is to complement, not duplicate, the official documentation. We focus on community-contributed resources, tips, and solutions that enhance the Windsurf experience. For official features and usage documentation, please refer to the [Codeium Documentation](https://docs.codeium.com/getstarted/overview).

## Contents
- [Getting Started](#getting-started)
- [Official Resources](#official-resources)
- [Please Read The Docs](#please-read-the-docs)
- [Custom Prompts](#custom-prompts)
- [FAQ](#faq)
- [Known Issues & Solutions](#known-issues--solutions)
- [Tips and Tricks](#tips-and-tricks)
- [Themes](#themes)
- [Troubleshooting](#troubleshooting)
- [Community](#community)
- [Contributing](#contributing)

## Getting Started
### Installation
For installation instructions, please refer to the [official website](https://www.codeium.com/windsurf).

## Official Resources
- [Windsurf Discord](https://discord.com/invite/3XFf78nAx5) - Join the Windsurf community on Discord
- [Windsurf Website](https://www.codeium.com/windsurf) - Official website and download
- [Codeium Documentation](https://docs.codeium.com/windsurf/getting-started) - Official documentation
- [Changelog](https://codeium.com/changelog) - Stay updated with the latest Windsurf features and improvements

## Please Read The Docs Before Asking For Help

We are trying to build a community around Windsurf that is self-sufficient and supportive. Before asking for help in Discord or emailing Codeium support, please take a few minutes to read the [Codeium documentation](https://docs.codeium.com/getstarted/overview) linked above.

## Custom Prompts

Check out our [prompts directory](prompts/) for a collection of community-contributed prompts and guidelines, including:

- [Global Rules](prompts/global-rules.md) - A comprehensive set of coding guidelines by computerK

## FAQ

### General Questions
This is a work in progress...

## Known Issues & Solutions

> For official documentation on common issues, please visit the [Codeium Common Issues Guide](https://docs.codeium.com/troubleshooting/common-issues)

### Common issues from the community

| Issue | Description | Solution |
|-------|-------------|----------|
| Special Characters in Chat | Special characters (like ANSI escape codes) can break the chat interface | Use this [custom Jest reporter](https://gist.github.com/BryceEWatson/79ce7138bb4edb0a5ab6104cf1f6f72a) to clean and format test output for chat compatibility |
| Chat Response Issues | Chat might become unresponsive or timeout | 1. Start a new chat session<br>2. Switch to Cascade Base<br>3. If problems persist, restart Windsurf and hope for the best|
| Windsurf Rules Files | Rules don't appear to be honored | 1. Ensure your rules files are not more than 6k chars<br>2. Do not put any references to files in the rules files that would total more than 6k combined<br>3. See [Cascade Documentation](https://docs.codeium.com/windsurf/cascade#memories) for more details on rules |
| Allowed Commands | Commands in your allow list still prompt to be accepted | 1. This currently seems to be related to rules files bloating<br>2. See solutions for rules files above |
| Credit System & Downtime | Credits may be consumed during service interruptions or failed flows | Currently no built-in way to track or reimburse lost credits. Consider:<br>1. Document failed flows with timestamps<br>2. Contact support for significant issues<br>3. Request status page or real-time service health indicators |

### Community Wishlist
| Feature Request | Description | Status |
|----------------|-------------|---------|
| Service Status Page | Real-time indicators of API and service health | ✅ Available via Provider Status Pages |
| Credit Usage Analytics | Detailed tracking of credit consumption and errors | ❌ Not Implemented |
| Credit Reimbursement System | Automated system for handling credits lost to service issues | ❌ Not Implemented |
| Flow Health Check | Pre-flight check of service health before starting flows | ❌ Not Implemented |
| Error Logging | User-accessible logs for debugging and support | ❌ Not Implemented |

> Legend: ✅ Implemented | 🚧 In Progress | ❌ Not Implemented

## Tips and Tricks
- Check the status pages mentioned above before debugging local issues
- Bookmark both pages for quick access during incidents

## Themes
*Coming soon - Share your favorite Windsurf themes here*

## Troubleshooting
*Coming soon - We will collect common issues and solutions here*

## Community
- [Windsurf Discord](https://discord.com/invite/3XFf78nAx5) - Join the Windsurf community on Discord

## Contributing
We welcome contributions! If you have suggestions, tips, or resources to add:
1. Fork this repository
2. Create a new branch for your changes
3. Submit a pull request with a clear description of your additions

## License
This list is under the MIT License.