\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fsinewsletter}[2016/01/06 fsi newsletter style]

\LoadClass[12pt,a4paper]{article}

\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[ngerman]{babel}
\RequirePackage{eurosym}
\RequirePackage{graphicx}
\RequirePackage{ifpdf}
\RequirePackage{times}
\RequirePackage{longtable}
\RequirePackage{multicol}
\RequirePackage{lipsum}
\RequirePackage{todonotes}
\RequirePackage{listings}
\RequirePackage{color}
\RequirePackage{fontspec}
\RequirePackage{unicode-math}
\RequirePackage{luacode}

% For hyperlinks
\ifpdf{}
 \RequirePackage{hyperref}
\else
 \RequirePackage[ps2pdf,breaklinks=true]{hyperref}
\fi

\pagestyle{plain}
% Einrückung der ersten Zeile eines Absatzes
\setlength{\parindent}{0mm}
% Abstand zwischen zwei Absätzen
\setlength{\parskip}{1em plus0.5ex minus0.5ex}
\setlength{\leftmargin}{0.0em}

\urlstyle{same}

\hsize 15.5cm
\vsize 23cm
\hoffset-1cm
\voffset-2.2cm
\textheight=\vsize
\textwidth=\hsize

\newif\ifcalvin%% flag für calvin-comics

\emergencystretch=2cm
\font\cms=cmss17 scaled \magstep2
\font\vlarge=cmbx12 scaled \magstep5

\setcounter{secnumdepth}{0}

%%%% FUNCTIONS
\renewcommand*\descriptionlabel[1]{\hspace\labelsep{}
                                \normalfont\bfseries #1}
\newcommand*{\email}[1]{\url{#1}}
\newcommand*{\filename}[1]{\url{#1}}


%%%% CONSTANTS
\newcommand{\name}{fsi log}
\newcommand{\namemo}{\name \space \Month}
\newcommand{\nameit}{
		\textit{\textbf{\textsf{\name}}}
	}                            
\newcommand{\At}{@} % Anti-Spam-Obfuscation-Hack
\newcommand{\jahr}{\arabic{jahr}}
\newcommand{\auflage}{\arabic{auflage}}
\newcommand{\jahrpluseins}{\arabic{jahrpluseins}}

%%%% VARIABLE INIT
\newcommand{\Month}{\ }
\newcommand{\Infoprof}{Informatik 1 Professor}
\newcommand{\Matheprof}{Mathematik 1 Professor}
\newdimen\oldbaselineskp%
\newcounter{auflage}
\newcounter{jahr}
\newcounter{jahrpluseins}


%%%% VARIABLE SETTER
\newcommand{\SetMonth}[1]{\renewcommand{\Month}{#1}}
\newcommand{\SetJahr}[1]{
  \setcounter{jahr}{#1}
  \setcounter{jahrpluseins}{\value{jahr}}
  \stepcounter{jahrpluseins}
}
\newcommand{\SetAuflage}[1]{\setcounter{auflage}{#1}}
\newcommand{\SetInfoprof}[1]{\renewcommand{\Infoprof}{#1}}
\newcommand{\SetMatheprof}[1]{\renewcommand{\Matheprof}{#1}}