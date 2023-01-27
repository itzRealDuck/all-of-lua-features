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

co2 = coroutine.create(function() 
for i = 101,110,1 do 
print(i) 

end 
end 

	)


	 coroutine.resume(co2) 
	 	coroutine.resume(co) 


-- yay we gonna do files but remember to create a file for this  

files = io.open("test2.lua", "w+") 

files:write(" echo yo i  am def  using for scripting in dotfiles lmao \n") 
files:seek("set", 0) 

print(files:read("*a")) 

files:close() 

files = io.open("test.lua","a+") 
files:write("bru brah\n") 
files:write("nah bru \n") 
files:seek("set",0,1)

print(files:read("*a")) 
files:close()
-- modules

convertModules = require("forproj") 
print(string.format("%.3f cm",convertModules.ftToCm(12))) 

-- medatabels 

aTable2 = {} 

for x = 1, 10 do 

	aTable2[x] = x 
end  

mt = { 

__add = function(table1,table2)
 sumTable = {} 

 for y = 1, #table1 do 

	if (table1[y] ~= nil) and (table2[y] ~= nil) then 

		sumTable[y] = table1[y] + table2[y]

	else 

		sumTable[y] = 0
	end 
end 

return sumTable
end, 

__eq = function(table1, table2)  
	return table1.value == table2.value  
end, 

__lt = function(table1, table2)
 return table1.value < table2.value 
end, 

__le = function(table1, table2 )
 return table1.value <= table2.value 
end, 
	}

	setmetatable(aTable2, mt)  

	print(aTable2 == aTable2)  


addTable2 = {} 
addTable2 = aTable2 + aTable2  


for i = 1, #addTable2 do 
	print(addTable2[i] )  

end  

-- OOP 


person = {Height = 5 , Weight = 100 , bitches = 0,name = "goofy ahh lookin mf "} 

function person:new (Height, Weight, bitches, name) 

	setmetatable({}, person) 

	self.Height = Height 
	self.Weight = Weight 
	self.bitches = bitches 
	self.name = name  

	return self 
end 
function person:toString() 
personStr = string.format( "%s weight %.1f is Libs ,  and height is %.1f  feet, and gets  bitches %.1f  " ,self.name , self.Weight ,self.Height, self.bitches) 
 
return personStr 

end 

spot = person:new(150,4,0, "goofyahh looking mf") 
print(spot.Weight) 

print(spot:toString()) 

cat = person:new()
cat = {Height = 2 , Weight = 13,name = "lucy"} 

function cat:new (name,Height,Weight) 

	setmetatable({}, cat) 

	self.Height = Height 
	self.Weight = Weight 
	self.name = name  

return self 
end 
function cat:toString() 
	catStr = string.format( "%s is his name   ,  and height is %.1f  feet,and his weight is %.1f  " ,self.name , self.Height ,self.Weight) 
	 
	return catStr 
	
	end 


lucy = cat:new("lucy",13,1) 

print(lucy.Weight) 

print(lucy:toString())





