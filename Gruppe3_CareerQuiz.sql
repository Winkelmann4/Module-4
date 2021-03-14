-- -----------------------------------------------------
# Dette er et script for et database design som skal inde holde quiz data.


# Her oprettes databasen "CareerQuiz". For at scriptet ikke opretter den samme database flere gange skriver man "IF NOT EXSITS"
# Man sætter "DEFAULT CHARACTHER SET" for gøre systemet klar over hvilke tegnsæt der bliver brugt. 
# "utf8mb4" er en standard encodings for MySQL.
# "USE" er en funktion som vælger hvilken database sql skal arbejde med. I dette tilfælde "CareerQuiz".
-- -----------------------------------------------------
CREATE DATABASE IF NOT EXISTS `CareerQuiz` DEFAULT CHARACTER SET 'utf8mb4' ;
USE `CareerQuiz` ;

-- -----------------------------------------------------
# Oprettelse af tabellen "User"
-- -----------------------------------------------------
# I afsnittet nedenfor oprettes en ny tabel til databasen.
# Til oprettelse af tabeller anvendes "IF NOT EXISTS" også. Dette bruges for at undgå duplikation af tabellerne.
# "INT" betyder at databasen forventer et heltal uden mellemrum. "VARCHAR(maks antal tegn)" betyder at databasen forventer et input som er kan være tal, bogstaver og enkle tegn.
# Her er "CHARACTER SET" til "utf8mb4" og "COLLATE" er en sortering af et regelsæt, der bruges til at sammenligne tegn i et bestemt tegnsæt. 
# I dette tilfælde er det fordi vi gerne vil benytte "utf8mb4_unicode_ci".
# "NOT NULL" vil sige at databasen forventer at feltet er tomt.
# "DATETIME" er en kommando som fortæller databasen at i det felt kommer der til at så et præcist tidspunkt og en dato "hh:mm:ss YYYY-MM-DD"
# "DATE" er hvis man kun ønsker at der skal stå datoen uden tidspunktet "YYYY-MM-DD".
# "AUTO_INCREMENT" gør det muligt at generere et unikt nummer automatisk, når en ny post indsættes i en tabel.
# I denne tabel er der sat en "PRIMARY KEY"(PK) som er "ID" kolonnen. 
# En PK er nøglen som databasen benytter for at oprette relationer mellem hinanden.
# En "ENGINE" er den som en databasen bruger til at oprette, læse, opdatere og slette data fra en database.
# "InnoDB" er den mest almindelig "ENGINE" at anvende i sql og Oracle anbefaler at bruge InnoDB til tabeller. 
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CareerQuiz`.`User` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `FirstName` VARCHAR(200) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `LastName` VARCHAR(200) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `E-mail` VARCHAR(200) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `Age` INT NOT NULL,
  `Gender` VARCHAR(45) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `RegisteredAt` DATETIME NOT NULL,
  `TerminationDate` DATETIME,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
# Oprettelse af tabellen "Quiz"
-- -----------------------------------------------------
# I afsnittet nedenfor oprettes en ny tabel til databasen.
# Til oprettelse af tabeller anvendes "IF NOT EXISTS" også. Dette bruges for at undgå duplikation af tabellerne.
# "INT" betyder at databasen forventer et tal input. "VARCHAR(maks antal tegn)" betyder at databasen forventer et input med bogstaver.
# Her er "CHARACTER SET" til "utf8mb4" og "COLLATE" er en sortering af et regelsæt, der bruges til at sammenligne tegn i et bestemt tegnsæt. 
# I dette tilfælde er det fordi vi gerne vil benytte "utf8mb4_unicode_ci".
# "NOT NULL" vil sige at databasen forventer at feltet er tomt.
# "AUTO_INCREMENT" gør det muligt at generere et unikt nummer automatisk, når en ny post indsættes i en tabel.
# I denne tabel er der sat en "PRIMARY KEY"(PK) som er "ID" kolonnen. 
# En PK er nøglen som databasen benytter for at oprette relationer mellem hinanden. 
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CareerQuiz`.`Quiz` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Title` VARCHAR(200) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `Introduction` VARCHAR(200) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `HostID` VARCHAR(200) NOT NULL,
  `Slug` VARCHAR(200) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
# Oprettelse af tabellen "Category"
-- -----------------------------------------------------
# I afsnittet nedenfor oprettes en ny tabel til databasen.
# Til oprettelse af tabeller anvendes "IF NOT EXISTS" også. Dette bruges for at undgå duplikation af tabellerne.
# "INT" betyder at databasen forventer et tal input. "VARCHAR(maks antal tegn)" betyder at databasen forventer et input med bogstaver.
# Her er "CHARACTER SET" til "utf8mb4" og "COLLATE" er en sortering af et regelsæt, der bruges til at sammenligne tegn i et bestemt tegnsæt. 
# I dette tilfælde er det fordi vi gerne vil benytte "utf8mb4_unicode_ci".
# "NOT NULL" vil sige at databasen forventer at feltet er tomt.
# "AUTO_INCREMENT" gør det muligt at generere et unikt nummer automatisk, når en ny post indsættes i en tabel.
# I denne tabel er der sat en "PRIMARY KEY"(PK) som er "ID" kolonnen. 
# En PK er nøglen som databasen benytter for at oprette relationer mellem hinanden. 
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CareerQuiz`.`Category` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(100) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
# Oprettelse af tabellen "Question"
-- -----------------------------------------------------
# I afsnittet nedenfor oprettes en ny tabel til databasen.
# Til oprettelse af tabeller anvendes "IF NOT EXISTS" også. Dette bruges for at undgå duplikation af tabellerne.
# "INT" betyder at databasen forventer et tal input. "VARCHAR(maks antal tegn)" betyder at databasen forventer et input med bogstaver.
# Her er "CHARACTER SET" til "utf8mb4" og "COLLATE" er en sortering af et regelsæt, der bruges til at sammenligne tegn i et bestemt tegnsæt. 
# I dette tilfælde er det fordi vi gerne vil benytte "utf8mb4_unicode_ci".
# "NOT NULL" vil sige at databasen forventer at feltet er tomt.
# "AUTO_INCREMENT" gør det muligt at generere et unikt nummer automatisk, når en ny post indsættes i en tabel.
# I denne tabel er der sat en "PRIMARY KEY"(PK) som er "ID" kolonnen. 
# En PK er nøglen som databasen benytter for at oprette relationer mellem hinanden.
# "INDEX" benyttes som databasenssøgemaskinen. Et index kan bruges til at fremskynde datahentning. Et indeks er en markør til data i en tabel.
# Vi opretter et index til vores "FOREIGN KEYS"(FK) da databasen ikke ville fungere uden.
# FK gør det muligt at krydshenvise relaterede data på tværs af tabeller, derudover hjælper FK med at holde disse spredte data konsistente.
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CareerQuiz`.`Question` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `QuizID` INT NOT NULL,
  `CategoryID` INT NOT NULL,
  `QuestionType` VARCHAR(50) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `Possible_Points` INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `FK_Category_idx` (`CategoryID` ASC) VISIBLE,
  INDEX `FK_QuizID_idx` (`QuizID` ASC) VISIBLE,
  CONSTRAINT `FK_Category_Question`
    FOREIGN KEY (`CategoryID`)
    REFERENCES `CareerQuiz`.`Category` (`ID`),
  CONSTRAINT `FK_QuizID_Question`
    FOREIGN KEY (`QuizID`)
    REFERENCES `CareerQuiz`.`Quiz` (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
# Oprettelse af tabellen "Answer"
-- -----------------------------------------------------
# I afsnittet nedenfor oprettes en ny tabel til databasen.
# Til oprettelse af tabeller anvendes "IF NOT EXISTS" også. Dette bruges for at undgå duplikation af tabellerne.
# "INT" betyder at databasen forventer et tal input. "VARCHAR(maks antal tegn)" betyder at databasen forventer et input med bogstaver.
# Her er "CHARACTER SET" til "utf8mb4" og "COLLATE" er en sortering af et regelsæt, der bruges til at sammenligne tegn i et bestemt tegnsæt. 
# I dette tilfælde er det fordi vi gerne vil benytte "utf8mb4_unicode_ci".
# "NOT NULL" vil sige at databasen forventer at feltet er tomt.
# "AUTO_INCREMENT" gør det muligt at generere et unikt nummer automatisk, når en ny post indsættes i en tabel.
# I denne tabel er der sat en "PRIMARY KEY"(PK) som er "ID" kolonnen. 
# En PK er nøglen som databasen benytter for at oprette relationer mellem hinanden.
# "INDEX" benyttes som databasenssøgemaskinen. Et index kan bruges til at fremskynde datahentning. Et indeks er en markør til data i en tabel.
# Vi opretter et index til vores "FOREIGN KEYS"(FK) da databasen ikke ville fungere uden.
# FK gør det muligt at krydshenvise relaterede data på tværs af tabeller, derudover hjælper FK med at holde disse spredte data konsistente.
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CareerQuiz`.`Answer` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `UserID` INT NOT NULL,
  `QuizID` INT NOT NULL,
  `QuestionID` INT NOT NULL,
  `Given_points` INT NOT NULL,
  `Correct` VARCHAR(45) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `FK_UserID_idx` (`UserID` ASC) VISIBLE,
  INDEX `FK_QuizID_idx` (`QuizID` ASC) VISIBLE,
  INDEX `FK_QuestionID_idx` (`QuestionID` ASC) VISIBLE,
  CONSTRAINT `FK_UserID_Answer`
    FOREIGN KEY (`UserID`)
    REFERENCES `CareerQuiz`.`User` (`ID`),
  CONSTRAINT `FK_QuizID_Answer`
    FOREIGN KEY (`QuizID`)
    REFERENCES `CareerQuiz`.`Quiz` (`ID`),
  CONSTRAINT `FK_QuestionID_Answer`
    FOREIGN KEY (`QuestionID`)
    REFERENCES `CareerQuiz`.`Question` (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
# Oprettelse af tabellen "QuizAttempt"
-- -----------------------------------------------------
# I afsnittet nedenfor oprettes en ny tabel til databasen.
# Til oprettelse af tabeller anvendes "IF NOT EXISTS" også. Dette bruges for at undgå duplikation af tabellerne.
# "INT" betyder at databasen forventer et tal input.
# "NOT NULL" vil sige at databasen forventer at feltet er tomt.
# "AUTO_INCREMENT" gør det muligt at generere et unikt nummer automatisk, når en ny post indsættes i en tabel.
# I denne tabel er der sat en "PRIMARY KEY"(PK) som er "ID" kolonnen. 
# En PK er nøglen som databasen benytter for at oprette relationer mellem hinanden.
# "INDEX" benyttes som databasenssøgemaskinen. Et index kan bruges til at fremskynde datahentning. Et indeks er en markør til data i en tabel.
# Vi opretter et index til vores "FOREIGN KEYS"(FK) da databasen ikke ville fungere uden.
# FK gør det muligt at krydshenvise relaterede data på tværs af tabeller, derudover hjælper FK med at holde disse spredte data konsistente.
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CareerQuiz`.`QuizAttempt` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `UserID` INT NOT NULL,
  `QuizID` INT NOT NULL,
  `ScoreCreative` INT NOT NULL,
  `ScoreDevelopment` INT NOT NULL,
  `ScoreDigital_Marketing` INT NOT NULL,
  `StartedAt` DATETIME NOT NULL,
  `FinishedAt` DATETIME NOT NULL,
  `TimeSpend` FLOAT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `FK_UserID_idx` (`UserID` ASC) VISIBLE,
  INDEX `FK_QuizID_idx` (`QuizID` ASC) VISIBLE,
  CONSTRAINT `FK_UserID_QuizAttempt`
    FOREIGN KEY (`UserID`)
    REFERENCES `CareerQuiz`.`User` (`ID`),
  CONSTRAINT `FK_QuizID_QuizAttempt`
    FOREIGN KEY (`QuizID`)
    REFERENCES `CareerQuiz`.`Quiz` (`ID`))
ENGINE = InnoDB;

SET FOREIGN_KEY_CHECKS = 0;
