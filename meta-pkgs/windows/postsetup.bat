@REM Script for final installation of McStas/McXtrace-related Python and Perl modules
@REM
@conda config --add channels conda-forge
@conda install qscintilla2 pyqtgraph pyaml ply -y
@set PATH=c:\\strawberry\\perl\\bin;%PATH%
@call c:\\strawberry\\perl\\bin\\ppm.bat install http://ppds.mccode.org/Astro-FITS-Header.ppd
@call c:\\strawberry\\perl\\bin\\ppm.bat install http://ppds.mccode.org/Convert-UU.ppd
@call c:\\strawberry\\perl\\bin\\ppm.bat install http://ppds.mccode.org/Tk.ppd
@call c:\\strawberry\\perl\\bin\\ppm.bat install http://ppds.mccode.org/Tk-CodeText.ppd
@call c:\\strawberry\\perl\\bin\\ppm.bat install http://ppds.mccode.org/Math-Amoeba.ppd
@call c:\\strawberry\\perl\\bin\\ppm.bat install http://ppds.mccode.org/OpenGL.ppd
@call c:\\strawberry\\perl\\bin\\ppm.bat install http://ppds.mccode.org/PDL.ppd
@call c:\\strawberry\\perl\\bin\\ppm.bat install http://ppds.mccode.org/PGPLOT.ppd
