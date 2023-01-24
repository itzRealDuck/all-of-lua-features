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

-- for in loops 

days = { "monday","tuesday","wensday","thursday","friday","sunday" } 


for key, value in pairs(days) do 
	io.write(value,"\n") 

end

-- tables 

somerandomtable = {} 

for i = 1,10 do 

	
somerandomtable[i] = i 
end


io.write(" this number is picked by andrew tate", somerandomtable[7] ,"\n")
io.write("the number stored inside this table = ", #somerandomtable, "\n" )

table.insert(somerandomtable,3,6) 

io.write("hahaha i inserted a value and its ",somerandomtable[3],"\n" )

print(table.concat(somerandomtable," , "))

table.remove(somerandomtable,1) 

print(table.concat(somerandomtable," , ")) 

-- multi table arrays 

amultitable = {} 

for i = 0,9 do 
amultitable[i] = {} 

for j = 0,9 do 
	amultitable[i][j] = tostring(i) .. tostring(j) 

end  
end 

io.write("i print funni number", amultitable[6][9],"\n" )



for i = 0,9 do 


for j = 0,9 do 
io.write(amultitable[i][j]," : " )

end 
print()
end 
-- functions 


function getSum(num1 , num2) 

	return num1 + num2 
end 

print(string.format(" 5 + 2 = %d  ", getSum(5,2) )) 

function splitStr(TheString)

StringTable = {} 


local i = 1 

for word in string.gmatch(TheString, "[^%s]+") do 

	StringTable[i] = word 
	i = i + 1 
	 end 
return StringTable, i
end  

splitStrTable, numOfStr = splitStr("the turtle") 

for j = 1, numOfStr  do 
	print(string.format("%d : %s ", j ,splitStrTable[j])) 
end 

-- vardic functions 

function getSumMore(...)


local sum = 0 

for k, v in pairs{...} do 

	sum = sum + v 

end 

return sum 
end 

io.write("sum =", getSumMore(1,2,3,4,5,6,7,8,9,10),"\n"  )

doubleit = function(x) return x * 2  end 

io.write("i am gonna double the number 4!   ", doubleit(4),"\n" )

function somerandomfunction() 

	local i = 0 

	return function() 

		i = i + 1 

		return i 

	end 
end 


getI = somerandomfunction() 

print(getI())
print(getI()) 

-- cortine 

co = coroutine.create(function() 
	for i = 1,10 do print(i)  
print(coroutine.status(co)) 
if i == 5 then 
	coroutine.yield()  
end 
end  
end) 
  

print(coroutine.status(co))  

repeat 
	io.write("would you like to resume the coroutine status? enter Y to say yes and N to say no and it must be capital ", "\n" ) 


	cor = io.read() 

if cor == "Y" then 

coroutine.resume(co) 

io.write("you resume it!!")

break 

else 
	io.write("you not write :((( ","\n" )

end 

until cor
