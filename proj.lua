print("hello world") 

-- yo 
 name = 'your father that left the milk 100 years ago' 
  io.write("the name is", name, "\n" ) 
  io.write("the length of the string is ", #name, "\n") 

bignumb = 892382912 
io.write("this is big number", bignumb, "\n" )
io.write(" the type of the number ", type(bignumb), "\n" )
floatprecision = 9.999999999999 + 0.9
io.write( "this number has that many decimals ", floatprecision, "\n" ) 
io.write( " the type of this number ",type(floatprecision),"\n"  ) 

longstring = [[   
i am very long
bro you should 
give up 
no point 
in reading 
me
]] 
name2 = 'uhh me'
longstring = longstring .. name2
io.write("  these string is very long here it is " ,longstring,"\n" ) 
io.write("the type of this  is", type(longstring), "\n" ) 
io.write("this is long as ", #longstring,"charachter", "\n" ) 

getbitches = true 


io.write(type(getbitches),"\n" )

-- math 
print("hello i will be doing some math") 
io.write( "9 + 10= ", 9+10, "\n" ) 
io.write( " 200 - 140 = ", 200-140, "\n" )
io.write(" 35 * 5 = ", 35*5 , "\n" ) 
io.write(" 35 / 5 = ", 35/5 , "\n" )

-- math operations  

io.write("sqrt of 64 =", math.sqrt( 64 ),"\n" ) 
io.write("floor(2.345) =",math.floor(2.345),"\n" ) 
io.write("ceil(2.345) =",math.ceil(2.345),"\n" ) 
io.write("max(2,3) = ", math.max(2 , 3),"\n" ) 
io.write("min(2,3) = ",math.min(2,3 ),"\n" ) 
io.write("pow(8,2) = ", math.pow(8,2),"\n"  )

-- random number gen 
io.write(" random number generator wo hooooo ",math.random(1000 ),"\n" )
io.write( math.random(5,10),"\n" )
math.randomseed(os.time()) 

print(string.format(" PI = %.10f  ",math.pi , "\n" )) 

-- conditonals aka if statments


age = 18 

if ( age < 19  ) or ( age < 69420 )
	then 
	io.write("you are more than 18!","\n") 
end 

print(string.format(" not false  = %s", tostring(not false )))
-- tenetary operators
-- canVote = age > 20 ? true : false
canVote = age > 20 and true or false

io.write("can i vote ", tostring(canVote),"\n" )

-- finding length of string

quoteee = " yo i am skyler white yo , my husband is walter white yo , he knows everything , he is a meth dealer , he belives meth is the best drug"  

io.write("the length of the quote  i typed  ", string.len(quoteee),"\n")
io.write("i am replacing meth with methamine ", string.gsub(quoteee, "meth","methamine"), "\n"  )
io.write("i am finding index of methamine ", string.find(quoteee , "meth"),"\n" ) 

io.write("gonna turn all chars to upper case!", string.upper(quoteee) )
-- while loops 

i = 1 

while ( i <= 10 ) 
	do 
		io.write(i, "\n" ) 
		i = i + 1 

if i == 11 then break end 

end 

print("\n")

-- repeat loops aka while loops but better 
 
repeat 
	io.write(" enter you're Guess ") 

	Guess = io.read() 


if Guess == "money" then 
	break 

else 
	io.write("bad") 
end 
until  Guess  


-- for loops 
for i = 1 , 10 , 1  do

io.write(i , "\n" ) 

end

