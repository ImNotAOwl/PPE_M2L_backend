CREATE OR REPLACE USER 'webapp'@'localhost' IDENTIFIED BY 'Zod€7c@arT48';
GRANT EXECUTE ON M2L_DB.* TO 'webapp'@'localhost';
GRANT ALL ON M2L_DB.session TO 'webapp'@'localhost';

CREATE OR REPLACE USER 'ubuntu'@'localhost' IDENTIFIED BY 'Zod€7c@arT48';
GRANT EXECUTE ON M2L_DB.* TO 'ubuntu'@'localhost';
GRANT ALL ON M2L_DB.session TO 'ubuntu'@'localhost';