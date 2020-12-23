.EF 
'ola'amigos'right
.EH
'ola'amigos'right
.TL
Learn some groff!
.AU
david
.AI
Universidad Complutense de Madrid Student
.AB
lets learn the groff text proccessor
.AE
.TC
.NH
Tables
.LP
tables will be handled by 
.I tbl :
.FS 
.I
tbl is an external program, but can easily be integrated into groff when generating an output document wiht the -t option
.FE
.NH 2
some details:
.PP
a table begins with .TS and ends with .TE		
.PP
the next line after .TS indicates the position of the table (center), the enclosure (box) and the character that we are going to use to divide the columns (tab command followed by (:))
.PP
after that one, comes another which represents the number of columns there will be.
.PP
next, a line that represents the position of the text in each cell (r n or l) followed by the separator, which in this case is just a vertical line (|)
.NH 2
some example:
.TS
center box tab (:);
cb cb cb cb
r | n | l | l.
first column:second column:third column:fourth column
_
hey:there:what's:up
.TE
.NH
Some simple equations:
.LP
I dont necessarily use equations all the time, but this maybe useful in some situations:
.PP
Equation that represents the discrete Fourier transform:
.EQ
F ( k over N DELTA t ) = sum from j=0 to N-1 f( j DELTA t ) e sup {-{i 2 pi jk} over N}~~~n = 0,1,...,N-1
.EN
.NH 2
second level section
.LP
some more info

