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
    {\bf{\LARGE{\MakeUppercase{\@course}~~~~ \@assignment}}}\\
    \vskip .1in
    \@date\\
    \vskip .1in
    \@author
\end{center}
}
\AtBeginDocument{\maketitle}

\setlength\parindent{0pt}

\newtheorem{lemma}{Lemma}
\newtheorem*{lemma*}{Lemma}
\newtheorem{corollary}{Corollary}
\newtheorem*{corollary*}{Corollary}
\newtheorem{answerstatement}{Answer}
\newtheorem*{answerstatement*}{Answer}
\newenvironment{answer}[1][]{\begin{proof}[\textup{#1} Answer]}{\end{proof}}

\newtheorem{case}{Case}
\newtheorem*{case*}{Case}

\theoremstyle{definition}
\newtheorem{problem}{Problem}
\newtheorem*{problem*}{Problem}
