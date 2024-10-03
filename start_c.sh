#!/bin/bash

# Check if project name is provided as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 <project_name>"
    exit 1
fi

# Project name
PROJECT_NAME=$1

# Create the root project folder
mkdir -p $PROJECT_NAME

# Navigate into the project directory
cd $PROJECT_NAME

# Create subdirectories for the project
mkdir -p src           # Source files (.c)
mkdir -p include       # Header files (.h)
mkdir -p bin           # Compiled binaries
mkdir -p build         # Object files and build scripts
mkdir -p docs          # Documentation
mkdir -p tests         # Test files
mkdir -p libs          # External libraries
mkdir -p assets        # Additional resources (if needed)

# Create a basic README file
echo "# $PROJECT_NAME" > README.md
echo "This is the $PROJECT_NAME C project." >> README.md

# Create a basic .gitignore file
cat <<EOL > .gitignore
# Ignore compiled binary files
bin/
build/
*.o
*.out
*.a
*.so
*.exe
*.dll

# Ignore backup files
*~
*.swp
*.bak
EOL

# Create a basic main.c file in src
cat <<EOL > src/main.c
#include <stdio.h>

int main() {
    printf("Hello, World!\\n");
    return 0;
}
EOL

# Provide feedback
echo "C project structure created successfully for '$PROJECT_NAME'."
