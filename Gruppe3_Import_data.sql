-- -----------------------------------------------------
# Denne sql fil indeholder dataen fra den relationelle model. Ved at execute scriptet kommer alle dataerne ind i databasen.
-- -----------------------------------------------------

-- -----------------------------------------------------
# Denne sektion indeholder data til user tabellen.
-- -----------------------------------------------------
insert into CareerQuiz.User 
	values(1, 'Poul', 'Jensen', 'pjensen@gmail.com', 23, 'M', '2020-06-20 14:25:02', '2021-03-02 19:34:03');
insert into CareerQuiz.User 
	values(2, 'Julie', 'Nielsen', 'julien@hotmail.com', 20, 'F', '2020-06-23 21:19:12', null);
insert into CareerQuiz.User 
	values(3, 'Jeanet', 'Christiansen', 'Janet25@live.com', 25, 'F', '2020-07-15 19:45:53', null);
insert into CareerQuiz.User 
	values(4, 'Mattias', 'Smith', 'mattias-smith@gmail.com', 24, 'M', '2020-02-01 09:54:16', null);

-- -----------------------------------------------------
# Denne sektion indeholder data til quiz tabellen.
-- -----------------------------------------------------
insert into CareerQuiz.Quiz 
	values(1, 'Career Quiz', '12 Questions for Quiz', '0a1b2c3d4e5f', '/Career_Quiz');

-- -----------------------------------------------------
# Denne sektion indeholder data til question tabellen.
-- -----------------------------------------------------
insert into CareerQuiz.Question 
	values(1, '1', '1', 'YES/NO', '5');
insert into CareerQuiz.Question 
	values(2, '1', '1', 'YES/NO', '5');
insert into CareerQuiz.Question 
	values(3, '1', '1', 'YES/NO', '5');
insert into CareerQuiz.Question 
	values(4, '1', '1', 'YES/NO', '5');
insert into CareerQuiz.Question 
	values(5, '1', '1', 'YES/NO', '5');
insert into CareerQuiz.Question 
	values(6, '1', '1', 'YES/NO', '5');
insert into CareerQuiz.Question 
	values(7, '1', '1', 'YES/NO', '5');
insert into CareerQuiz.Question 
	values(8, '1', '1', 'YES/NO', '5');
insert into CareerQuiz.Question 
	values(9, '1', '1', 'YES/NO', '5');
insert into CareerQuiz.Question 
	values(10, '1', '1', 'YES/NO', '5');
insert into CareerQuiz.Question 
	values(11, '1', '1', 'YES/NO', '5');
insert into CareerQuiz.Question 
	values(12, '1', '1', 'YES/NO', '5');

-- -----------------------------------------------------
# Denne sektion indeholder data til category tabellen.
-- -----------------------------------------------------
insert into CareerQuiz.Category 
	values(1, 'Creative');
insert into CareerQuiz.Category 
	values(2, 'Development');
insert into CareerQuiz.Category 
	values(3, 'Digital Marketing');

-- -----------------------------------------------------
# Denne sektion indeholder data til answer tabellen.
-- -----------------------------------------------------
insert into CareerQuiz.Answer 
	values(1, '1', '1', '1', '5', 'Yes');
insert into CareerQuiz.Answer 
	values(2, '1', '1', '2', '5', 'Yes');
insert into CareerQuiz.Answer 
	values(3, '1', '1', '3', '5', 'Yes');
insert into CareerQuiz.Answer 
	values(4, '1', '1', '4', '5', 'Yes');
insert into CareerQuiz.Answer 
	values(5, '1', '1', '5', '0', 'No');
insert into CareerQuiz.Answer 
	values(6, '1', '1', '6', '0', 'No');
insert into CareerQuiz.Answer 
	values(7, '1', '1', '7', '5', 'Yes');
insert into CareerQuiz.Answer 
	values(8, '1', '1', '8', '5', 'Yes');
insert into CareerQuiz.Answer 
	values(9, '1', '1', '9', '5', 'Yes');
insert into CareerQuiz.Answer 
	values(10, '1', '1', '10', '0', 'No');
insert into CareerQuiz.Answer 
	values(11, '1', '1', '11', '5', 'Yes');
insert into CareerQuiz.Answer 
	values(12, '1', '1', '12', '5', 'Yes');

-- -----------------------------------------------------
# Denne sektion indeholder data til quizattempt tabellen.
-- -----------------------------------------------------
insert into CareerQuiz.Quizattempt 
	values(1, '1', '1', '20', '10', '15', '2020-06-20 14:34:12', '2020-06-20 14:44:34', '10.22');
insert into CareerQuiz.Quizattempt 
	values(2, '3', '1', '15', '2', '20', '2020-07-15 19:52:34', '2020-07-15 20:02:12', '09.38');
insert into CareerQuiz.Quizattempt 
	values(3, '4', '1', '15', '20', '5', '2020-02-01 10:11:43', '2020-02-01 10:19:02', '07.19');
insert into CareerQuiz.Quizattempt 
	values(4, '2', '1', '10', '10', '20', '2020-06-23 21:24:02','2020-06-23 21:30:43', '06.41');
