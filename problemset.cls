\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{problemset}[2023/09/13 Problem Set]
\RequirePackage{myutils}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}

\LoadClassWithOptions{article}

\renewcommand{\normalsize}{\fontsize{11pt}{12pt}\selectfont}
\setlength{\textwidth}{8in}
\setlength{\textheight}{8in}
\pagenumbering{arabic}

% Geometry Settings
\RequirePackage[letterpaper, margin=1in]{geometry}

\newcommand{\course}[1]{\def\@course{#1}}
\newcommand{\assignment}[1]{\def\@assignment{#1}}

\renewcommand{\maketitle}{%
\begin{center}
    \bf{\LARGE{\MakeUppercase{\@course}~~~~ \@assignment}}\\
    \vskip .1in
    \@date\\
    \vskip .1in
    \@author
\end{center}
}
\AtBeginDocument{\maketitle}

\newcounter{problems}
\setcounter{problems}{1}
\newenvironment{problem}[1][\arabic{problems}\stepcounter{problems}]{
    \newline {\bf Problem #1.\hskip \labelsep}
}{}

\newenvironment{answer}[0]{
    \newline {\emph Answer. }
}{}



% % Still needed:
% Commands for problems and subproblems with custom enumeration
    % - problems should have optional "date assigned" field or a generic note
    % - Optional ability to write out problem statement or just answer it
% Graded vs ungraded sections
% header for multipage