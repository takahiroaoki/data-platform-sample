CREATE TABLE train(
    "PassengerId" INT NOT NULL,
    "Survived" INT,
    "Pclass" VARCHAR(100),
    "Name" VARCHAR(100),
    "Sex" VARCHAR(100),
    "Age" INT,
    "SibSip" INT,
    "Parch" INT,
    "Ticket" VARCHAR(100),
    "Fare" VARCHAR(100),
    "Cabin" VARCHAR(100),
    "Embarked" CHAR(1),

    PRIMARY KEY("PassengerId")
);