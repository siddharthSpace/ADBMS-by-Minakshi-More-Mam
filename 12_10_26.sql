-- Start a new transaction

/*;BEGIN;

-- or
START TRANSACTION; To execute statements as a single transaction,
 we must explicitlly start the transaction.
 COMMIT:- Saves all changes made during the transcation.
 ROLLBACK:- Undos all changes made during the transaction.
 SAVEPOINT:- Sets a save point within  a transaction to roll back to later 
 ROLLBACK TO SAVEPOINT :- Rolls back to a specific savepoint without 
 affecting earlier changes */
 
 drop database TCL;
 create database TCL;
 
 use TCL;
 
 create table orders(
 order_id int primary key,
 customer_name varchar(100),
 status varchar(50)
 );
 
 desc orders;
 
 -- start the transaction--
 
 set autocommit=0; /* in mysql auto commit mode is enable by default,
 which means whenever we execute any sql statement is automatically commited
 */
 
 start transaction;
 
 insert into orders values( 101 , 'Geet ', 'Pending');
 insert into orders values(102 , 'Bob', 'Pending');
 commit;
 update orders set customer_name= 'Raj' where order_id = 102;
 rollback;
 
-- truncate table orders;

select * from orders;
 
 -- step 1: Insert a few orders
 
 insert into orders values(103 , 'om', 'pending');
 insert into orders values(104, 'sahil', 'pending');
 savepoint sp1;
 
 select * from orders;
 
 -- step 2: update 
 
 update orders set customer_name= 'shyam' where order_id = 103;
 savepoint sp2;
 
 
 -- step 3 : Delete another order 
 
 delete from orders where  order_id = 102;
 savepoint sp3;
 
 -- we want to undo the delete but keep the update 
 
ROLLBACK to savepoint sp2;
 
 
 
 
 
 
 