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
.NH
figures
.LP
figures are an essential part of every serious document, lets see how groff handles them:
.PP 
the first annoying thing is the fact that when using the
.I ms
macro, you cant just use regular images in your file. What do I mean by that? well, you need to use postrcript  
.PP
.B "I got images working!"
.NH 2
correct arguments to make images work:
.PP
In order to get the images working, you need to use specific arguments for groff, more precisely, you need to invoke 
.B grops
, and in order to this you should use the following command:
.I "groff -ms -kept -Tps file.ms > file.pdf"
.PSPIC example.eps 

.NH
references
.LP
other crucial part of any serious document are references to other things
.PP
it's easy to create a reference with groff, as this is handled by the 
.I refer
program. The only thing that you have to keep in mind is that the bibliography file, looks different from the one you may have for latex, as the way of tagging and describing an item is slightly different

.NH 2
The bib file location
.PP
In order to specify a certain file to use as your reference database you can do two things, use the -p option when using the 
.I refer
command, followed by the file you wish to use, or set the 
.I $REFER
environment variable, and idk, i must be dumb or something but i cant get this second option to work...
.PP
Note that by default, 
.I refer
will look for this file in 
.I /usr/dict/papers/Ind
by default
.NH 2
formatting the bib file
.PP
the format of the bib file is rather simple, you can check the refer man pages to learn about them
.NH 2
combine refer with groff
.PP
okay, so you may dont know how the refer program combines with the groff program in order to format the citations correctly.
.PP 
you should run the programs piping the output of one into the other, because they generate streams of text. What do I mean by this?
.PP
try to run the refer command with your groff file, you will see that it outputs a stream of text, and if you look closely you may notice that this stream contains exactly the same things as the original file except for the citations, which will have been formatted. So, what you actually need to do is feed this stream of text to groff 
.PP
as an example, you may want to do something like:
.I "refer -PS -e test.ms | groff -ms -kept -T pdf > test.pdf"

.[
[  ] 1991
.]
.TC	\" the table of contents must be at the end of the document!
