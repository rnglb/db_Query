/*
Write an SQL query to rank the scores. The ranking should be calculated according to the following rules:

The scores should be ranked from the highest to the lowest.
If there is a tie between two scores, both should have the same ranking.
After a tie, the next ranking number should be the next consecutive integer value.
 In other words, there should be no holes between ranks.
*/
SELECT score,
DENSE_RANK() Over(ORDER BY score DESC) AS "Rank"
FROM Scores;








------------------------------Notes ----------------------------------------------
/*
There are 3 types of functions that can be used to rank the records.

1.Row_number
2.Rank
3.Dense_rank

> Row_Number
This function will rank the column sequentially. Starting with 1 and then incrementing by 1 
(eg.1,2,3,4), regardless of the same data in the column to be ranked.

SELECT StudentName, MarksObtained,
    ROW_NUMBER() OVER(ORDER BY MarksObtained DESC) AS Rank
    FROM StudentTotalMarks


> Rank
This function will rank the column based on the specified criteria. If the table two students 
have the same marks then this function will give the same rank, however, the next rank number 
will be skipped (eg.1,2,3,3,5,6).
 
 SELECT StudentName, MarksObtained,
    RANK() Over(ORDER BY MarksObtained DESC) AS Rank
    FROM StudentTotalMarks


> Dense_Rank
The Dense_rank() function is used where consecutive ranking values need to be given based on 
specific criteria. It Ranks the column in the same way as of Rank() function however rank is 
not skipped here (eg. 1,2,3,4,5,5,6)

SELECT StudentName, MarksObtained, 
DENSE_RANK() OVER(ORDER BY MarksObtained DESC) AS Rank 
FROM StudentTotalMarks