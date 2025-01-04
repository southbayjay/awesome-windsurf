# [![Windsurf Logo](windsurf_logo_wordmark.png)][windsurf-link]

[![Join us on Discord][discord-shield]][discord-link]
[![GitHub Actions][actions-shield]][actions-link]
[![PRs Welcome][prs-shield]][contributing-link]
[![Contributors][contributors-shield]][contributors-link]
[![Maintained][maintained-shield]][maintained-link]
[![Last Commit][lastcommit-shield]][lastcommit-link]
[![GitHub repo size][reposize-shield]][repo-link]
[![License: CC0-1.0][license-shield]][license-link]
[![GitHub stars][stars-shield]][stars-link]

[windsurf-link]: https://www.codeium.com/windsurf
[discord-shield]: https://img.shields.io/discord/1027685395649015980?logo=discord&logoColor=white&label=Join%20us%20on%20Discord&labelColor=E55882&color=58E5BB
[discord-link]: https://discord.gg/3XFf78nAx5
[actions-shield]: https://github.com/ichoosetoaccept/awesome-windsurf/actions/workflows/markdownlint.yml/badge.svg
[actions-link]: https://github.com/ichoosetoaccept/awesome-windsurf/actions
[prs-shield]: https://img.shields.io/badge/PRs-welcome-58E5BB.svg
[contributing-link]: CONTRIBUTING.md
[contributors-shield]: https://img.shields.io/github/contributors/ichoosetoaccept/awesome-windsurf?color=E55882
[contributors-link]: https://github.com/ichoosetoaccept/awesome-windsurf/graphs/contributors
[maintained-shield]: https://img.shields.io/badge/Maintained-yes-58E5BB.svg
[maintained-link]: https://github.com/ichoosetoaccept/awesome-windsurf/commits/main
[lastcommit-shield]: https://img.shields.io/github/last-commit/ichoosetoaccept/awesome-windsurf?color=58E5BB
[lastcommit-link]: https://github.com/ichoosetoaccept/awesome-windsurf/commits/main
[reposize-shield]: https://img.shields.io/github/repo-size/ichoosetoaccept/awesome-windsurf?color=58E5BB
[repo-link]: https://github.com/ichoosetoaccept/awesome-windsurf
[license-shield]: https://img.shields.io/badge/License-CC0_1.0-E55882.svg
[license-link]: http://creativecommons.org/publicdomain/zero/1.0/
[stars-shield]: https://img.shields.io/github/stars/ichoosetoaccept/awesome-windsurf?style=social
[stars-link]: https://github.com/ichoosetoaccept/awesome-windsurf/stargazers

A curated hub of resources, tips, and community-driven content for Windsurf - a very nice agentic IDE made by [Codeium](https://codeium.com).

## Contents

- [Please Read](#please-read)
- [Useful Links](#useful-links)
- [Community Prompts](#community-prompts)
- [Known Issues](#known-issues)
- [Tips and Tricks](#tips-and-tricks)
- [Videos](#videos)
- [Contributing](#contributing)
- [FAQ](#faq)
- [License](#license)

## Please Read

**This is not an official Codeium repository.** For official documentation and support, please visit:

- [Windsurf Documentation](https://docs.codeium.com/windsurf/getting-started)
- [Codeium Support](https://codeium.com/support)
- [Windsurf Feature Requests](https://codeium.canny.io/feature-requests)
- [Codeium Changelog](https://codeium.com/changelog)
- [Codeium Subreddit](https://www.reddit.com/r/Codeium/)

## Useful Links

### Community Resources

- [awesome-windsurfrules](https://github.com/SchneiderSam/awesome-windsurfrules) - A complementary collection of Windsurf rules and guidelines

### MCP Servers

- [Pulse](https://www.pulsemcp.com/)
- [mcpservers.org](https://www.mcpservers.org/)
- [mcpservers.ai](https://www.mcpservers.ai/)

## Community Prompts

This repository includes a collection of community-contributed prompts that enhance Windsurf's capabilities. Each contributor has their own directory under `memories/` to maintain organization.

### Finding Contributions

To explore and discover community contributions:

1. Browse the [`memories/`](memories/) directory to explore prompt contributions
2. Check the [GitHub contributors page](https://github.com/ichoosetoaccept/awesome-windsurf/graphs/contributors) to see everyone who has helped this project

Want to contribute? Create a directory with your username and add your prompts! See the [Contributing](#contributing) section for more details.

## Tips and Tricks

1. When working on a Markdown file, use ⌘/CTRL + K, then I to open formatted Markdown to the side.
2. If you suspect that Windsurf is not respecting your [rules](https://docs.codeium.com/windsurf/cascade#memories), just ask Cascade "check your guidelines and revise your suggestion" or similar.
3. Don't run your chats forever. Windsurf will start feeling queasy and you'll likely have to reload the window. You can also wait until Windsurf starts acting weird, then reload the window. Up to you.
4. **Caveats**

- Be CAREFUL. Windsurf is smart as hell but it's not AGI.
- It will miss stuff.
- It will make mistakes.
- Don't trust it blindly.
- Keep an eye on your **Problems** panel at the bottom.
- Arguably, it's even more important to have very solid testing code in place when using AI coding tools.

## Known Issues

| Issue | Description | Solution |
|-------|-------------|----------|
| Errors when using Claude Sonnet 3.5 | Check the status of Anthropic's API | Check <https://status.anthropic.com> |
| Accept/Reject buttons become unresponsive | Chat has probably gotten too long | Reload window and start new chat |
| Diff view does not work | Chat has probably gotten too long | Reload window and start new chat |
| Rules files not being honored | Rules in configuration files don't appear to work | 1. Ensure rules files are under 6k chars<br>2. Total size of referenced files should not exceed 6k chars |
| Allowed commands still prompting | Commands in allow list still require acceptance | Currently related to rules files size - see solution above |

## Contributing

We welcome all contributions! Please check out our [Contributing Guide](CONTRIBUTING.md) for guidelines about:

- How to submit changes
- Our standards
- Release process using GitHub Releases

## FAQ

**What is Windsurf?**
Windsurf is an AI-native code editor created by Codeium that integrates advanced AI capabilities directly into your development workflow. It's designed to enhance productivity through natural language interaction and intelligent code assistance.

**How do I install Windsurf?**
Visit the [official Windsurf documentation](https://docs.codeium.com/windsurf/getting-started) for detailed installation instructions and system requirements.

**Where can I find community support and resources?**
Join our community on [Discord](https://discord.gg/3XFf78nAx5) (badge above) or visit the [Codeium Subreddit](https://www.reddit.com/r/Codeium/) for discussions, support, and sharing resources with other Windsurf users.

## Videos

[![Windsurf: The Enterprise AI IDE](https://img.youtube.com/vi/VcUl0vPJwxo/0.jpg)][video-link]

[video-link]: https://www.youtube.com/watch?v=VcUl0vPJwxo

## License

This list is dedicated to the public domain under the [CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/) license.
