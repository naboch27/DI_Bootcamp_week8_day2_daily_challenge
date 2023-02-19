-- Active: 1676308418229@@127.0.0.1@5432@postgres@public

/* create table  FirstTab with two property id type integer and name varchar */

CREATE TABLE FirstTab ( id integer, name VARCHAR(10) );

/* insert the value in the table FirstTab */

INSERT INTO FirstTab
VALUES (5, 'Pawan'), (6, 'Sharlee'), (7, 'Krish'), (NULL, 'Avtaar');

/* select all value and the table FirstTab */

SELECT * FROM FirstTab;

/* create table  SecondTab with one property id type integer  */

CREATE TABLE SecondTab ( id integer );

/* insert the value in the table SecondTab */

INSERT INTO SecondTab VALUES (5), (NULL);

/* select all value and the table SecondTab */

SELECT * FROM SecondTab ;

/*
 /////////// 
 *******Request **********
 INSERT INTO FirstTab VALUES
 (5,'Pawan'),
 (6,'Sharlee'),
 (7,'Krish'),
 (NULL,'Avtaar')
 ;
 ///////// 
 *********Result of the request*****
 // SELECT * FROM FirstTab ;
 ID  Name
 5   Pawan
 6   Sharlee
 7   Krish
 NULL    Avtaar
 /////////////////////////
 */

/*
 /////////// 
 *******Request **********
 INSERT INTO SecondTab VALUES
 (5),
 (NULL);
 ///////// 
 *********Result of the request*****
 //SELECT * FROM SecondTab ;
 ID
 5
 NULL
 /////////////////////////
 */


 /*. What will be the OUTPUT of the following statement?*/

    SELECT COUNT(*) 
    FROM FirstTab AS ft WHERE ft.id NOT IN ( SELECT id FROM SecondTab WHERE id IS NULL );

   
   /* . What will be the OUTPUT of the following statement?*/

    SELECT COUNT(*) 
    FROM FirstTab AS ft WHERE ft.id NOT IN ( SELECT id FROM SecondTab WHERE id = 5 );

 /*What will be the OUTPUT of the following statement?*/

    SELECT COUNT(*) 
    FROM FirstTab AS ft WHERE ft.id NOT IN ( SELECT id FROM SecondTab )


     /* What will be the OUTPUT of the following statement? */

    SELECT COUNT(*) 
    FROM FirstTab AS ft WHERE ft.id NOT IN ( SELECT id FROM SecondTab WHERE id IS NOT NULL )
