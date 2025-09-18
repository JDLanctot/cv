
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mycv}[2024/03/21 A fork of simplehipstercv]

\LoadClass[]{article}
\RequirePackage{xcolor}

\definecolor{headercolour}{rgb}{1.0,1.0,1.2}
\newcommand{\iconsize}{\huge}

% ---------------------------------------------------------------------------
\DeclareOption{jdlanctot}{

% My colours
\definecolor{cvorange}{HTML}{b3b3b3}
\definecolor{cvgrey}{HTML}{b3b3b3}
\definecolor{cvred}{HTML}{b3b3b3}
\definecolor{cvgreen}{HTML}{4F81BD}
\definecolor{cvblue}{HTML}{28415f}

% Columns Background Colour
\newcommand{\paracolbackgroundoptions}{
% Left Column Background Colour
\backgroundcolor{c[0](4pt,4pt)(0.5\columnsep,4pt)}[rgb]{1,1,1}
\backgroundcolor{C[0](10000pt,10000pt)(0.5\columnsep,10000pt)}[rgb]{1,1,1}
% Right Column Background Colour
\backgroundcolor{c[1](0.5\columnsep,4pt)(4pt,4pt)}[rgb]{1,1,1}
\backgroundcolor{C[1](0.5\columnsep,10000pt)(10000pt,10000pt)}[rgb]{1,1,1}
}
\newcommand{\setasidefontcolour}{
\color{black}
}

% Variable Colours
\definecolor{titlerulecolour}{HTML}{b3b3b3}
\definecolor{labelcolour}{HTML}{FFFFFF}
\definecolor{iconcolour}{HTML}{FFFFFF}
\definecolor{headercolour}{HTML}{28415f}
\definecolor{headerfontcolour}{HTML}{FFFFFF}
\definecolor{headerbarcolour}{HTML}{b3b3b3}
\definecolor{headerfontbox}{HTML}{FFFFFF}
\definecolor{headerfontboxfont}{HTML}{000000}
\definecolor{footercolour}{HTML}{28415f}
\definecolor{footerfontcolour}{HTML}{FFFFFF}
\definecolor{skilllabelcolour}{HTML}{FFFFFF}
\definecolor{skilliconcolour}{HTML}{000000}
\definecolor{unicolour}{HTML}{b3b3b3}

\renewcommand{\iconsize}{\Large}
}


% ---------------------------------------------------------------------------
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\usepackage{mycv}
