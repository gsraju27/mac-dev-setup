# Mac Dev Setup Automator

![macOS](https://img.shields.io/badge/macOS-000000?style=for-the-badge&logo=apple&logoColor=white)
![Bash](https://img.shields.io/badge/Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Homebrew](https://img.shields.io/badge/Homebrew-FBB040?style=for-the-badge&logo=homebrew&logoColor=black)

Automated script and guide for setting up a Mac for development. Includes Homebrew, popular dev tools, and productivity apps.

## 🚀 Quick Start

1. Clone this repository:
   ```
   git clone https://github.com/yourusername/mac-dev-setup.git
   ```
2. Navigate to the directory:
   ```
   cd mac-dev-setup
   ```
3. Make the script executable:
   ```
   chmod +x mac_setup_script.sh
   ```
4. Run the script:
   ```
   ./mac_setup_script.sh
   ```
5. Follow the on-screen prompts for any manual steps.

## ✨ Features

- Automates installation of essential development tools
- Sets up popular productivity applications
- Configures Git and SSH for immediate use
- Provides step-by-step guide for manual configurations

## 🛠 Automated Installation

The `mac_setup_script.sh` script automates the installation of the following tools and applications:

### Development Tools

- **Git**: Version control system for tracking changes in source code.
- **Yarn**: Fast, reliable, and secure dependency management for JavaScript.
- **Prettier**: Opinionated code formatter to ensure consistent code style.
- **Python**: Programming language used for various applications and scripts.
- **AWS CLI**: Command-line interface for interacting with Amazon Web Services.
- **GnuPG**: GNU Privacy Guard for encryption and signing.
- **Elixir**: Functional programming language for building scalable applications.
- **tfenv**: Terraform version manager.
- **Node.js** (via NVM): JavaScript runtime for server-side programming.

### IDEs and Text Editors

- **Visual Studio Code**: Lightweight but powerful source code editor.
- **PyCharm**: Integrated Development Environment (IDE) for Python.

### Database Tools

- **TablePlus**: Modern, native tool for relational database management.
- **Studio 3T**: IDE for MongoDB, supporting data exploration and query building.

### Containerization and API Tools

- **Docker**: Platform for developing, shipping, and running applications in containers.
- **Postman**: API platform for building and using APIs.

### Productivity and Communication

- **Slack**: Team collaboration and messaging platform.
- **Notion**: All-in-one workspace for notes, tasks, wikis, and databases.
- **Microsoft Outlook**: Email and calendar application.
- **Mimestream**: Native macOS email client for Gmail.
- **1Password**: Password manager and secure digital vault.
- **Raycast**: Productivity tool to control your Mac with a few keystrokes.
- **Amazon Q**: AI-powered assistant for boosting productivity.
- **ChatGPT**: AI language model for natural language processing tasks.

### Design and Collaboration

- **Figma**: Collaborative interface design tool.
- **Adobe Acrobat Pro**: PDF editor and reader with advanced features.

### Web Browsers

- **Google Chrome**: Fast and secure web browser.

### Communication Apps

- **Telegram**: Cloud-based instant messaging service.
- **Discord**: Voice, video, and text chat app designed for communities.
- **WhatsApp**: Cross-platform messaging and Voice over IP service.

### Screen Recording

- **Screen Studio**: Advanced screen recording and editing tool.

## 📝 Manual Steps Required

1. **GPG Setup for Commit Signing**:
   - Follow the prompts in the script to set up GPG.
   - Generate a new GPG key when prompted.
   - Add the GPG key to your GitHub account (Settings > SSH and GPG keys > New GPG key).
   - Configure git to use the GPG key for signing commits.

2. **SSH Key Setup**:
   - The script will generate an SSH key for you.
   - When prompted, add the SSH key to your GitHub account (Settings > SSH and GPG keys > New SSH key).

3. **Homebrew Path**:
   - After the script completes, you may need to add Homebrew to your PATH.
   - Run: `echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile`
   - Then run: `eval "$(/opt/homebrew/bin/brew shellenv)"`

4. **Node.js and NVM**:
   - Ensure NVM is properly sourced in your shell. Add the following to your `~/.zshrc` or `~/.bash_profile`:
     ```
     export NVM_DIR="$HOME/.nvm"
     [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
     [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
     ```

5. **Application Setup**:
   - Launch each application and complete any initial setup or login processes.
   - For development tools like VS Code or PyCharm, install any additional extensions or plugins you commonly use.

6. **Cloud Service Logins**:
   - Log in to your accounts for cloud-based services (e.g., Slack, Notion, Microsoft Outlook).

7. **1Password Setup**:
   - Set up your vault and consider enabling integration with your web browsers.

8. **Raycast Configuration**:
   - Customize Raycast with your preferred shortcuts and workflows.

9. **Git Configuration Verification**:
   - Verify your git configuration with `git config --list`
   - Ensure your name, email, and GPG signing preferences are correct.

10. **Terminal Profile**:
    - Consider setting up a custom terminal profile (colors, fonts, etc.) for better productivity.

Remember to restart your terminal or run `source ~/.zprofile` after completing all steps to ensure all changes are applied.

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgements

- [Homebrew](https://brew.sh/)
- [Node Version Manager](https://github.com/nvm-sh/nvm)
- All the amazing open-source projects that make this setup possible

---

Made with ❤️ by Raju