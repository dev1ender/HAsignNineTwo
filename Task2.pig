file = LOAD '/home/acadgild/Pig/Nine/HAsignNineTwo/studentDS' USING PigStorage(',') AS (Name:chararray,ColUnder:chararray,Dob:chararray,Stream:Chararray,Grade:float,State:Chararray,City:chararray);
filter_record = FILTER file BY State == 'alaska';
generating_name =  FOREACH filter_record GENERATE Name;
dump generating_name;

