DROP TABLE IF EXISTS songs;
CREATE TABLE songs(
song_id INTEGER PRIMARY KEY ,
songtitle VARCHAR(50) NOT NULL ,
artistname VARCHAR(40) NOT NULL ,
genre VARCHAR(20) ,
mood VARCHAR(20) ,
streams_m DECIMAL(6,1) DEFAULT 0 ,
release_year INTEGER ,
duration_sec INTEGER
);

--insert songs records
INSERT INTO songs(
  song_id,songtitle,artistname,genre,mood,streams_m,release_year,duration_sec)
VALUES
 (1 ,'midnight matatu' , 'zuri k' ,'afrobeats ', 'hype' ,185.45 ,2024 ,192) ,
 ( 2 ,'pesa calling' ,'Dj kimani' ,'gengetone' ,'hype' ,92.3 ,2023 ,178),
  (3 ,'chai at 3 am' ,'wanjiru' ,'bongo flava' ,'chill' ,45.8 ,2022 ,210 ),
 ( 4 ,'campus crush' ,'tito vibes' ,'afrobeats' ,'heartbreak' ,120.6 ,2025 ,201) ,
  (5 ,'lecture hall lo-fi' ,'nuru beats' ,'lo-fi' ,'study' ,33.2 ,2024 ,245) ,
  (6 ,'leg day anthem' ,'brawn k' ,'hip-hop' ,'gym' ,78.9 ,2023 ,187) ,
  (7 ,'ghosted'  ,'amani' ,'rnb' ,'heartbreak' ,150.2 ,2025 ,195) ,
  (8 ,'log in ,log out' ,'cyber sisi' ,'amapiano' ,'hype' ,210.7 ,2025 ,224) , 
  (9 ,'sunday reset' ,'wanjiru' ,'bongo flava' ,'chill' ,28.4 ,2024 ,232) ,
  (10 ,'dealine szn' ,'nuru beats' ,'lo-fi' , 'study' ,51.0 ,2025 ,260 ),
  (11 ,'main character' ,'zuri k' ,'afrobeats' ,'hype' ,99.9 ,2023 ,199) ,
  (12 ,'no network' ,'tito vibes' ,'hip-hop' ,'heartbreak' ,64.5 ,2022 ,205) ,
  (13 ,'piga hustle' ,'Dj kimani' ,'gengetone' ,'gym' ,87.1 ,2024 ,183 ),
  (14 ,'mtaa sunrise', 'amani' ,'rnb' ,'chill' ,39.7 ,2021 ,218) ,
  (15 ,'stadium lights' ,'brawn k' ,'hip-hop' ,'gym' ,140.3 ,2025 ,176 
 );


  --select from songs
  SELECT COUNT(*) FROM songs;
  SELECT ROUND (SUM(streams_m),1)AS total_streams FROM songs;
  SELECT ROUND (AVG(streams_m),1)AS avg_streams FROM songs;
  SELECT MAX (streams_m) AS biggest ,MIN (streams_m) AS smallest FROM songs;
  SELECT songtitle,ROUND(duration_sec/60.0,1) AS minutes FROM songs;





--alter songs table 
  UPDATE songs SET streams_m=streams_m+100 WHERE songtitle LIKE 'log in,log out';
  UPDATE songs SET genre='afro-fusion' WHERE artistname LIKE'zuri k';
  DELETE FROM songs WHERE songtitle LIKE 'mtaa sunrise';
  SELECT COUNT(*) FROM songs;




DROP TABLE IF EXISTS my_top5;
  
      
  CREATE TABLE my_top5(
      rank_no INTEGER PRIMARY KEY,
      title  VARCHAR(50) NOT NULL,
      artist  VARCHAR(40) NOT NULL,
      genre VARCHAR(20)
      );

--insert into table 
 INSERT INTO my_top5(
    rank_no ,title , artist ,genre )
    VALUES
    (1,'sorry' ,'justin' ,'pop'),
    (2,'mirrors' ,'timberland' ,'pop'),
    (3,'diamonds' ,'rihanna' ,'rnb'),
    (4,'prais the lord' , 'asap' ,'hip-hop'),
    (5,'birds of a feather' ,'billie','pop'
    );

--order by
SELECT*FROM my_top5
ORDER BY rank_no ASC;


--order by
SELECT*FROM my_top5
ORDER BY rank_no ASC;

--alter table 
ALTER TABLE my_top5
ADD COLUMN mood VARCHAR(20);

UPDATE my_top5
SET mood='sad'
WHERE rank_no=1;

 
 DELETE FROM my_top5 WHERE rank_no=5;


 SELECT*FROM my_top5
 WHERE genre='pop';


 --alter table 
 ALTER TABLE songs
 ADD COLUMN likes INTEGER DEFAULT 0;


 UPDATE songs 
 SET likes=500
 WHERE songtitle='log in,log out';


 UPDATE songs
 SET likes=320 
 WHERE songtitle='midnight matatu';



 SELECT songtitle,likes FROM songs
 ORDER BY likes DESC;



