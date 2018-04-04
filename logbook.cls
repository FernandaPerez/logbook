\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{logbook}[2018/04/02 Bitacora de proyecto de Tesis]
\LoadClass{memoir}

\RequirePackage[utf8]{inputenc}
\RequirePackage{amsmath}
\RequirePackage{ragged2e}
\RequirePackage[letterpaper, margin=3.0cm]{geometry}


%procesado de opciones no contempladas
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ProcessOptions\relax

%% Comando que define las comillas para no tener que estarlas poniendo
\newcommand{\quotes}[1]{``#1''}

%% Definicion de las variables necesarias para caracterizar el documento
\newcommand{\startYear}[1] {
  \def\sYear{#1}
  }
\newcommand{\project}[1] {
  \def\projectTitle{#1}
  }
  \newcommand{\student}[1] {
    \def\studentName{#1}
    }
    \newcommand{\professor}[1] {
      \def\professorName{#1}
      }

%% generacion de la pagina de portada
\newcommand{\makeCoverPage}{
  \begin{titlingpage}
  \begin{vplace}[0.8]
    \begin{center}
      \textsc{\Huge Bitácora de Tesis} \\
      \vspace{2.0cm}
      {\Large \projectTitle} \\

       \vspace{1.0cm}
      {Dir: \Large  \professorName} \\
      \vspace{1.0cm}
      {\large \sYear} \\


    \end{center}
  \end{vplace}
  \end{titlingpage}
}

%% definicion del ambiente de "entrada de la bitácora"
\newenvironment{entry}[3]
  {

    \begin{flushright}
    \textbf{\huge #1} \\
    \vspace{0.4cm}
    {\Large #2} \\
    \vspace{0.3cm}
    \small por: #3
    \end{flushright}

  }
  {

  \vspace{1.5cm}
  }
