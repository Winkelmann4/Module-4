-- -----------------------------------------------------
# Dette er et script for de views som er lavet i databasen.
# Der er "HighCreative" er et view som henter de "User's" som har højere end "15" i score for "Creative". 
# Det samme er lavet for "HighDevelopment" og "HighDigital_Marketing".
# Hvis filen "Gruppe3_CareerQuiz.sql" og filen "Gruppe3_Import_data.sql" er eksekveret, kan denne fil eksekveres.
# Denne fil skal altså være den sidste fil som bliver eksekveret.
-- -----------------------------------------------------
CREATE VIEW HighCreative AS
SELECT 
		QuizAttempt.ID,
        QuizAttempt.UserID,
        QuizAttempt.QuizID,
        QuizAttempt.ScoreCreative
FROM
		QuizAttempt
        
WHERE ScoreCreative = '15';


CREATE VIEW HighDevelopment AS
SELECT 
		QuizAttempt.ID,
        QuizAttempt.UserID,
        QuizAttempt.QuizID,
        QuizAttempt.Development
FROM
		QuizAttempt
        
WHERE ScoreDevelopment = '15';


CREATE VIEW HighDigital_Marketing AS
SELECT 
		QuizAttempt.ID,
        QuizAttempt.UserID,
        QuizAttempt.QuizID,
        QuizAttempt.Digital_Marketing
FROM
		QuizAttempt
        
WHERE ScoreDigital_Marketing = '15';