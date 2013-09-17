%%
%% This is file `a4wolke.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% a4wolke.dtx  (with options: `class')
%% 
%% This is a generated file.
%% 
%% Copyright (c) 2013 Stefan Berthold <stefan.berthold@kau.se>
%% 
%% This file is part of the a4wolke bundle.
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%% 
%% This work has the LPPL maintenance status `author-maintained'.
%% 
%% The Current Maintainer and author of this work is Stefan Berthold.
%% 
%% This work consists of all files listed in manifest.txt.
%% 
%% a4wolke.dtx
%% Copyright (c) 2013 Stefan Berthold <stefan.berthold@kau.se>
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{a4wolke}
    [2013/09/17 v1.1 a4wolke class]
\ProcessOptions\relax
\LoadClass{scrartcl}
\RequirePackage{scrpage2}
\RequirePackage{graphicx}
\RequirePackage{xkeyval}
\RequirePackage{datatool}
  \DTLnewdb{editor}%
  \DTLaddcolumn{editor}{name}%
  \DTLaddcolumn{editor}{affil}%
  \DTLnewdb{contrib}%
  \DTLaddcolumn{contrib}{name}%
  \DTLaddcolumn{contrib}{affil}%
  \DTLnewdb{review}%
  \DTLaddcolumn{review}{name}%
  \DTLaddcolumn{review}{affil}%
  \DTLnewdb{revision}%
  \DTLaddcolumn{revision}{number}%
  \DTLaddcolumn{revision}{date}%
  \DTLaddcolumn{revision}{author}%
  \DTLaddcolumn{revision}{affil}%
  \DTLaddcolumn{revision}{change}%
\RequirePackage{colortbl}
\RequirePackage{tabularx}
\RequirePackage[table]{xcolor}
\RequirePackage{lastpage}
\renewcommand\familydefault\sfdefault
\definecolor{cloudblueframe}{rgb}{0.176,0.667,0.882}%
\definecolor{cloudbluefill}{rgb}{0.706,0.812,0.882}%
\definecolor{cloudgreyfoot}{rgb}{0.651,0.651,0.651}%
\arrayrulecolor{cloudblueframe}%
\renewcommand\arraystretch{1.1}%
\clearscrheadings%
\renewcommand*\headfont{\normalfont\smallskip}
\renewcommand*\footfont{\normalfont\scriptsize\color{cloudgreyfoot}}
\setheadsepline{0.5pt}[\color{cloudblueframe}\hrulefill]
\lohead{\wol@meta@title}%
\lehead{\wol@meta@title}%
\lefoot{FP7-ICT-2011-8-317550-A4CLOUD}%
\lofoot{FP7-ICT-2011-8-317550-A4CLOUD}%
\refoot{Page~\textbf{\thepage}~of~\textbf{\pageref{LastPage}}}%
\rofoot{Page~\textbf{\thepage}~of~\textbf{\pageref{LastPage}}}%
\pagestyle{scrheadings}%
\defpagestyle{titlepage}{%
  {}{}{%
  \IfFileExists{A4cloud.pdf}%
    {\includegraphics[scale=0.6]{A4cloud}}%
    {[logo] mail stefan.berthold@kau.se for the logo image file}%
  \hfill\medskip%
  }%
}{%
  {}{}{\parbox[b]{0.75\textwidth}{\scriptsize\color{cloudgreyfoot}%
    A4Cloud\\%
    \underline{www.a4cloud.eu}\\%
    Accountability For Cloud and Other Future Internet Services\\[\baselineskip]%
    FP7-ICT-2011-8-317550-A4CLOUD%
  }\hfill%
  \parbox[b]{3cm}{\raggedleft%
    \IfFileExists{seventh_framework_programme.jpg}%
      {\includegraphics[width=28mm]{seventh_framework_programme}}%
      {[logo] mail stefan.berthold@kau.se for the logo image file}}%
  }%
}
\define@cmdkeys[wol]{meta}[wol@meta@]%
  { title
  , number
  , workpackage
  , version
  , organisation
  , dissemination
  , contractdate
  , delivery
  , status
}
\newcommand\meta[1]{\setkeys[wol]{meta}{#1}}
\let\wol@maketitle=\maketitle
\renewcommand\maketitle{\par\noindent%
  \newlength{\wol@headheight}\setlength{\wol@headheight}{\headheight}%
  \setlength{\headheight}{1.2in}%
  \thispagestyle{titlepage}%
  \huge\wol@meta@title\medskip\smallskip\par\noindent\normalsize%
  \color{cloudblueframe}\rule{\textwidth}{0.5pt}\color{black}\bigskip\par\noindent%
  \bfseries Deliverable Number: \normalfont\wol@meta@number\smallskip\par\noindent%
  \bfseries Work Package: \normalfont\wol@meta@workpackage\smallskip\par\noindent%
  \bfseries Version: \normalfont\wol@meta@version\smallskip\par\noindent%
  \bfseries Deliverable Lead Organisation: \normalfont\wol@meta@organisation\smallskip\par\noindent%
  \bfseries Dissemination Level: \normalfont\wol@meta@dissemination\smallskip\par\noindent%
  \bfseries Contractual Date of Delivery (release): \normalfont\wol@meta@contractdate\smallskip\par\noindent%
  \bfseries Date of Delivery: \normalfont\wol@meta@delivery\smallskip\par\noindent%
  \bfseries Status: \normalfont\wol@meta@status\smallskip\par\noindent%
  \color{cloudblueframe}\rule{\textwidth}{0.5pt}\color{black}\bigskip\bigskip\par\noindent%
  \listofeditors\bigskip\par\noindent%
  \listofcontributors\bigskip\par\noindent%
  \listofreviewers%
  \clearpage%
  \vspace*{\stretch{1}}%
  \par\noindent\bfseries Revision table\normalfont\medskip\par\noindent%
  \tableofrevisions%
  \vspace*{\stretch{3}}%
  \setlength{\headheight}{\wol@headheight}%
  \clearpage%
}
\let\wol@tableofcontents=\tableofcontents
\renewcommand\tableofcontents{\wol@tableofcontents\clearpage}
\define@key[wol]{editor}{name}{%
  \DTLnewdbentry{editor}{name}{#1}}
\define@key[wol]{editor}{affiliation}{%
  \DTLnewdbentry{editor}{affil}{#1}}
\newcommand\editor[1]{%
  \DTLnewrow{editor}%
  \setkeys[wol]{editor}{#1}%
}
\newcommand\listofeditors{%
  \noindent%
  \begin{tabularx}{\textwidth}{|X|}%
    \rowcolor{cloudblueframe}
    Editor\\\hline%
    \DTLforeach*{editor}%
      {\name=name, \affil=affil}%
      {\DTLiffirstrow{\name{} (\affil)}{, \name{} (\affil)}}%
    \\\hline%
  \end{tabularx}\par%
}
\define@key[wol]{contrib}{name}{%
  \DTLnewdbentry{contrib}{name}{#1}}
\define@key[wol]{contrib}{affiliation}{%
  \DTLnewdbentry{contrib}{affil}{#1}}
\newcommand\contributor[1]{%
  \DTLnewrow{contrib}%
  \setkeys[wol]{contrib}{#1}%
}
\newcommand\listofcontributors{%
  \noindent%
  \begin{tabularx}{\textwidth}{|X|}%
    \rowcolor{cloudblueframe}
    Contributors\\\hline%
    \DTLforeach*{contrib}%
      {\name=name, \affil=affil}%
      {\DTLiffirstrow{\name{} (\affil)}{, \name{} (\affil)}}%
    \\\hline%
  \end{tabularx}\par%
}
\define@key[wol]{review}{name}{%
  \DTLnewdbentry{review}{name}{#1}}
\define@key[wol]{review}{affiliation}{%
  \DTLnewdbentry{review}{affil}{#1}}
\newcommand\reviewer[1]{%
  \DTLnewrow{review}%
  \setkeys[wol]{review}{#1}%
}
\newcommand\listofreviewers{%
  \noindent%
  \begin{tabularx}{\textwidth}{|X|}%
    \rowcolor{cloudblueframe}
    Reviewers\\\hline%
    \DTLforeach*{review}%
      {\name=name, \affil=affil}%
      {\DTLiffirstrow{\name{} (\affil)}{, \name{} (\affil)}}%
    \\\hline%
  \end{tabularx}\par%
}
\define@key[wol]{revision}{number}{%
  \DTLnewdbentry{revision}{number}{#1}}
\define@key[wol]{revision}{date}{%
  \DTLnewdbentry{revision}{date}{#1}}
\define@key[wol]{revision}{author}{%
  \DTLnewdbentry{revision}{author}{#1}}
\define@key[wol]{revision}{affiliation}{%
  \DTLnewdbentry{revision}{affil}{#1}}
\define@key[wol]{revision}{change}{%
  \DTLnewdbentry{revision}{change}{#1}}
\newcommand\revision[1]{%
  \DTLnewrow{revision}%
  \setkeys[wol]{revision}{#1}%
}
\newcommand\tableofrevisions{%
  \noindent%
  \begin{tabularx}{\textwidth}{|l|l|p{4cm}|X|}%
    \rowcolor{cloudblueframe}
    Version & Date & Author & Change Description%
    \DTLforeach*{revision}%
      {\num=number, \dat=date, \auth=author, \affil=affil, \change=change}%
      {\\\hline\DTLifoddrow{\rowcolor{white}}{\rowcolor{cloudbluefill}}%
      \num & \dat & \auth{} (\affil) & \change}%
    \\\hline%
  \end{tabularx}\par%
}
\newenvironment{a4tabular}[1]{%
    \rowcolors{2}{cloudbluefill}{}%
    \begin{tabular}{#1}%
    \rowcolor{cloudblueframe}%
  }%
  {\end{tabular}}
\endinput
%%
%% End of file `a4wolke.cls'.
