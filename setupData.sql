-- Stadiums
INSERT INTO Stadium (StadiumID, Name, City, Capacity) VALUES
(1, 'Old Trafford', 'Manchester', 74000),
(2, 'Camp Nou', 'Barcelona', 99354),
(3, 'Allianz Arena', 'Munich', 75000);

-- Competitions
INSERT INTO Competition (CompetitionID, Name, Season) VALUES
(1, 'UEFA Champions League', 2025),
(2, 'Premier League', 2025),
(3, 'La Liga', 2025);

-- Teams
INSERT INTO Team (TeamID, TeamName, FoundedYear, City, StadiumID) VALUES
(1, 'Manchester United', 1878, 'Manchester', 1),
(2, 'FC Barcelona', 1899, 'Barcelona', 2),
(3, 'Bayern Munich', 1900, 'Munich', 3);

-- Team Members
INSERT INTO TeamMember (PersonID, FirstName, LastName, BirthDate, Nationality, Salary, TeamID) VALUES
(1, 'Erik', 'Ten Hag', '1970-02-02', 'Dutch', 5000000, 1),
(2, 'Marcus', 'Rashford', '1997-10-31', 'English', 10000000, 1),
(3, 'Bruno', 'Fernandes', '1994-09-08', 'Portuguese', 12000000, 1),
(4, 'Xavi', 'Hernandez', '1980-01-25', 'Spanish', 6000000, 2),
(5, 'Pedri', 'Gonzalez', '2002-11-25', 'Spanish', 8000000, 2),
(6, 'Robert', 'Lewandowski', '1988-08-21', 'Polish', 11000000, 2),
(7, 'Thomas', 'Tuchel', '1973-08-29', 'German', 5500000, 3),
(8, 'Manuel', 'Neuer', '1986-03-27', 'German', 9000000, 3),
(9, 'Jamal', 'Musiala', '2003-02-26', 'German', 7000000, 3);

-- Coaches
INSERT INTO Coach (CoachID, MemberID, Role) VALUES
(1, 1, 'Head Coach'),
(2, 4, 'Head Coach'),
(3, 7, 'Head Coach');

-- Players
INSERT INTO Player (PlayerID, MemberID, Position, JerseyNumber) VALUES
(1, 2, 'Forward', 10),
(2, 3, 'Midfielder', 8),
(3, 5, 'Midfielder', 8),
(4, 6, 'Forward', 9),
(5, 8, 'Goalkeeper', 1),
(6, 9, 'Midfielder', 42);

-- Matches
INSERT INTO Match (MatchID, MatchDate, StadiumID, CompetitionID, HomeScore, AwayScore, HomeTeamID, AwayTeamID) VALUES
(1, '2025-02-10', 1, 1, 2, 1, 1, 2),  -- Man Utd vs Barcelona
(2, '2025-03-15', 3, 1, 3, 2, 3, 1),  -- Bayern vs Man Utd
(3, '2025-04-20', 2, 1, 1, 1, 2, 3);  -- Barcelona vs Bayern

-- PlayerMatch
INSERT INTO PlayerMatch (PlayerMatchID, PlayerID, MatchID, MinutesPlayed, Goals, Assists, YellowCards, RedCards) VALUES
(1, 1, 1, 90, 1, 0, 1, 0),
(2, 2, 1, 85, 1, 1, 0, 0),
(3, 3, 1, 90, 0, 1, 0, 0),
(4, 4, 1, 90, 0, 0, 0, 0),
(5, 5, 2, 90, 0, 0, 0, 0),
(6, 6, 2, 75, 1, 0, 0, 0),
(7, 1, 2, 90, 1, 0, 0, 0),
(8, 3, 3, 88, 0, 1, 1, 0),
(9, 4, 3, 90, 1, 0, 0, 0),
(10, 6, 3, 80, 0, 0, 0, 0);
