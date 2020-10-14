
--[[
*****************************************************************************************
*
*
*  This script is code stub for CodeChef problem code STAR_LUA
*  under contest PYLT20TS in Task 0 of Nirikshak Bot (NB) Theme (eYRC 2020-21).
*
*  Filename:            STAR_LUA.lua
*  Created:             07/10/2020
*  Last Modified:       07/10/2020
*  Author:              e-Yantra Team
*
*****************************************************************************************
]]--
 
-- generatePattern function to print the pattern of start(*) and hash(#)
function generatePattern()
   n = tonumber(io.read())
   for i=0,n-1,1 do
      for j=1,n-i,1 do
         if j%5==0 then
            io.write("#")
         else
            io.write("*")
         end
      end
      io.write("\n")
   end
end
 
-- read the test cases input
tc = tonumber(io.read())
 
-- for each case, call the generatePattern function to print the pattern
for i=1,tc
do
    generatePattern()
end       
