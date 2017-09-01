file = LOAD '/home/acadgild/Pig/Nine/HAsignNineTwo/studentDS' USING PigStorage(',') AS (Name:chararray,ColUnder:chararray,Dob:chararray,Stream:Chararray,Grade:float,State:Chararray,City:chararray);
filter_record = FILTER file BY ($5 == 'oregon' AND $3 == 'BE');
result = FOREACH filter_record GENERATE $0;
dump result;
