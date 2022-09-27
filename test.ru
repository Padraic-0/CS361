#This program will read in a user inputed string in the form "operand x y" and then preform the operation. Typing 
# quit will cause the program to end. Invalid opperands and variables will cause the usage message to be diplayed.
usage = "usage: add|sub|mul|div v0 v1\nquit"
puts(usage)
run = true
while(run)
print "SuperMathyBot> "
s = gets
op,x,y = s.split()
if op == "quit"
    run = false
end
#If variables can't be floats, do no math by changing opperand to invalid, causing usage to be printed
begin
    x = Float(x)
rescue
    op = ""
end
begin
    y = Float(y)
rescue
    op = ""
end

if op == "add"
    out = x + y
    puts(out)
elsif op == "sub"
    out = x - y
    puts(out)
elsif op == "mul"
    out = x * y
    puts(out)
elsif op == "div"
    if y == 0
        puts("Can't divide by zero.")
    else
    out = x / y
    puts(out)
end
else #if th
    puts(usage)
end
end