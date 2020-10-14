--[[
*****************************************************************************************
*
*
*  This script is code stub for CodeChef problem code SCOR_LUA
*  under contest PYLT20TS in Task 0 of Nirikshak Bot (NB) Theme (eYRC 2020-21).
*
*  Filename:            SCOR_LUA.lua
*  Created:             07/10/2020
*  Last Modified:       07/10/2020
*  Author:              e-Yantra Team
*
*****************************************************************************************
]]--
 
-- getTheTopper function finds the student name who scored max, i.e. Topper's name from the scorelist created by readScoreList function
function getTheTopper(score_list)
   score = {}
   for i,n in ipairs(score_list) do
      if i%2 == 0 then
        n = tonumber(n)
        table.insert(score, n)
      end
   end
   table.sort(score)
   max = score[#score]

   index = {}
   for k, v in ipairs(score_list) do
         if k%2 == 0 then
            v = tonumber(v)
            index[v] = k
         else
            index[v] = k
         end 
   end

   tieCase = {}
   for p, q in ipairs(score) do
      if max == q then
         table.insert(tieCase, q)
      end
   end
   if #tieCase > 1 then -- tieCase
      for i, j in ipairs(score) do
         if j ~= max then
            print(score_list[index[j]-1])
         end
      end
      for p, q in ipairs(score_list) do
         if tonumber(q) == max then
            print(score_list[p-1])
         end
      end
   else 
      name = score_list[index[max] - 1]
      print(name)
   end
end
 
-- readScoreList function creates the scorelist table from input
function readScoreList(N)
   local scorelist={}
   for i=1,N do
      r = io.read()
      for w in (r):gmatch("([^ ]*)") do
         table.insert(scorelist, w)
      end
   end
   return scorelist
end
 
-- for each case, call the readScoreList and getTheTopper functions to get the scores of students and then find the student name who scored max, i.e. Topper's name
tc = tonumber(io.read())
for i=1,tc
do
    local N=tonumber(io.read())
    score_list=readScoreList(N);
    getTheTopper(score_list)
end