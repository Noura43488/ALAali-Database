DROP SCHEMA IF EXISTS alaali;
create schema alaali;
use alaali;
create table Lawyer ( Name_L varchar(100) not null , ID_L int primary key , Email varchar(100) unique ,
 phone_N varchar(10) unique , E_Years int not null , pass_L varchar(20) not null,Address_City varchar (100) null,
 Address_Neighborhood varchar (100) null );
 
 create table The_user( Name_U varchar(100) not null , ID_U int primary key , Email varchar(100) unique , gender char null ,
 phone_N varchar (10) unique  , pass_U varchar(20) not null , 
ID_Case int references Cases (ID_C),ID_Lawyer int references Lawyer (ID_L),Address_City varchar (100) null, Address_Neighborhood varchar (100) null );

create table cases(case_id int primary key  ,case_name varchar(100) not null, pL_name varchar(100)  not null,
D_name  varchar(100)  not null,Evidence varchar(100) not null ,
c_date date,ID_Lawyer int references Lawyer(ID_L),ID_case int references The_user(ID_U));

alter table The_user  
 add constraint gender check( gender='F' or gender='M');
 



    
    
 
insert into Lawyer values( 'Ali salem',1110000, 'alisa@hotmail.com' ,'0505911946',4,'ali$$3sa','Dammam','An Nur');
insert into Lawyer values('Abdulaziz Mohammed',1110001, 'aziz_m@hotmail.com'  ,'0569462755', 7,'Zmohammed@43','Dammam',' Ash shulah');
insert into Lawyer values('Turky khaled',1110002, 'Turky_kh@hotmail.com' ,'0509927478' ,8,'tu95khaled', 'Dammam','An Nada');
insert into Lawyer values('Mohammed Nawaf ',1110003, 'mnawaf@hotmail.com' ,'0508133575',5,'AA@6116d',  'Dammam','Al Anwar');
insert into Lawyer values('Ghanem Hamad ',1110004, 'Ghanem_H6@hotmail.com' ,'0505437477', 3,'Mo575@n77m', 'Dammam',' Ad dahiya' );
insert into Lawyer values('khalid Mohammad ',1110006, 'mm_hamd@hotmail.com'  ,'0508467382', 3,'ham$$7m','khobar',' al azizyezh');
insert into Lawyer values('nawaf abdullah ',1110007, 'na_abdulla@gmail.com'  ,'0507392694', 5,'nnfh330', 'Dammam',' al shaty');
insert into Lawyer values('hamed fahad ',1110008, 'hamed94@hotmail.com'  ,'050839466', 8,'7amed220', 'Dahran','alwaha');
insert into Lawyer values('faisal saad ',1110009, 'ffsaad@hotmail.com'  ,'0507285348', 6,'f992isal', 'Dammam',' Ash shulah');
insert into Lawyer values('abdullah saleh ',1110010, 'Abd_95@gmail.com'  ,'0505895754', 6,'abdu@5454','Dammam',' Ad dahiya');
insert into Lawyer values('abdualaziz Saud ',1110011, 'aziz_ss@hotmail.com'  ,'0508837584', 7,'xx$321', 'khobar',' al azizyezh');
insert into Lawyer values('Fares ibrahem ',1110012, 'ffaaibrahim@hotmail.com'  ,'0509839843', 4,'f@ress34','dahran ','al danah');
insert into Lawyer values('basel mohammed ',1110013, 'basel_32@hotmail.com' ,'0505534511', 2,'baM$2', 'Dammam','An Nada' );
insert into Lawyer values('mansour ali ',1110014, 'mansou_1996@gmail.com'  ,'0567163176', 3,'ma1996@76', 'Dahran',' alwaha');


insert into The_user values('khalid' , 2220000, 'kha_aa@gmail.com', 'M', '0547719756','kh12@3457',5,1110003, 'Dammam','Ash shulah');
insert into The_user values('Ali' ,2220001, 'Ali_77@gmail.com', 'M', '0564298514 ','Ali4#4455',2,1110000, 'khobar','An Nada' );
insert into The_user values('Saad' ,2220002,  'saaa@hotmil.com', 'M', '0547529847', 'ssaa6534@' ,3,1110001, 'Dammam','Al Anwar');
insert into The_user values('sara' ,2220003, 'sara_89@gmail.com', 'F', '0568329465','sara_77#8' ,4,1110004, 'Dahran','Ad dahiya');
insert into The_user values('Reem' , 2220004,'Reem_44@hotmil.com', 'F', '0546398721', 'Ree_845@4' ,1,1110002, 'khobar','An Nur');
insert into The_user values('fatimah' , 2220007,'fofo3@hotmil.com', 'F', '0546356325', 'ffoo3$' ,7,1110002, 'Dammam','taibah');
insert into The_user values('Arwa' , 2220005,'rori_wa@hotmil.com', 'F', '0505816347', 'rwaa00A' ,7,1110000, 'Dahran','aldanah');
insert into The_user values('Faisa' , 2220006,'Fa33al@hotmil.com', 'M', '0568237465', 'Sail33@' ,8,1110003, 'Dammam','AL Shaty');
insert into The_user values('Hamad' , 2220008,'hamed_sa@gmail.com', 'M', '0508187822', 'hhhme818' ,9,1110004, 'khobar','An Nur');
insert into The_user values('Danah' , 2220009,'danoo__@hotmail.com', 'F', '0508174647', 'dano@447' ,10,1110000,'Dammam','Ash shulah');


insert into cases values(1,'theft', 'raian', 'adel','photo', '2022-08-13',1110002,2220004);
insert into cases values(2,'licenses', 'saad', 'Ali','video', '2021-03-20',1110000,2220001);
insert into cases values(3,'surgery worong sid of head', 'Ahmed', 'khalid','photo','2020-07-29',1110001,2220002);
insert into cases values(4,'powerful medicine to a child', 'fahad', 'mazen','video','2020-09-15',1110004,2220003);
insert into cases values(5,'fraud in zakat websit', 'mohammed', 'ibrahim','photo','2019-06-10',1110003,2220000);
insert into cases values(6,'licenses', 'abdulaziz', 'fahad','photo','2023-08-12',1110003,2220000);
insert into cases values(7,'powerful medicine to a child', 'noor', 'khalid','witness','2022-05-22',1110002,2220007);
insert into cases values(8,'licenses', 'fahad', 'ahmed','photo','2023-01-19',1110003,2220006);
insert into cases values(9,'fraud in zakat websit', 'mohammed', 'maha','witness','2018-12-16',1110004,2220008);
insert into cases values(10,'surgery worong sid of headt', 'salem', 'Atheer','video','2021-03-14',1110000,2220009);
insert into cases values(11,'theft', 'omar', 'abdullah','video','2022-11-27',1110000,2220005);
insert into cases values(12,'surgery worong sid of headt', 'hind', 'reem','photo','2022-09-15',1110003,2220009);
insert into cases values(13,'fraud in zakat websit', 'shahad', 'lina','witness','2020-02-08',1110001,2220002);
insert into cases values(253,'theft', 'tareq', 'mohammed','video', '2021-10-23',1110000,2220005);
insert into cases values(465,'fraud in zakat websit', 'hesham', 'fatimah','witness', '2019-05-16',1110001,2220000);
insert into cases values(856,'licenses', 'raghad', 'saleh','photo','2023-02-10',1110003,2220004);
insert into cases values(709,'powerful medicine to a child', 'Shahad', 'abdullah','photo','2018-11-4',1110002,2220003);
insert into cases values(354,'surgery worong sid of headtt', 'munirah', 'ibrahim','witness','2019-08-22',1110001,2220006);
insert into cases values(175,'theft', 'atheer', 'maha','video','2022-04-13',1110003,2220005);
insert into cases values(346,'powerful medicine to a child', 'ahmed', 'basem','video','2021-03-16',1110004,2220009);
insert into cases values(764,'licenses', 'nouf', 'shoug','photo','2019-02-22',1110002,2220008);
insert into cases values(978,'theft', 'saud', 'huda','video','2017-10-18',1110001,2220001);
insert into cases values(833,'surgery worong sid of headt', 'khalid', 'hoor','witness','2021-03-14',1110003,2220002);
insert into cases values(126,'theft', 'nawf', 'asma','video','2018-05-09',1110002,2220007);
insert into cases values(325,'surgery worong sid of headt', 'hind', 'reem','photo','2022-09-15',1110003,2220009);
insert into cases values(138,'fraud in zakat websit', 'shahad', 'lina','witness','2020-02-08',1110001,2220002);
insert into cases values(985,'theft','saam','khalid','video','2022-5-9',1110006,2220005);
insert into cases values(184,'fraud in zakat websit','laian','khalid','video','2022-3-7',1110007,2220004);
insert into cases values(174,'fraud in zakat websit','sara','Ahmad','video','2022-8-2',1110008,2220009);
insert into cases values(152,'licenses','zainb','ali','video','2021-7-7',1110009,2220003);
insert into cases values(164,'licenses','nora','ahmad','video','2021-5-1',11100010,2220008);
insert into cases values(267,'surgery worong sid of headt','hassan','ali','video','2021-6-3',11100011,2220007);
insert into cases values(255,'surgery worong sid of headt','waleed','jasem','video','2021-3-4',11100012,2220002);
insert into cases values(365,'theft','mshal','saad','video','2020-3-8',11100013,2220006);
insert into cases values(487,'theft','ali','fahad','video','2020-2-5',11100014,2220001);
insert into cases values(586,'theft','jood','saleh','video','2020-9-2',11100014,2220009);
insert into cases values(753,'theft','amira','hassan','video','2020-8-5',1110007,2220005);
insert into cases values(755,'surgery worong sid of headt','wisam','abdulelah','video','2020-3-9',1110009,2220001);
insert into cases values(385,'surgery worong sid of headt','abdulelah','ali','video','2020-7-10',1110009,2220008);
insert into cases values(445,'surgery worong sid of headt','saad','thniann','video','2020-5-12',11100010,2220003);



/*Search for a case that has an photos evidence:*/

Select * from cases where evidence='photo'; 



/*List the lawyer names & users name ordered alphabetically*/
 
Select * 
From lawyer ,The_user
order by lawyer.Name_L , The_User.Name_U;


/*List the number of lawyers and how many cases they have by the id of the case*/

SELECT ID_Lawyer,COUNT(*)  AS num_cases FROM cases
GROUP BY ID_Lawyer
HAVING COUNT(*)  >= 1;

/* Count the number of cases in each user*/

Select ID_Case , count(*) As case_count
From  The_user 
Group by ID_Case;


/*assign the company name to every lawyer*/
delimiter $$
create procedure company_name()
begin
select ID_L,@company :="Alaali"as company_name from Lawyer;
end; $$ 
call company_name();


/* a procedure that bring the male users */

DELIMITER //
CREATE PROCEDURE us_customers ()
BEGIN
SELECT ID_U , Name_U
FROM The_user
WHERE gender= 'M';
END //
DELIMITER ;
call us_customers();


/*show every user name and id that has a video evidence*/

Select  ID_U , Name_U
From The_user as U
Where exists(Select *From cases Where Evidence='video' AND ID_case=ID_U);


                        
  /*join the lawers to the users  */  
  
SELECT Lawyer.ID_L , Lawyer.Name_L , The_user.Name_U
FROM Lawyer
LEFT JOIN The_user
ON Lawyer.ID_L = The_user.ID_Lawyer ;    



