'''
File: dumpFigures.py
Created by; Matt Gambill
Created on: July 24th, 2018
Synopsis:
Script descends into directories and generates a latex figures files
In main.tex use "\input{figure.tex} to insert file"
'''
import os
from subprocess import call

# The top argument for walk
topdir = os.getcwd()
# The extension to search for
exten_1 = '.png'


'''
\begin{figure}[h]
    \centering
    \includegraphics[width=\textwidth]{FILENAME.png}
    \caption{Sample SysWin1 Safety}
    \label{fig:Sample_SysWin1_Safety}
\end{figure}
'''
latexString1 = "\\begin{figure}[h]\n\t\\centering\n\t\\includegraphics[width=\\textwidth]{./figures/\""
latexString2 =  "\"}\n\t\\caption{\\verb|"
latexString3 = "|}\n\t\\label{fig:\\verb|"
latexString4 = "|}\n\\end{figure}\n"

f = open('figures.tex','w')
# The main function
for dirpath, dirnames, files in os.walk(topdir):
    for name in files:

        if name.lower().endswith(exten_1):
            png_path = os.path.join(dirpath, name)
            os.chdir(dirpath)
            latexString = latexString1 + name +latexString2 + name + latexString3 + name + latexString4
            f.write(latexString)
            #call(['libreoffice', '--headless', '--invisible', '--convert-to','pdf', docx_path])
f.close()
