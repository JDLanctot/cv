# LaTeX CV/Resume Generator

A sophisticated LaTeX-based CV/resume system that generates a professional multi-page document with a modern two-column layout.

## Quick Start

### Prerequisites
- **Tectonic**: LaTeX engine (Prefrered Local Latex Engine, but Overleaf.com also works)
- **SumatraPDF**: PDF viewer (Prefered Local PDF Viewer)

### Building Your CV
```bash
# Standard version
tectonic main.tex

# ATS-friendly version (add ats flag to documentclass)
# Edit main.tex line 1: \documentclass[ats, jdlanctot]{mycv}
tectonic main.tex
```

## Project Structure

```
cv/
├── main.tex              # Main document (controls compilation)
├── mycv.cls              # Custom document class
├── mycv.sty              # Style definitions and custom commands
├── myinfo.tex            # Personal information and contact details
├── footer.tex            # Footer template
├── Jobs/                 # Individual job entries (.tex files)
├── Papers/               # Academic publications (.tex files)
├── Projects/             # Project descriptions (.tex files)
├── Cover Letter/         # Cover letter content
├── Images/               # Logos and profile pictures
├── fonts/                # Custom font packages
└── CLAUDE.md             # Instructions for Claude Code AI assistant
```

## Content Management

### Adding New Content

All resume content is modular - each job, project, and paper is stored in a separate `.tex` file:

**Jobs**: Create `Jobs/company-position.tex`
```latex
\cvevent{Position Title}{Company Name}{Start Date}{End Date}{Location}{
    \begin{itemize}
        \item Achievement or responsibility
        \item Another key accomplishment
    \end{itemize}
}
```

**Projects**: Create `Projects/project-name.tex`
```latex
\project{Project Name}{Brief description of the project and key technologies used.}
```

**Papers**: Create `Papers/paper-title.tex`
```latex
\paper{Author Name}{Paper Title}{Conference/Journal Name}{Year}{DOI or URL}
```

### Including Content in Your CV

Add your new content to `main.tex` using `\input{}` commands:

```latex
% In the appropriate section
\input{Jobs/your-new-job}
\input{Projects/your-new-project}
\input{Papers/your-new-paper}
```

### Content Tailoring Strategy

**Never delete content** - instead, comment out sections you don't want:

```latex
% \input{Jobs/old-job}        % Hide this job for this application
\input{Jobs/relevant-job}     % Show this relevant experience
% \input{Projects/old-project} % Hide less relevant project
```

This approach allows you to:
- Maintain all your experience in the repository
- Easily tailor your CV for different positions
- Quickly switch between different CV versions
- Never lose content permanently

## Layout and Page Balance

### Two-Column Layout
The CV uses a sophisticated two-column design:
- **Left column**: Skills, education, awards, presentations
- **Right column**: Work experience, projects, publications

### Manual Page Balance ⚠️
**Important**: You must manually balance content between left and right columns for each page. The LaTeX system doesn't automatically balance columns, so you may need to:

1. Move content between sections to balance page layout
2. Adjust which jobs/projects appear on which pages
3. Use `\newpage` or `\pagebreak` to control page breaks
4. Monitor the generated PDF to ensure good visual balance

### ATS Version Toggle
Switch between standard and ATS-friendly versions by editing the document class:

```latex
% Standard version (line 1 of main.tex)
\documentclass[jdlanctot]{mycv}

% ATS-friendly version
\documentclass[ats, jdlanctot]{mycv}
```

The ATS version simplifies formatting for better compatibility with Applicant Tracking Systems.

## Customization

### Personal Information
Edit `myinfo.tex` to update:
- Contact details
- Social media links
- Academic profiles (Google Scholar, ORCID)

### Styling
- **Colors and layout**: Modify `mycv.sty`
- **Document structure**: Modify `mycv.cls`
- **Fonts**: Available options in `fonts/` directory

### Font Selection
Change fonts by editing line 10 in `main.tex`:
```latex
\usepackage[telegraf,headings-telegraf]{fonts/myfonts}
```

Available font options: `formula`, `fragment`, `neuemontreal`, `rightsans`, `telegraf`

## AI Assistant Support

This project includes `CLAUDE.md` with detailed instructions for [Claude Code](https://claude.ai/code), enabling AI-assisted editing and content improvement:

- **Content optimization**: Improve job descriptions and project details
- **LaTeX structure**: Modify document layout and organization
- **Visual design**: Enhance spacing and typography
- **Error debugging**: Get help with compilation issues

If you're less comfortable with LaTeX, you can use Claude Code to help modify your CV while following best practices.

## Troubleshooting

### Compilation Errors
1. Check `main.log` for detailed error messages
2. Verify all `\input{}` references point to existing files
3. Use `tectonic main.tex --print` for verbose output
4. Ensure fonts are properly installed in `fonts/` directory

### Common Issues
- **Missing files**: Check that all input `.tex` files exist
- **Package errors**: Tectonic will auto-download most packages
- **Font errors**: Verify font package selection in `main.tex`
- **Page overflow**: Adjust content distribution between columns

## Output
The system generates `main.pdf` - a professional 4-page CV with:
- Page 1: Header, skills, recent experience
- Page 2: Continued experience, contributions, awards
- Page 3: Publications, projects, presentations
- Page 4: Additional work, specialized skills

Remember to review the generated PDF and manually adjust content placement for optimal visual balance across all pages.
