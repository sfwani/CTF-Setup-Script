# CTF Setup Script

## Overview

The **CTF Setup Script** is a Bash script designed to automate the installation of essential tools and dependencies for **Capture The Flag (CTF)** competitions. It streamlines the setup process, allowing participants to quickly configure their local environments, reducing setup time, and enabling them to focus on solving challenges.

## Features

- **Automatic Installation:** Installs a predefined list of common CTF tools and Python libraries, checking for existing installations to avoid redundant setups.
- **Directory Structure Creation:** Automatically creates an organized directory structure in the user's home folder for managing CTF challenges, write-ups, and tools.
- **User-Friendly Output:** Provides clear feedback during installation, indicating the status of each tool and library, whether newly installed or already present.
- **Compatibility:** Designed for Debian-based Linux distributions (e.g., Ubuntu) using `apt` as the package manager.

## Tools Installed by the CTF Setup Script

- **Common Tools:**
  - `git`
  - `nmap`
  - `netcat`
  - `python3`
  - `python3-pip`
  - `aircrack-ng`
  - `sqlmap`
  - `hydra`
  - `john`
  - `hashcat`

- **Python Libraries:**
  - `requests`
  - `pwntools`

- **Clones SecLists:**
  - SecLists will be cloned into the `~/CTF/Tools` repository.

## Usage

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/yourusername/ctf-setup-script.git
   ```
   ```bash
      cd ctf-setup-script
   ```
2. **Make the Script Executable:**
   ```bash
   chmod +x setup_ctf.sh
   ```
3. **Run the Script:**
   ```bash
   ./setup_ctf.sh
   ```
## Customization

You can easily customize the list of tools and libraries to include any additional software that you frequently use for CTF challenges. Simply modify the tools and python_libraries arrays in the script.
