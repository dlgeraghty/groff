# groff
learning groff

command to compile groff and get pdf output is: (from lukesmith's compiler program)
```
preconv "$file" | refer -PS -e | groff -me -ms -kept -Tps > "$base".pdf ;;
```
of course you need to change $file and $base to your desired names
