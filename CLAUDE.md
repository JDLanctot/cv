# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a LaTeX CV/Resume repository that generates a multi-page professional CV. The CV uses a custom class (`mycv.cls`) and style file (`mycv.sty`) to create a two-column layout with a modern design.

## Architecture

### Core LaTeX Files
- `main.tex` - Main document that compiles the entire CV (4 pages)
- `mycv.cls` - Custom document class defining the CV style and layout
- `mycv.sty` - Style package with custom commands, colors, and formatting
- `myinfo.tex` - Personal information, contact details, and social links
- `footer.tex` - Footer template

### Directory Structure
- `Jobs/` - Individual job experience entries as separate .tex files
- `Papers/` - Academic papers and publications as separate .tex files
- `Projects/` - Project descriptions as separate .tex files
- `Cover Letter/` - Cover letter content (currently commented out in main.tex)
- `Images/` - Logo images and profile pictures
- `fonts/` - Custom font packages (Formula, Fragment, Neue Montreal, Right Sans, Telegraf)

### CV Layout
The CV uses a sophisticated multi-page layout:
- **Page 1**: Header with personal info, sidebar with skills/education, main column with recent work experience
- **Page 2**: Continued work experience, open-source contributions, sidebar with awards/supervision
- **Page 3**: Academic papers, projects, sidebar with presentations/specializations
- **Page 4**: Data analysis work, audio engineering portfolio

### Custom Commands and Styling
The `mycv.sty` file defines numerous custom LaTeX commands:
- `\cvevent{}{}{}{}{}{}` - Format work experience entries
- `\infobubble{}{}{}{}{}` - Create icon-based info bubbles for skills/awards
- `\descriptiveheader{}{}{}{}{}{}{}` - Page 1 header with description
- `\simpleheader{}{}{}{}{}{}` - Simplified headers for subsequent pages
- Color scheme using custom colors (cvblue, cvgrey, headercolour, etc.)

### Content Management
Each job, paper, and project is maintained in a separate .tex file and included via `\include{}` commands. This modular approach allows for easy content updates without modifying the main document structure.

## Build Commands

LaTeX compilation is available via Tectonic (installed via Chocolatey):
```bash
# Primary compilation method using Tectonic
tectonic main.tex

# Tectonic automatically handles multiple passes and dependencies
# No need to run twice - Tectonic manages this automatically

# Alternative traditional engines (if available)
pdflatex main.tex
xelatex main.tex
lualatex main.tex
```

### LaTeX Environment
- **Tectonic**: Modern LaTeX engine installed via Chocolatey (`choco install tectonic`)
- **SumatraPDF**: PDF viewer installed via Chocolatey (`choco install sumatrapdf.install`)
- Tectonic automatically downloads required packages on-demand
- Generates `main.pdf` output file

### Troubleshooting Compilation
When compilation fails:
1. Check `main.log` for detailed error messages and line numbers
2. Look for specific error patterns:
   - Missing packages: Tectonic will attempt auto-download
   - Syntax errors: Check `.tex` files around reported line numbers
   - Missing files: Verify all `\include{}` references exist
   - Font issues: Check `fonts/` directory and `\usepackage` declarations
3. Use `tectonic main.tex --print` for verbose output
4. For persistent issues, examine individual `.tex` files in subdirectories

## Font Dependencies
The CV uses custom fonts located in the `fonts/` directory:
- Default font package: `telegraf` with `headings-telegraf`
- Available alternatives: formula, fragment, neuemontreal, rightsans
- Font selection in `main.tex:10`: `\usepackage[telegraf,headings-telegraf]{fonts/myfonts}`

## Personal Information
All personal details are centralized in `myinfo.tex` including:
- Contact information
- Social media links (GitHub, LinkedIn, Twitter)
- Academic profiles (Google Scholar, ORCID)
- Cover letter variables

## Agent Delegation Strategy

When working on tasks in this LaTeX CV repository, always delegate specific aspects to the appropriate specialized agents:

### latex-structure-expert
Use this agent for:
- Modifying LaTeX document structure, organization, or file hierarchy
- Changes to `.cls` (class) or `.sty` (style) files
- Creating new sections or reorganizing content structure
- Package configurations and document organization
- Structural changes to `main.tex`, `mycv.cls`, or `mycv.sty`

**Example tasks**: "Reorganize experience into separate files", "Add new CV section", "Modify style file colors", "Create modular structure"

### resume-content-optimizer
Use this agent for:
- Improving, refining, or rewriting content within existing `.tex` files
- Enhancing job descriptions, project descriptions, or other content
- Content quality improvements while preserving LaTeX structure
- Optimizing content for specific roles or industries

**Example tasks**: "Improve job descriptions in Jobs/", "Enhance project descriptions", "Optimize content for data science role"

### latex-graph-designer
Use this agent for:
- Spacing and layout optimization (margins, padding, alignment)
- Typography hierarchy improvements (font sizes, weights, line spacing)
- Visual element positioning and flow
- White space utilization and document balance
- Layout consistency across pages

**IMPORTANT RESTRICTIONS**:
- DO NOT modify colors, color schemes, or color definitions
- DO NOT add backgrounds, borders, or decorative elements
- DO NOT change existing visual styling (infobubbles, skill bars, icons)
- FOCUS ONLY on spacing, positioning, and typography hierarchy

**Example tasks**: "Improve spacing and alignment", "Optimize typography hierarchy", "Enhance layout flow", "Better white space usage"

### Task Delegation Guidelines
1. **Always identify** which aspects of a task require which agents
2. **Use multiple agents concurrently** when tasks have multiple aspects
3. **Be specific** about what each agent should focus on
4. **Coordinate results** from different agents for cohesive outcomes

## Customization
To modify the CV:
1. Update personal info in `myinfo.tex`
2. Add/edit job entries in `Jobs/` directory (use **resume-content-optimizer** for content improvements)
3. Add/edit publications in `Papers/` directory (use **resume-content-optimizer** for content improvements)
4. Add/edit projects in `Projects/` directory (use **resume-content-optimizer** for content improvements)
5. Modify styling/colors in `mycv.sty` or `mycv.cls` (use **latex-structure-expert** for structural changes, **latex-graph-designer** for visual improvements)
6. Recompile `main.tex` to generate updated PDF
