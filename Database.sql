CREATE TABLE restaurant(
restID int NOT NULL auto_increment PRIMARY KEY
, restName varchar(50)
, restType varchar(50)
, restDesc varchar(255)
, restRate int
, restImg image
);

CREATE TABLE user(
userID int NOT NULL auto_increment PRIMARY KEY
, userName varchar(50), userAge int
, userGender varchar(25)
, userImg image
, userDesc varchar(255)
, userDis int
);

CREATE TABLE review(
reviewDesc varchar(500)
, reviewRating int
, resID int FOREIGN KEY REFERENCES restaurant(restID)
, userID int FOREIGN KEY REFERENCES user(userID);
);