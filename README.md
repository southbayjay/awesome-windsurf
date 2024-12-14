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

### Overview

This section contains custom prompts created by the Windsurf community to enhance AI interactions and provide specialized guidance for code development. These prompts are community-contributed templates that can be used to customize the behavior of AI assistants in various coding contexts.

### computerK's Global Rules Custom Prompt

This is a comprehensive set of coding guidelines created to ensure consistency, clarity, performance, and maintainability across all languages and projects. The prompt is designed to provide a robust framework for writing clean, understandable, and efficient code. Feel free to provide your own suggestions or additions to this prompt.

#### Prompt Content

```markdown
# Global Rules

This set of guidelines ensures consistency, clarity, performance, and maintainability across all languages and projects. Always apply these principles to produce clean, understandable, and efficient code.

## Code Style and Readability

1. **Clarity Over Brevity**:  
   - Favor understandable code over clever tricks.  
   - Prioritize legibility and maintainability over saving a few lines.
2. **Consistent Naming Conventions**:  
   - Use descriptive, self-explanatory names for variables, functions, classes, and modules.  
   - Follow language-specific naming conventions (e.g., `snake_case` for Python, `camelCase` for JavaScript) and remain consistent throughout the codebase.
3. **Consistent Formatting**:  
   - Adhere to a uniform indentation style, spacing, and line width.  
   - Use automated tools (linters, formatters) to enforce consistency and reduce manual overhead.
4. **Comments That Add Value**:  
   - Write comments to explain the "why" behind complex logic, not just the "what."  
   - Remove or avoid redundant comments that restate the obvious.
5. **Small, Single-Responsibility Functions**:  
   - Keep functions concise and focused on doing one thing well.  
   - Break larger functionalities into smaller, reusable units that are easier to test and maintain.

## Architecture and Modularity

1. **Encapsulation of Complexity**:  
   - Hide complex logic behind clear interfaces or modules.  
   - Present a simple, well-documented API to callers while keeping internals flexible and interchangeable.
2. **Decouple Components**:  
   - Design modules with minimal direct knowledge of each other's implementations.  
   - Use interfaces, abstract classes, or dependency injection to reduce coupling and improve testability and flexibility.
3. **DRY (Don't Repeat Yourself)**:  
   - Factor out repetitive patterns into shared functions or classes.  
   - Refactor early and often to prevent code drift and bloat over time.

## Error Handling and Testing

1. **Fail Fast, Fail Loud**:  
   - Validate assumptions early, return or throw errors as soon as something unexpected happens.  
   - Provide clear error messages that help identify the root cause quickly.
2. **Testability as a Priority**:  
   - Write code that is easy to test in isolation.  
   - Separate pure logic from side effects, use dependency injection, and ensure complex logic resides in testable units.
3. **Thorough Input Validation**:  
   - Check all inputs for correctness, sanity, and security risks before processing.  
   - Guard against malformed data, null references, or out-of-bound values.

## Performance and Resource Management

1. **Appropriate Data Structures and Algorithms**:  
   - Choose data structures and algorithms best suited for the problem to ensure reasonable time and space complexity.  
   - Opt for clarity first, and only optimize further if and when performance profiling indicates a need.
2. **Avoid Premature Optimization**:  
   - Start with a clean, readable solution.  
   - Measure performance with profiling tools and address hotspots instead of guessing where optimization is needed.
3. **Resource Lifecycle Awareness**:  
   - Properly manage memory, file handles, network connections, and other resources.  
   - Use language-specific best practices (e.g., RAII, `with` statements, finally blocks) to ensure timely cleanup.

## Documentation and Tooling

1. **Minimal Yet Meaningful Documentation**:  
   - Document public-facing APIs, complex workflows, and any non-obvious decisions or trade-offs.  
   - Keep documentation concise, clear, and up-to-date with code changes.
2. **Automated Quality Checks**:  
   - Integrate linters, formatters, and static analyzers into the workflow to catch style and logical issues early.  
   - Use code review tools and CI pipelines to maintain high-quality standards continuously.
3. **Continuous Integration and Testing**:  
   - Employ automated test suites to verify code correctness with every commit.  
   - Include integration, unit, and (when appropriate) performance tests.  
   - Fix issues and regressions as soon as they are discovered, ensuring codebase health over time.

Adhering to these rules will guide the creation of clean, robust, and maintainable code, regardless of the language or framework in use.
```

#### How to Use This Prompt

- **Windsurf Integration**: Copy the entire code block above. Then, in Windsurf, click on the "Windsurf Settings" button and click the "Edit Rules" button next to "Set Global AI Rules". Then, paste the code into the file, and save it.

### Contributing Additional Prompts

**Community Contribution**:

- If you have created a custom prompt that you believe would be valuable to the Windsurf community, we encourage you to contribute!
- Please submit a pull request with your prompt, following the format of the existing guidelines.
- Ensure your prompt is clear, well-documented, and provides tangible value to developers.

*Note: This is an evolving collection of community-created prompts. Your contribution can help make AI interactions more effective and tailored to specific coding needs.*

## License

This list is under the MIT License.
