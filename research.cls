% research.cls - Custom Research Class
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{research}[2025/01/01 Custom Research Class]

% Base class
\LoadClass[12pt]{report}



% Page size
\usepackage{geometry}
\geometry{
  paperwidth=8.5in,
  paperheight=11in,
  left=1.5in,
  right=1in,
  top=1in,
  bottom=1in
}

% Page numbering
\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\fancyhead[R]{\thepage}

% Avoid widow and orphan (no hanging pages)
\clubpenalty=10000
\widowpenalty=10000
\displaywidowpenalty=10000

% Chapter formatting (remove 'Chapter' word)
\usepackage{titlesec}
\titleformat{\chapter}[hang]{\Huge\bfseries}{\thechapter}{1em}{}

% TOC formatting
\usepackage{tocloft}
\setlength{\cftbeforechapskip}{1em}

% References
\usepackage[backend=biber,style=numeric,sorting=none]{biblatex}
\addbibresource{references.bib}

% Title Page Command
\newcommand{\researchtitlepage}{%
  \thispagestyle{empty}
  \begin{center}
    \vspace*{2in}
    {\Huge\bfseries \thetitle \par}
    \vspace{1in}
    {Submitted to \\ \thesubmission \par}
    \vfill
    {\large \theauthor \\ \theyear}
  \end{center}
  \clearpage
}

% User Data
\newcommand{\submission}[1]{\def\thesubmission{#1}}
\newcommand{\researchyear}[1]{\def\theyear{#1}}

% Paragraph formatting
\setlength{\parskip}{6pt}
\setlength{\parindent}{0.5in}

% --- Precise Spacing Control ---
\usepackage{titlesec}

% \titlespacing*{command}{left}{before-sep}{after-sep}

% 1. Reduce Chapter Spacing
% -10pt pulls the title higher up the page; 12pt is about one line of space after.
\titlespacing*{\chapter}{0pt}{-30pt}{6pt}

% 2. Reduce Section Spacing
% 6pt before and 3pt after creates a very tight, compact look.
\titlespacing*{\section}{0pt}{6pt}{3pt}

% 3. Reduce Subsection Spacing
\titlespacing*{\subsection}{0pt}{4pt}{2pt}





% Table of Contents Reduce Spaces
\usepackage{tocloft}
% Space before "Contents" title
\setlength{\cftbeforetoctitleskip}{0pt}
% Space after "Contents" title
\setlength{\cftaftertoctitleskip}{10pt}



% List of Figures Reduce Spaces
\usepackage{tocloft}
% Space before "List of Figures" title
\setlength{\cftbeforeloftitleskip}{5pt}
% Space after "List of Figures" title
\setlength{\cftafterloftitleskip}{5pt}
\setlength{\cftbeforelottitleskip}{5pt}
\setlength{\cftafterlottitleskip}{5pt}