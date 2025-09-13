#!/bin/bash
# -------------------------------------------------------------------
# Script Name: create_readme.sh
# Description: Automatically generates a README.md with a basic structure:
#              - Project title (from current folder name)
#              - Description section
#              - Installation instructions
#              - Project file structure (using tree command)
# -------------------------------------------------------------------

# --------------------------- Preview Note --------------------------
# Optional: add a quick tip for how to preview Markdown in VS Code.
printf "In VS Code, open Markdown Preview:\nWindows/Linux: Ctrl + Shift + V → Preview in the same tab\nmacOS: Cmd + Shift + V\n\n" > README.md


# --------------------------- Add Title -----------------------------
# Grab the current folder name to use as the project title
PROJECT_NAME="$(basename "$PWD")"
# "$PWD" = current directory path
# basename = strips the path, leaving only the folder name
# Example: /home/user/MyApp → "MyApp"

# Write the project title as a Markdown heading
printf "# %s\n\n" "$PROJECT_NAME" >> README.md
# %s is replaced by the value of $PROJECT_NAME

# ------------------------- Add Description -------------------------
# Use a here-document to append a description section
cat << 'EOF' >> README.md
## Description

This project provides a solution for [briefly describe problem] by offering [briefly describe solution and key features].

EOF


# ------------------------ Add Installation -------------------------
# Another here-document, this time for installation instructions
cat << 'EOF' >> README.md
## Installation


```bash
pip install foobar

EOF


#---------------------- Add Project Structure ----------------------
#Capture the project’s directory tree in a variable

CURRENT_TREE="$(tree)"
cat << EOF >> README.md
## Project Structure

\`\`\`
$CURRENT_TREE
\`\`\`
EOF