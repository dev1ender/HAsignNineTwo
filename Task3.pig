file = LOAD '/home/acadgild/Pig/Nine/HAsignNineTwo/studentDS' USING PigStorage(',') AS (Name:chararray,ColUnder:chararray,Dob:chararray,Stream:Chararray,Grade:float,State:Chararray,City:chararray);
filter_record = FILTER file BY (State == 'alaska' AND ColUnder=='goverenment');
group_record =  GROUP filter_record BY (State,ColUnder);
count_record = FOREACH group_record GENERATE group, COUNT(filter_record.ColUnder);
dump count_record;

