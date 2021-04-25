/*
Test data
For MYSQL Database called teamproject (See dbinfo.php in github)
Please add records in order of this document to avoid errors.

*/



/*
FOR PERSON TABLE:

TOTAL RECORDS = 250
Student records FOUND BETWEEN 1-100.
Guardian records FOUND BETWEEN 101-200.
Teacher records FOUND BETWEEN 201-250.
*/


use teamproject;

/*
Student records 1-100:
*/

INSERT INTO `Person` (`Person_ID`,`First_Name`,`Last_Name`,`Date_Of_Birth`,`Role`,`Start_Date`,`Sex`,`Address`,`Phone_Number`,`Medical_Information`,`Comments`) VALUES (1,"Reuben","Carlson","2009-04-18","Student","2019-05-11","Other","P.O. Box 902, 7163 Eget Ave","0939 209 8639","Diabetes","None"),(2,"Brent","Morse","2008-03-03","Student","2017-01-02","Other","743 Porttitor St.","0893 261 9395","None","None"),(3,"Hyatt","Moss","2008-03-25","Student","2021-02-19","Other","984-874 Aenean Road","0800 992 8065","None","None"),(4,"Kaden","Morris","2007-11-16","Student","2017-02-21","Other","Ap #270-760 Id St.","0800 832 0032","Diabetes","None"),(5,"Adam","Morgan","2006-04-19","Student","2018-04-10","Other","P.O. Box 146, 7692 Nec, Rd.","076 8260 5434","Epilepsy","None"),(6,"Jane","Gomez","2006-07-27","Student","2018-03-04","Male","725-9326 Amet Ave","(01139) 934506","None","None"),(7,"Orli","Faulkner","2009-03-20","Student","2019-12-08","Female","Ap #371-6691 Non, Rd.","07624 589503","Special Needs","None"),(8,"Celeste","Stuart","2006-08-31","Student","2019-01-13","Female","Ap #976-5822 Nunc Road","056 7058 3696","ADHD","None"),(9,"Amity","Gregory","2007-06-15","Student","2017-02-25","Male","Ap #696-2228 Dignissim Road","(0115) 618 4112","ADHD","None"),(10,"Rhona","Welch","2010-03-28","Student","2021-02-02","Other","7496 Erat. St.","0800 816 8432","ADHD","None"),(11,"Teagan","Larson","2009-12-24","Student","2019-06-04","Other","Ap #532-3846 Sem Street","076 4417 6173","ADHD","None"),(12,"TaShya","Gray","2005-10-25","Student","2019-10-18","Female","138-4836 Aenean St.","(01909) 09274","None","None"),(13,"Sandra","Graham","2007-09-25","Student","2019-11-26","Other","9002 Enim Rd.","07908 088922","None","None"),(14,"Xanthus","William","2007-08-07","Student","2020-10-28","Other","Ap #452-3309 Risus. St.","0800 1111","None","None"),(15,"Deborah","Porter","2007-04-07","Student","2020-07-30","Female","Ap #483-3752 Donec St.","0800 1111","None","None"),(16,"Xyla","Henry","2009-05-08","Student","2019-05-29","Male","815-9314 Nibh. Ave","(0111) 607 6242","ADHD","None"),(17,"Buckminster","Dominguez","2009-02-11","Student","2017-08-11","Other","161 Cubilia Ave","0800 1111","Epilepsy","None"),(18,"Keefe","Langley","2009-08-27","Student","2021-02-19","Other","Ap #588-5771 Eu Road","055 3400 9721","None","None"),(19,"Sigourney","Goodman","2008-10-11","Student","2017-09-18","Male","Ap #664-8393 Scelerisque Road","(026) 6621 4914","Asthma","None"),(20,"Willa","Barnett","2007-01-12","Student","2018-01-28","Other","2277 Cum St.","076 9344 0128","None","None"),(21,"Iola","Hurley","2008-09-19","Student","2017-02-23","Male","160-2103 Gravida Av.","(023) 0969 9605","Special Needs","None"),(22,"Thane","Rodriguez","2007-01-29","Student","2016-10-08","Other","581-6713 Felis Road","(017094) 20401","ADHD","None"),(23,"Branden","Lynch","2008-11-03","Student","2017-11-17","Male","442-5780 Nibh. Road","0800 964 1293","Special Needs","None"),(24,"Grady","Curtis","2010-01-01","Student","2018-05-24","Other","327-9280 Luctus St.","(01700) 104951","Diabetes","None"),(25,"Scott","Prince","2007-09-12","Student","2018-11-25","Other","P.O. Box 159, 5606 Nisi St.","(025) 8042 3876","Special Needs","None"),(26,"Yoko","French","2007-07-20","Student","2020-06-26","Other","662-5157 Augue. Rd.","(0119) 527 6021","None","None"),(27,"Reese","Manning","2006-11-28","Student","2017-08-19","Male","996-9391 Proin Street","(0118) 121 3015","Epilepsy","None"),(28,"Veronica","Robles","2009-04-30","Student","2017-05-12","Other","907-173 Ut Ave","0342 821 2803","Epilepsy","None"),(29,"Liberty","Hoover","2007-03-11","Student","2021-01-15","Other","P.O. Box 181, 4302 Elit, Road","055 0065 6453","None","None"),(30,"Fleur","Stein","2009-02-26","Student","2020-04-01","Female","284-1133 Dignissim Ave","0379 388 9405","Diabetes","None"),(31,"Susan","Gould","2005-06-10","Student","2020-01-31","Female","Ap #305-9677 Et Ave","056 0924 1904","Asthma","None"),(32,"Shelby","Tanner","2006-07-06","Student","2021-05-02","Other","840 Lectus Av.","056 8772 5128","Epilepsy","None"),(33,"Cassady","Ross","2007-10-01","Student","2016-10-23","Female","Ap #792-6793 Ipsum. Street","(029) 1108 2282","None","None"),(34,"Amos","Michael","2005-09-25","Student","2019-12-17","Male","Ap #301-4434 Luctus, Street","07034 812812","None","None"),(35,"Beau","Aguirre","2006-06-15","Student","2018-04-12","Female","P.O. Box 954, 1086 Suspendisse Street","0392 938 2799","Special Needs","None"),(36,"Jason","Morse","2006-10-09","Student","2021-04-16","Male","339-7831 Nascetur Ave","0500 205453","None","None"),(37,"Sade","Valenzuela","2007-01-03","Student","2020-08-23","Female","2027 Phasellus Avenue","055 8881 9639","None","None"),(38,"Sonia","Crane","2009-02-21","Student","2019-12-25","Other","408-5865 Est Avenue","(0181) 829 7623","None","None"),(39,"Jason","Burke","2008-09-05","Student","2018-06-08","Female","166-7360 Donec Street","0800 364207","ADHD","None"),(40,"Isaiah","Knowles","2006-10-26","Student","2021-03-22","Other","5624 Ipsum. St.","(026) 5725 8352","Diabetes","None"),(41,"Chadwick","Ford","2009-12-08","Student","2020-09-11","Other","Ap #395-9564 Proin Rd.","056 4905 6808","None","None"),(42,"Ivan","Estrada","2009-02-03","Student","2018-05-24","Other","5782 Torquent St.","076 8290 7786","None","None"),(43,"Oprah","Britt","2008-03-24","Student","2017-12-30","Other","Ap #475-8539 Est. St.","(01388) 44708","None","None"),(44,"Ila","Logan","2008-01-06","Student","2018-05-09","Female","333-9456 Mi. Street","0800 929 7417","ADHD","None"),(45,"Victoria","Henry","2005-10-02","Student","2018-01-06","Other","175-3099 Lectus Avenue","(0191) 872 7518","None","None"),(46,"Xander","Stokes","2009-03-23","Student","2020-04-05","Male","P.O. Box 782, 1208 Varius. Ave","(020) 9908 9434","None","None"),(47,"Joshua","Oneill","2010-03-03","Student","2019-12-15","Other","P.O. Box 917, 196 Ipsum. Street","(016977) 7892","None","None"),(48,"Lawrence","Maynard","2009-04-24","Student","2020-12-27","Other","Ap #240-6044 Arcu. Avenue","0921 987 2656","Asthma","None"),(49,"Doris","Richardson","2008-10-22","Student","2020-05-18","Other","7536 Tincidunt Rd.","(01293) 907022","None","None"),(50,"Leonard","Richards","2007-06-19","Student","2019-12-27","Female","6927 Sapien. Avenue","0800 746496","Epilepsy","None"),(51,"Beatrice","Reilly","2008-08-30","Student","2020-02-15","Other","554-5702 Tincidunt St.","055 1945 0958","None","None"),(52,"Maisie","Jacobs","2009-01-15","Student","2016-11-16","Female","Ap #537-3781 Est St.","0346 994 7164","ADHD","None"),(53,"Wyoming","White","2006-09-26","Student","2019-08-24","Male","500-9208 Nec, Rd.","0862 689 6807","None","None"),(54,"Sylvester","Barker","2007-03-09","Student","2018-10-21","Female","801 Quis St.","0800 1111","Asthma","None"),(55,"Mark","Huff","2007-10-21","Student","2019-06-17","Other","639-385 Ante Street","0959 223 1253","ADHD","None"),(56,"Aladdin","Hoover","2005-08-06","Student","2018-11-04","Female","Ap #294-3567 Tortor. Rd.","0800 402 5883","None","None"),(57,"Teegan","Silva","2007-01-03","Student","2017-12-09","Other","Ap #928-7232 Tincidunt Rd.","0800 690 3122","None","None"),(58,"Sonya","Morgan","2009-01-16","Student","2019-02-26","Female","P.O. Box 689, 1715 At Rd.","07936 773884","ADHD","None"),(59,"Harper","Robertson","2006-11-17","Student","2017-10-31","Male","583-6877 Euismod Rd.","0363 840 7398","None","None"),(60,"Ariana","Vinson","2009-12-11","Student","2019-11-26","Other","9202 Vitae, St.","0984 451 8956","Special Needs","None"),(61,"Joel","Higgins","2008-09-16","Student","2016-09-25","Male","P.O. Box 944, 654 Eget Avenue","(01175) 156954","None","None"),(62,"Stuart","Ayala","2009-04-15","Student","2018-06-15","Male","478-4052 Risus. St.","055 7496 3418","Special Needs","None"),(63,"Macon","Wyatt","2005-10-25","Student","2019-04-07","Female","6780 Inceptos Avenue","0845 46 40","Epilepsy","None"),(64,"Jeremy","Stanton","2009-01-04","Student","2017-02-08","Other","Ap #511-2216 Massa. Av.","(016977) 7312","ADHD","None"),(65,"Hannah","Harding","2008-05-11","Student","2020-02-13","Female","1512 Viverra. Rd.","0845 46 49","Diabetes","None"),(66,"Maxine","Watkins","2009-07-26","Student","2018-12-15","Male","9429 Sapien Street","07692 054033","None","None"),(67,"Xerxes","Roth","2006-01-25","Student","2019-01-01","Female","Ap #599-588 Scelerisque St.","(0191) 916 3904","ADHD","None"),(68,"Magee","Lancaster","2005-08-28","Student","2018-08-22","Other","P.O. Box 612, 6805 Odio St.","(0110) 951 9340","None","None"),(69,"Nolan","Tucker","2006-08-09","Student","2021-01-24","Other","650-8055 Pede. St.","(022) 7514 1272","Diabetes","None"),(70,"Lucius","Potts","2010-04-17","Student","2018-02-16","Female","8337 Turpis Rd.","0800 1111","None","None"),(71,"Emerald","Harrison","2010-05-03","Student","2018-08-28","Female","P.O. Box 882, 1592 Vel Av.","0967 498 1367","ADHD","None"),(72,"Chloe","Workman","2006-02-06","Student","2019-09-09","Other","P.O. Box 494, 3170 Pellentesque Road","(01323) 691523","Asthma","None"),(73,"Remedios","Eaton","2005-06-08","Student","2020-10-13","Female","Ap #875-7689 Sed St.","(01309) 47235","None","None"),(74,"Adrian","Noel","2008-01-14","Student","2018-01-18","Male","Ap #295-6276 Gravida Av.","(01152) 72945","Epilepsy","None"),(75,"Flavia","Soto","2006-09-19","Student","2017-10-01","Other","5583 Purus. Av.","0500 128482","None","None"),(76,"Sharon","Lane","2007-10-11","Student","2018-04-15","Other","3340 Dui Street","0800 711 1406","ADHD","None"),(77,"Keegan","Johnson","2010-02-19","Student","2018-11-16","Male","P.O. Box 690, 2915 Aliquam St.","070 4890 0221","ADHD","None"),(78,"Daniel","Albert","2009-01-11","Student","2019-05-28","Other","992-904 Dictum Rd.","07624 322508","ADHD","None"),(79,"Sonia","Emerson","2006-03-24","Student","2019-03-11","Other","4356 Velit Avenue","0994 865 6613","None","None"),(80,"Ray","Rasmussen","2008-04-23","Student","2019-03-13","Male","616-8772 Mi Rd.","070 1736 2606","Special Needs","None"),(81,"Janna","Townsend","2007-07-01","Student","2016-10-03","Other","Ap #724-8217 Eu Ave","(025) 0323 3175","ADHD","None"),(82,"Ebony","Ryan","2008-07-22","Student","2019-05-30","Male","Ap #490-1625 Arcu Road","07892 003093","None","None"),(83,"Carol","Mendoza","2006-07-16","Student","2017-05-09","Female","3049 Elit. Av.","(010111) 30856","None","None"),(84,"Diana","Santos","2009-03-14","Student","2020-07-23","Female","2330 Dui Rd.","(023) 9550 7105","None","None"),(85,"Halee","Lowe","2008-01-06","Student","2020-04-06","Female","P.O. Box 730, 1508 Felis, Avenue","076 3206 5290","None","None"),(86,"Zorita","Singleton","2006-08-15","Student","2018-03-16","Other","P.O. Box 619, 3738 Odio. St.","(01698) 04716","None","None"),(87,"Nina","Day","2005-09-14","Student","2019-07-16","Male","P.O. Box 923, 5506 Porttitor Rd.","(016977) 0909","None","None"),(88,"Akeem","Roth","2006-11-04","Student","2019-06-20","Male","2381 Elit, Av.","0372 277 7798","None","None"),(89,"Patience","Mullen","2008-10-19","Student","2021-03-14","Female","P.O. Box 803, 6635 Convallis Rd.","0845 46 49","Asthma","None"),(90,"Dylan","Fernandez","2008-12-28","Student","2020-10-05","Other","290-5313 Neque Rd.","(012947) 88399","Special Needs","None"),(91,"Samuel","Bush","2008-06-15","Student","2019-05-24","Female","6073 Praesent St.","(0119) 743 8305","Epilepsy","None"),(92,"Avye","Conner","2008-12-26","Student","2021-01-31","Male","Ap #610-8879 Aliquet Rd.","0800 908749","None","None"),(93,"Ivor","Holmes","2008-01-08","Student","2020-01-28","Female","382-7862 Nunc Rd.","0500 771851","Special Needs","None"),(94,"Roary","Kirk","2005-11-14","Student","2019-02-17","Male","6107 Lorem Ave","(01958) 98817","None","None"),(95,"Seth","Tate","2007-12-14","Student","2020-10-14","Female","465-4482 Nulla Ave","07218 797210","ADHD","None"),(96,"Ariana","Austin","2006-11-08","Student","2017-05-09","Other","P.O. Box 620, 5515 Vestibulum Rd.","(0161) 210 4505","Special Needs","None"),(97,"Cullen","Sharpe","2005-10-28","Student","2017-01-29","Male","320-7441 Netus Rd.","0800 255938","Diabetes","None"),(98,"Baxter","Goff","2009-03-24","Student","2020-12-23","Female","188-6558 Sed, Avenue","(01982) 725336","None","None"),(99,"Lacy","Nunez","2008-02-25","Student","2019-07-17","Male","810 Sagittis Av.","(01600) 787256","None","None"),(100,"Sage","Robles","2006-07-04","Student","2017-01-11","Male","6638 Lacus. Ave","(0113) 962 8567","Special Needs","None");

/*
Guardian records 101-200:
*/
INSERT INTO `Person` (`Person_ID`,`First_Name`,`Last_Name`,`Date_Of_Birth`,`Role`,`Start_Date`,`Sex`,`Address`,`Phone_Number`,`Medical_Information`,`Comments`) VALUES (101,"Morgan","Tyson","1986-02-19","Guardian","2018-05-01","Male","516-6427 Facilisis Rd.","0500 013728","None","None"),(102,"Jarrod","Keith","1980-07-18","Guardian","2020-05-03","Male","3185 Est Avenue","0916 129 8800","None","None"),(103,"Giacomo","Barnes","1972-11-18","Guardian","2019-06-25","Male","752-7021 Dolor, Ave","0845 46 47","Special Needs","None"),(104,"Castor","Witt","1977-08-04","Guardian","2019-02-24","Female","P.O. Box 350, 7459 Nullam St.","0500 263034","None","None"),(105,"Aubrey","Knapp","1984-06-14","Guardian","2019-05-20","Other","P.O. Box 923, 6786 Nunc Av.","0801 777 2248","Diabetes","None"),(106,"Harrison","Nixon","1980-08-03","Guardian","2017-12-01","Female","489-991 Mauris Road","(0111) 384 7069","Special Needs","None"),(107,"Alan","Fisher","1988-04-13","Guardian","2018-02-13","Other","8137 Id Rd.","0845 46 41","Special Needs","None"),(108,"Macon","Shaffer","1972-07-01","Guardian","2017-02-16","Female","P.O. Box 231, 1549 Donec Rd.","07624 224340","Epilepsy","None"),(109,"Julian","Cline","1978-08-01","Guardian","2019-08-05","Male","4825 Porttitor Av.","(016977) 4176","Special Needs","None"),(110,"Whoopi","Barker","1980-08-24","Guardian","2017-05-20","Female","Ap #369-6395 Lacus. St.","056 3852 6110","None","None"),(111,"Candice","Livingston","1989-07-14","Guardian","2019-03-27","Male","P.O. Box 719, 482 Ac Ave","076 8720 8557","None","None"),(112,"Gail","Solis","1982-08-14","Guardian","2017-12-31","Female","9398 Donec St.","(01040) 859113","Asthma","None"),(113,"Cynthia","Potter","1987-02-08","Guardian","2017-11-08","Female","Ap #694-7552 Imperdiet St.","(027) 7962 3878","None","None"),(114,"Lucius","Carver","1981-08-10","Guardian","2019-09-21","Other","361-7728 Nullam Av.","056 8787 3465","Asthma","None"),(115,"Whilemina","Mcdonald","1972-05-29","Guardian","2017-10-08","Female","469-7293 Fusce Avenue","0978 095 9329","None","None"),(116,"Hoyt","Riley","1980-06-20","Guardian","2018-09-30","Male","P.O. Box 202, 7316 Lobortis Rd.","0500 968528","None","None"),(117,"Sawyer","Noel","1982-09-15","Guardian","2018-11-19","Other","327-7644 Elit Street","07624 137925","None","None"),(118,"Sage","Montgomery","1988-07-10","Guardian","2020-10-04","Male","851-7541 Vestibulum Rd.","(024) 7734 2641","None","None"),(119,"Lana","Giles","1978-06-11","Guardian","2017-12-03","Female","5694 Rutrum. Street","0800 971665","None","None"),(120,"Holly","Tran","1985-09-11","Guardian","2016-11-17","Other","4159 Nunc St.","(01525) 428485","Epilepsy","None"),(121,"Phoebe","Evans","1970-07-28","Guardian","2017-05-13","Male","P.O. Box 979, 5277 Aliquam St.","(016977) 5514","None","None"),(122,"Hayes","Steele","1985-07-14","Guardian","2016-09-10","Other","320-2449 Ac Av.","0351 603 8685","ADHD","None"),(123,"Charlotte","Blanchard","1980-09-15","Guardian","2020-12-12","Female","Ap #903-549 Vel Rd.","07746 408557","Asthma","None"),(124,"Karleigh","Lowery","1976-12-02","Guardian","2021-02-06","Female","2175 Mattis Road","0500 798565","None","None"),(125,"Kessie","Rocha","1989-09-24","Guardian","2018-02-08","Female","668-4165 Donec Avenue","(025) 4774 7572","Diabetes","None"),(126,"Wanda","Summers","1989-07-03","Guardian","2019-09-16","Female","8535 Nec Avenue","0823 179 9684","None","None"),(127,"Samuel","Cannon","1979-03-14","Guardian","2018-12-26","Male","Ap #428-6704 A Av.","(0191) 150 8701","None","None"),(128,"Orson","Wise","1970-08-14","Guardian","2018-03-08","Other","144-8527 Donec Ave","(0111) 289 8433","None","None"),(129,"Lucian","Bridges","1975-02-14","Guardian","2020-07-10","Female","2215 Vulputate Road","(016977) 6451","None","None"),(130,"Hilda","Ballard","1988-04-06","Guardian","2020-08-28","Other","P.O. Box 830, 5253 Vel St.","0864 356 0778","None","None"),(131,"Timon","Molina","1984-08-17","Guardian","2018-05-11","Female","P.O. Box 558, 7903 Interdum. Road","0800 677 0060","None","None"),(132,"Lillith","Fox","1986-01-09","Guardian","2020-08-29","Female","P.O. Box 239, 9297 Vehicula Road","(016735) 46804","Asthma","None"),(133,"Sheila","Nelson","1985-02-07","Guardian","2019-12-13","Other","954 Neque. Avenue","(016977) 0632","Diabetes","None"),(134,"Natalie","Foley","1979-03-28","Guardian","2020-03-14","Male","P.O. Box 156, 8541 Diam. St.","(018517) 56704","None","None"),(135,"Ayanna","Mayer","1978-09-13","Guardian","2020-07-23","Male","P.O. Box 587, 329 Eu St.","0328 160 7698","None","None"),(136,"Linus","Cline","1974-05-06","Guardian","2019-09-14","Other","Ap #149-7492 Egestas St.","(010047) 05672","None","None"),(137,"Jared","Bartlett","1989-06-06","Guardian","2020-06-10","Female","Ap #301-5197 Feugiat Rd.","(01387) 612872","None","None"),(138,"Sopoline","Cardenas","1984-12-06","Guardian","2017-06-20","Male","Ap #266-9269 Sed Street","(026) 0326 4584","ADHD","None"),(139,"Ahmed","Espinoza","1975-02-27","Guardian","2017-09-04","Other","571-2249 Id St.","(01954) 362978","Asthma","None"),(140,"Melanie","Contreras","1978-06-19","Guardian","2019-10-19","Other","P.O. Box 446, 4248 Ultrices. Road","055 9057 6122","Diabetes","None"),(141,"Yasir","Cote","1987-08-10","Guardian","2018-01-22","Female","Ap #694-7194 Ridiculus Ave","070 5098 8341","Diabetes","None"),(142,"Hyatt","Ferguson","1988-11-06","Guardian","2021-01-19","Male","Ap #969-4268 Metus. Avenue","070 1431 6806","Asthma","None"),(143,"Freya","Boyd","1983-02-17","Guardian","2019-11-09","Other","679-3698 A St.","0500 387012","Special Needs","None"),(144,"Kamal","Norton","1973-01-12","Guardian","2019-05-16","Other","4541 Fermentum Rd.","0388 706 3102","Special Needs","None"),(145,"Coby","Weber","1980-01-21","Guardian","2020-07-30","Male","853-3441 Ac Rd.","0800 863357","Asthma","None"),(146,"Quinn","Hartman","1980-03-12","Guardian","2017-01-16","Other","Ap #482-9043 Sed St.","(012505) 63066","None","None"),(147,"Cruz","Moon","1974-02-15","Guardian","2017-01-03","Other","Ap #921-6249 Curabitur Avenue","(01879) 16430","ADHD","None"),(148,"Margaret","Booker","1982-12-27","Guardian","2020-06-15","Male","Ap #537-4393 Magna. Avenue","(025) 2081 0572","Asthma","None"),(149,"Michelle","Winters","1973-11-05","Guardian","2020-04-23","Other","8693 Dolor. Road","0500 556711","Epilepsy","None"),(150,"Malachi","Huff","1974-08-11","Guardian","2017-11-03","Female","400-349 Ac Rd.","070 5167 1274","Asthma","None"),(151,"Tarik","Fitzpatrick","1972-04-24","Guardian","2018-06-07","Female","200-6316 Mauris Avenue","055 2153 2666","ADHD","None"),(152,"Alea","Andrews","1981-12-19","Guardian","2018-11-28","Female","Ap #397-4146 Sed, Avenue","0800 898 4101","None","None"),(153,"Igor","Thompson","1977-09-21","Guardian","2018-02-04","Male","Ap #323-991 Egestas. Road","070 2880 4687","None","None"),(154,"Levi","Barber","1971-05-18","Guardian","2018-02-20","Male","6925 Tempor Rd.","07624 266586","Diabetes","None"),(155,"Nell","Richardson","1978-03-22","Guardian","2018-11-16","Male","9274 Sed Rd.","(01879) 021725","None","None"),(156,"Suki","Holman","1971-12-20","Guardian","2018-04-12","Other","P.O. Box 369, 7597 Pede. Rd.","07463 941152","Epilepsy","None"),(157,"Cadman","Baxter","1979-05-20","Guardian","2019-11-17","Male","273-385 Est, Ave","07624 037335","None","None"),(158,"Harrison","Medina","1976-02-17","Guardian","2019-08-16","Female","P.O. Box 265, 4938 Ornare. Avenue","0800 027 7610","None","None"),(159,"Holmes","Lancaster","1982-03-29","Guardian","2019-03-21","Other","282-3966 Eu, Street","07676 995705","ADHD","None"),(160,"Aileen","Ross","1974-11-06","Guardian","2020-11-26","Male","Ap #597-4260 Suspendisse Avenue","076 6721 0258","ADHD","None"),(161,"Alfreda","Eaton","1988-10-24","Guardian","2020-03-05","Female","P.O. Box 614, 2968 Lorem St.","0960 521 1454","None","None"),(162,"Mona","Knight","1973-07-30","Guardian","2021-02-01","Other","9498 Eu Rd.","0800 611458","None","None"),(163,"Adara","Cote","1983-08-01","Guardian","2019-08-31","Female","347-8868 Id Ave","0800 1111","None","None"),(164,"Ali","Macdonald","1981-03-24","Guardian","2017-05-29","Other","7601 Lorem Avenue","0921 121 9085","None","None"),(165,"Carson","Sloan","1979-01-20","Guardian","2016-09-19","Female","738-7552 Ornare Avenue","0800 705847","None","None"),(166,"Stephen","Riddle","1983-09-22","Guardian","2017-12-01","Female","P.O. Box 755, 5232 Nascetur St.","0845 46 41","ADHD","None"),(167,"Samantha","Riggs","1978-05-05","Guardian","2017-05-06","Male","853-6033 Non Road","(01398) 43514","None","None"),(168,"Stone","Alvarado","1989-05-31","Guardian","2018-02-28","Other","Ap #576-449 Dictum Rd.","0957 573 1719","None","None"),(169,"Scarlett","Dennis","1980-01-10","Guardian","2020-07-20","Other","Ap #421-9306 Ipsum Road","(0112) 389 1760","Asthma","None"),(170,"Juliet","Travis","1988-03-10","Guardian","2016-09-02","Male","1881 Eleifend Rd.","(01842) 64558","Special Needs","None"),(171,"Carson","Bell","1989-04-10","Guardian","2018-10-29","Male","Ap #819-4493 Donec Road","056 4637 3062","None","None"),(172,"Chantale","Stanton","1987-05-14","Guardian","2020-12-24","Other","5336 Quam Road","0500 784416","None","None"),(173,"Hoyt","Dale","1988-03-31","Guardian","2017-11-24","Other","8100 Ligula. St.","0845 46 44","Special Needs","None"),(174,"Raphael","Quinn","1989-11-05","Guardian","2017-03-29","Female","343 Ut St.","0867 949 1444","Asthma","None"),(175,"Colette","Mcclure","1988-08-20","Guardian","2018-05-13","Other","Ap #673-2498 Tortor Ave","0327 412 6258","None","None"),(176,"Jael","Hicks","1971-10-22","Guardian","2017-04-07","Other","884-4090 Non, Street","0500 488365","None","None"),(177,"Keith","Sloan","1976-07-03","Guardian","2020-07-27","Male","Ap #637-9925 Cubilia Av.","(010992) 41442","Special Needs","None"),(178,"Inez","Velasquez","1988-07-19","Guardian","2020-11-06","Female","P.O. Box 400, 3327 Tellus. Rd.","07624 057245","None","None"),(179,"Joshua","Fry","1970-04-11","Guardian","2020-04-20","Female","Ap #818-9854 Neque. Road","0845 46 42","None","None"),(180,"Mira","Palmer","1975-05-13","Guardian","2018-04-13","Other","8343 Proin Rd.","0322 848 0687","None","None"),(181,"Bree","Stevenson","1986-10-21","Guardian","2018-05-16","Other","P.O. Box 675, 7984 Nec, St.","(027) 2068 5821","Epilepsy","None"),(182,"Alfonso","Stephenson","1973-06-23","Guardian","2018-09-20","Male","P.O. Box 408, 9590 Pulvinar Road","0992 395 8740","Special Needs","None"),(183,"Mia","Butler","1971-05-19","Guardian","2020-10-21","Female","135-6070 Amet Rd.","07188 003274","Special Needs","None"),(184,"Zeph","Cash","1983-04-07","Guardian","2020-03-26","Male","113-6577 Vestibulum Avenue","07474 956616","None","None"),(185,"Jerome","Perez","1970-01-25","Guardian","2021-04-13","Other","Ap #483-7073 Fringilla Avenue","(0151) 477 4623","ADHD","None"),(186,"Madison","Fry","1988-12-15","Guardian","2020-08-30","Other","P.O. Box 788, 8816 Luctus Ave","(013690) 49535","None","None"),(187,"Cecilia","Vega","1982-12-20","Guardian","2018-06-04","Other","P.O. Box 813, 1488 Turpis Rd.","0500 907338","Special Needs","None"),(188,"Griffin","Hayes","1970-04-19","Guardian","2018-07-23","Other","9005 Pharetra St.","056 9589 7399","None","None"),(189,"Cynthia","Frazier","1973-09-26","Guardian","2020-01-07","Other","P.O. Box 592, 7769 Lectus Av.","(01857) 932505","None","None"),(190,"Kirby","Hancock","1988-06-26","Guardian","2021-01-26","Male","2354 Laoreet, Avenue","(016977) 8058","None","None"),(191,"Kenyon","Salinas","1987-01-07","Guardian","2019-11-03","Male","Ap #275-365 Lacinia St.","07797 452384","Epilepsy","None"),(192,"Conan","Hess","1973-08-13","Guardian","2017-03-07","Other","292-6115 Et Ave","(0151) 473 0590","None","None"),(193,"Hanae","Summers","1981-08-06","Guardian","2020-02-18","Female","598-6263 Duis Road","076 6724 1468","Asthma","None"),(194,"Rose","Bailey","1986-12-18","Guardian","2017-07-10","Other","P.O. Box 545, 4077 Neque Rd.","(01150) 827770","Special Needs","None"),(195,"Heather","Cunningham","1975-10-18","Guardian","2017-11-21","Female","5341 Aliquam Street","0913 768 8662","None","None"),(196,"Cooper","Jacobson","1973-10-24","Guardian","2017-03-03","Male","7933 Ut Ave","(0110) 802 7827","None","None"),(197,"Fredericka","Mueller","1985-10-18","Guardian","2018-01-20","Male","Ap #933-8737 Arcu. Road","0800 1111","Asthma","None"),(198,"Whitney","Hendrix","1981-02-05","Guardian","2020-10-07","Male","Ap #159-3586 At St.","(01587) 747201","Diabetes","None"),(199,"Erasmus","Carey","1971-05-23","Guardian","2018-01-05","Other","Ap #347-3172 Sagittis Av.","0800 043557","Special Needs","None"),(200,"Nell","Kline","1976-02-04","Guardian","2018-08-21","Other","P.O. Box 331, 1262 Vehicula St.","07624 208207","ADHD","None");

/*
Teacher records 201-250:
*/
INSERT INTO `Person` (`Person_ID`,`First_Name`,`Last_Name`,`Date_Of_Birth`,`Role`,`Start_Date`,`Sex`,`Address`,`Phone_Number`,`Medical_Information`,`Comments`) VALUES (201,"Carter","Wilkinson","1971-12-31","Teacher","2006-06-15","Male","284-2125 Enim. Av.","(01943) 616579","ADHD","None"),(202,"Amy","Neal","1957-01-25","Teacher","2020-12-26","Female","8220 Pede Rd.","0845 46 42","Diabetes","None"),(203,"Leila","Kane","1975-07-21","Teacher","2003-10-24","Male","297-6740 Egestas. Road","07886 458629","None","None"),(204,"Burton","Joseph","1972-05-27","Teacher","2001-04-23","Other","3351 Scelerisque Av.","(0151) 530 9185","ADHD","None"),(205,"Graham","Richard","1994-12-20","Teacher","2013-07-06","Male","1942 Orci, Street","055 1784 5411","Epilepsy","None"),(206,"Dustin","Hamilton","1979-01-11","Teacher","2019-12-14","Female","2088 Elit Rd.","076 6656 1594","Diabetes","None"),(207,"Andrew","Zamora","1978-03-24","Teacher","2016-10-17","Female","1861 Nunc St.","0890 388 6804","None","None"),(208,"Galena","Figueroa","1991-09-05","Teacher","2001-02-05","Other","P.O. Box 727, 9500 Lacus. Street","056 3710 6094","None","None"),(209,"Yolanda","Swanson","1985-03-06","Teacher","2014-04-08","Male","P.O. Box 327, 3239 Augue Street","076 7140 9714","Special Needs","None"),(210,"Mark","Robbins","1964-07-16","Teacher","2000-09-12","Male","P.O. Box 675, 8557 Luctus Rd.","0367 367 9668","None","None"),(211,"Mark","Henderson","1957-01-25","Teacher","2016-08-15","Male","813 Lorem, Ave","(0112) 266 9905","ADHD","None"),(212,"Maxine","Powers","1989-10-28","Teacher","2009-10-30","Other","P.O. Box 480, 1151 Sodales Rd.","(025) 9598 0637","None","None"),(213,"Kenneth","Wilder","1963-08-07","Teacher","2020-04-11","Male","734-2493 Vel, Avenue","(0117) 440 1875","Special Needs","None"),(214,"Karleigh","Puckett","1961-03-27","Teacher","2003-03-20","Male","857-8944 Metus. Rd.","0914 798 3394","Diabetes","None"),(215,"Jarrod","Quinn","1953-01-10","Teacher","2019-01-30","Female","P.O. Box 336, 4448 Nec Road","0845 46 48","None","None"),(216,"Erica","Haley","1964-08-09","Teacher","2017-07-28","Female","197 Tortor, Street","056 9162 9980","None","None"),(217,"Robin","Baldwin","1966-02-03","Teacher","2000-10-06","Other","Ap #401-7555 Hymenaeos. Street","0992 952 6019","ADHD","None"),(218,"Wayne","Roberts","1982-12-30","Teacher","2015-12-09","Other","P.O. Box 720, 7432 At, Rd.","0800 1111","None","None"),(219,"Jacob","Dawson","1970-06-05","Teacher","2012-06-09","Male","P.O. Box 862, 3052 Tincidunt Av.","(01193) 89377","None","None"),(220,"Fredericka","Hinton","1970-04-10","Teacher","2017-05-17","Female","420-8213 Massa. Avenue","055 9925 1978","None","None"),(221,"Craig","Melendez","1957-02-25","Teacher","2002-10-12","Male","P.O. Box 436, 727 Velit. Street","0500 984575","Epilepsy","None"),(222,"Kyra","Avery","1959-02-16","Teacher","2003-12-09","Female","P.O. Box 162, 2506 Ante Road","056 7883 6977","Epilepsy","None"),(223,"Inez","Ferrell","1976-03-27","Teacher","2005-07-28","Female","P.O. Box 628, 1358 Gravida. St.","0800 276376","None","None"),(224,"Ori","Britt","1952-08-13","Teacher","2002-04-26","Other","104-469 Nisl Avenue","056 9480 1223","Asthma","None"),(225,"Bernard","Mendez","1979-01-22","Teacher","2006-01-13","Male","Ap #639-6591 Nulla Av.","0845 46 44","Asthma","None"),(226,"Josiah","Everett","1984-06-19","Teacher","2016-04-16","Female","228-9980 Vivamus Ave","070 4856 1438","Special Needs","None"),(227,"Aubrey","Rivers","1981-01-20","Teacher","2006-08-09","Other","P.O. Box 148, 4709 Est, Rd.","0316 637 5849","None","None"),(228,"Fritz","Silva","1950-07-30","Teacher","2005-08-27","Female","P.O. Box 210, 8663 Sed Av.","0800 1111","Epilepsy","None"),(229,"Orson","Arnold","1951-09-20","Teacher","2010-02-02","Female","Ap #629-3032 Gravida Street","07476 674423","Epilepsy","None"),(230,"Ignatius","Bender","1951-07-31","Teacher","2015-04-23","Male","8088 Dictum. St.","0845 46 45","None","None"),(231,"Ria","Britt","1985-07-01","Teacher","2005-10-23","Male","449-2052 Duis Ave","0805 354 7807","None","None"),(232,"Zeph","Harper","1988-05-30","Teacher","2009-10-10","Other","896-2913 Nonummy St.","(021) 7633 6433","None","None"),(233,"Gary","Becker","1968-10-28","Teacher","2012-06-22","Male","Ap #624-4363 Augue Ave","0800 1111","Special Needs","None"),(234,"Tara","Swanson","1969-08-25","Teacher","2008-12-23","Male","Ap #875-3988 Cras Ave","0969 789 5019","Diabetes","None"),(235,"Kenyon","Walsh","1969-05-24","Teacher","2008-10-11","Other","Ap #887-4834 Mi Ave","0800 1111","None","None"),(236,"Ori","Brady","1950-06-24","Teacher","2009-04-01","Female","P.O. Box 468, 6098 Diam St.","(022) 4757 9500","None","None"),(237,"Georgia","Knox","1993-08-14","Teacher","2020-07-20","Male","425-2641 Ligula. Rd.","07624 137592","None","None"),(238,"Chester","Dyer","1970-02-11","Teacher","2004-02-07","Female","Ap #217-1618 Vitae, Avenue","(016977) 1030","Asthma","None"),(239,"Mariam","Browning","1968-08-06","Teacher","2001-12-06","Other","Ap #335-7457 Egestas St.","0800 1111","Epilepsy","None"),(240,"Chanda","Medina","1984-08-04","Teacher","2010-02-13","Other","P.O. Box 501, 3386 Eu Ave","0966 890 2570","Asthma","None"),(241,"Levi","Page","1959-06-16","Teacher","2010-07-18","Female","P.O. Box 314, 8042 Eros Rd.","0800 641 8765","None","None"),(242,"Driscoll","Schmidt","1985-08-17","Teacher","2007-12-30","Other","P.O. Box 244, 2076 Quisque Road","(01980) 976254","Asthma","None"),(243,"Nero","Nicholson","1971-03-11","Teacher","2010-06-29","Other","7734 Libero Av.","0855 644 3388","ADHD","None"),(244,"Tyler","Sweet","1960-03-26","Teacher","2016-01-31","Other","831-7591 Dictum Ave","0800 534 1291","None","None"),(245,"Brent","Hebert","1978-05-05","Teacher","2017-02-10","Other","Ap #376-1322 Ipsum Avenue","(016977) 4744","Epilepsy","None"),(246,"Madeline","Webb","1955-01-26","Teacher","2008-04-04","Female","P.O. Box 854, 4637 Ridiculus Road","(021) 3292 5584","ADHD","None"),(247,"Noble","Hale","1958-02-12","Teacher","2004-09-06","Other","6628 Et Avenue","076 2187 8293","None","None"),(248,"Grace","Simmons","1972-07-02","Teacher","2012-11-23","Male","Ap #177-8159 Etiam St.","070 6627 9137","Epilepsy","None"),(249,"Lucian","Estrada","1964-02-09","Teacher","2001-06-17","Other","P.O. Box 618, 2123 Eget Rd.","0800 1111","Diabetes","None"),(250,"Francis","Peters","1996-04-19","Teacher","2007-08-15","Other","3902 Euismod Rd.","(028) 4474 5089","None","None");









/*

FOR PERSON TABLE:

TOTAL RECORDS = 10
Classes:
7A, 7B, 8A, 8B, 9A, 9B, 10A, 10B, 11A, 11B

*/

use teamproject;
INSERT INTO `Class` (`Class_ID`,`Class_Name`,`Class_Year`) VALUES (1,"7A",7),(2,"7B",7),(3,"8A",8),(4,"8B",8),(5,"9A",9),(6,"9B",9),(7,"10A",10),(8,"10B",10),(9,"11A",11),(10,"11B",11);

/*

FOR DEPARTMENT TABLE:

TOTAL RECORDS = 10
Humanities|Maths|Music|English|IT|Science|Technology|PE|Languages|Art

*/
use teamproject;
INSERT INTO `Department` (`Department_ID`,`Department_Name`,`Budget`) VALUES 
(1,"Music","135951.68"),
(2,"IT","68685.10"),
(3,"PE","150103.27"),
(4,"Technology","178361.42"),
(5,"Languages","156121.71"),
(6,"Science","132874.73"),
(7,"English","187773.48"),
(8,"Art","197974.33"),
(9,"Maths","169320.79"),
(10,"Humanities","121146.44");





/*

FOR Classroom TABLE:

TOTAL RECORDS = 20
IN W-block|N-block|E-block|S-block
CLASSES:

W1, W2, W3, W4, 
N1, N2, N3, N4, N5, N6, N7, N8
E1, E2, E3, E4, E5, E6,
S1, S2,

*/

use teamproject;
INSERT INTO `Classroom` (`Classroom_ID`,`Classroom_Name`,`Classroom_Location`,`Maximum_Capacity`) VALUES 
(1,"W1","W-block",24),
(2,"W2","W-block",29),
(3,"W3","W-block",26),
(4,"E1","E-block",23),
(5,"E2","E-block",25),
(6,"S1","S-block",24),
(7,"N1","N-block",32),
(8,"S2","S-block",30),
(9,"N2","N-block",23),
(10,"N3","N-block",26),
(11,"N4","N-block",26),
(12,"N5","N-block",23),
(13,"W4","W-block",22),
(14,"N6","N-block",29),
(15,"E3","E-block",29),
(16,"E4","E-block",30),
(17,"N7","N-block",31),
(18,"N8","N-block",29),
(19,"E5","E-block",31),
(20,"E6","E-block",28);



/*

FOR Classroom TABLE:

TOTAL RECORDS = 100
IDS between 1 and 100.
Guardians go the other way, so student 1 has guardian 200. 2, 199. 3, 198.... to 100, 101.
Just to mix it up a bit.

*/


use teamproject;
INSERT INTO `Student` (`Person_ID`,`Class_ID`,`Guardian_ID`,`Guardian_Relationship`) VALUES (1,9,200,"Sibling"),(2,7,199,"Grandparent"),(3,9,198,"Other"),(4,9,197,"Father"),(5,10,196,"Other"),(6,1,195,"Father"),(7,9,194,"Grandparent"),(8,3,193,"Sibling"),(9,10,192,"Sibling"),(10,6,191,"Other"),(11,1,190,"Other"),(12,3,189,"Other"),(13,1,188,"Other"),(14,8,187,"Mother"),(15,9,186,"Mother"),(16,4,185,"Sibling"),(17,5,184,"Other"),(18,2,183,"Sibling"),(19,8,182,"Sibling"),(20,3,181,"Sibling"),(21,10,180,"Mother"),(22,2,179,"Other"),(23,4,178,"Mother"),(24,1,177,"Father"),(25,4,176,"Mother"),(26,4,175,"Sibling"),(27,6,174,"Grandparent"),(28,1,173,"Mother"),(29,4,172,"Other"),(30,6,171,"Sibling"),(31,7,170,"Father"),(32,4,169,"Sibling"),(33,5,168,"Mother"),(34,6,167,"Mother"),(35,10,166,"Other"),(36,6,165,"Mother"),(37,8,164,"Mother"),(38,8,163,"Mother"),(39,5,162,"Sibling"),(40,2,161,"Other"),(41,6,160,"Mother"),(42,2,159,"Mother"),(43,4,158,"Father"),(44,1,157,"Mother"),(45,6,156,"Grandparent"),(46,10,155,"Father"),(47,7,154,"Sibling"),(48,7,153,"Other"),(49,7,152,"Mother"),(50,6,151,"Sibling"),(51,1,150,"Other"),(52,4,149,"Other"),(53,6,148,"Father"),(54,6,147,"Father"),(55,8,146,"Sibling"),(56,8,145,"Sibling"),(57,8,144,"Grandparent"),(58,2,143,"Sibling"),(59,9,142,"Father"),(60,7,141,"Grandparent"),(61,7,140,"Mother"),(62,10,139,"Sibling"),(63,5,138,"Grandparent"),(64,2,137,"Other"),(65,1,136,"Grandparent"),(66,8,135,"Mother"),(67,9,134,"Mother"),(68,1,133,"Other"),(69,8,132,"Sibling"),(70,5,131,"Sibling"),(71,8,130,"Other"),(72,10,129,"Mother"),(73,3,128,"Other"),(74,9,127,"Father"),(75,3,126,"Father"),(76,3,125,"Sibling"),(77,2,124,"Sibling"),(78,8,123,"Grandparent"),(79,5,122,"Grandparent"),(80,3,121,"Grandparent"),(81,6,120,"Grandparent"),(82,1,119,"Sibling"),(83,10,118,"Father"),(84,10,117,"Mother"),(85,4,116,"Other"),(86,6,115,"Sibling"),(87,6,114,"Father"),(88,5,113,"Grandparent"),(89,5,112,"Grandparent"),(90,7,111,"Sibling"),(91,10,110,"Sibling"),(92,2,109,"Sibling"),(93,4,108,"Father"),(94,9,107,"Father"),(95,3,106,"Mother"),(96,6,105,"Grandparent"),(97,5,104,"Father"),(98,10,103,"Sibling"),(99,4,102,"Mother"),(100,9,101,"Father");


/*

FOR SUBJECT TABLE:

TOTAL RECORDS = 15

So in no particlular order we have:

English- English dept
Maths- Maths dept
Chemistry- Science dept
Physics- Science dept
Biology- Science dept
IT- IT dept
Goegraphy- Humanities dept
History- Humanities dept
Religious Studies- Humanities dept
Art- Art dept
Music- Music dept
Technology- Technology dept
French- Languages dept
Spanish- Lnaguages dept
PE- PE dept.
*/

use teamproject;
INSERT INTO `Subject` (`Subject_ID`,`Department_ID`,`Subject_Name`,`Length`,`Level`,`Number_Of_Exams`) VALUES 
(1,7,"English","5",1,2),
(2,4,"Technology","5",1,2),
(3,10,"Geography","5",1,4),
(4,8,"Art","5",1,3),
(5,9,"Maths","5",1,2),
(6,6,"Physics","5",1,1),
(7,5,"French","5",1,4),
(8,3,"PE","5",1,3),
(9,10,"History","5",1,2),
(10,10,"Religious Studies","5",1,1),
(11,1,"Music","5",1,3),
(12,6,"Chemistry","5",1,3),
(13,6,"Biology","5",1,1),
(14,2,"IT","5",1,3),
(15,5,"Spanish","5",1,2);

/*

FOR Subject_Grade TABLE:

TOTAL RECORDS = 100
So, this one was tricky, because we can't get the student year, as it is in class...

And there would be:
100 students x 15 subjects x 5 years = 7500 records... And that's a no from me.

So to get some decent data:
Each student (100 students total) has one grade in a random class for a random year.
*/

use teamproject;
INSERT INTO `Subject_Grade` (`Subject_ID`,`Student_ID`,`CurrentYear`,`Grade`,`Feedback`) VALUES (1,1,9,"6","dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas"),(13,2,7,"4","luctus. Curabitur egestas nunc sed libero."),(11,3,10,"4","Donec tempus, lorem fringilla ornare"),(4,4,9,"8","Integer mollis. Integer tincidunt aliquam arcu. Aliquam"),(3,5,9,"4","imperdiet, erat nonummy ultricies ornare, elit elit fermentum"),(4,6,7,"6","parturient montes,"),(4,7,11,"5","Duis dignissim tempor arcu. Vestibulum ut eros non"),(12,8,7,"4","Maecenas libero est, congue a, aliquet vel, vulputate eu,"),(1,9,7,"4","Morbi metus. Vivamus euismod urna. Nullam"),(3,10,7,"1","Aliquam nisl. Nulla eu"),(14,11,9,"4","arcu"),(3,12,8,"5","ullamcorper. Duis"),(6,13,7,"3","sed orci lobortis augue scelerisque mollis. Phasellus libero"),(1,14,7,"5","fermentum metus. Aenean sed pede nec ante"),(9,15,8,"4","eu"),(8,16,9,"4","Phasellus"),(1,17,7,"4","Donec egestas. Aliquam nec enim. Nunc ut"),(13,18,9,"5","nunc interdum"),(12,19,11,"7","vel, vulputate eu, odio. Phasellus at"),(11,20,8,"5","natoque penatibus et"),(4,21,11,"2","tristique pellentesque,"),(1,22,11,"6","velit dui, semper et, lacinia vitae, sodales at,"),(11,23,8,"4","ac risus. Morbi metus. Vivamus euismod urna. Nullam"),(11,24,10,"4","velit"),(4,25,8,"7","sit amet nulla."),(8,26,8,"4","rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at,"),(11,27,9,"4","Sed congue, elit sed consequat auctor,"),(1,28,7,"4","sagittis augue, eu tempor"),(14,29,10,"4","quis massa. Mauris vestibulum,"),(14,30,10,"6","libero. Proin sed turpis nec mauris blandit mattis."),(12,31,7,"4","dictum. Phasellus in felis. Nulla tempor augue ac"),(12,32,11,"8","hendrerit."),(15,33,9,"5","magna et ipsum"),(6,34,8,"4","nibh sit amet orci. Ut"),(5,35,7,"6","sit amet nulla."),(13,36,8,"5","libero"),(13,37,9,"4","est, congue a,"),(1,38,7,"3","lectus"),(10,39,8,"6","sed, est. Nunc laoreet lectus quis massa."),(7,40,9,"4","eu,"),(14,41,7,"9","sed turpis nec mauris blandit mattis. Cras eget nisi"),(5,42,10,"2","ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci,"),(3,43,10,"5","libero. Morbi accumsan laoreet"),(13,44,11,"3","pede nec ante blandit viverra. Donec tempus, lorem"),(8,45,9,"5","porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor"),(3,46,9,"2","sodales purus, in"),(7,47,7,"4","dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus."),(7,48,8,"4","Aliquam erat volutpat. Nulla facilisis. Suspendisse"),(7,49,11,"5","faucibus leo, in lobortis tellus justo sit amet nulla. Donec"),(8,50,8,"1","magna. Duis dignissim tempor arcu. Vestibulum ut eros"),(11,51,8,"3","commodo at, libero. Morbi accumsan"),(9,52,8,"3","feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem"),(4,53,8,"5","Aenean euismod mauris eu elit. Nulla facilisi."),(1,54,7,"2","vel, mauris. Integer sem elit, pharetra ut, pharetra"),(7,55,11,"3","lorem lorem, luctus ut, pellentesque"),(13,56,7,"1","nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu."),(3,57,10,"1","pede ac urna. Ut tincidunt vehicula risus. Nulla eget"),(14,58,8,"8","et,"),(5,59,8,"5","porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla"),(12,60,8,"1","mattis. Integer eu lacus. Quisque imperdiet,"),(5,61,11,"5","Proin dolor. Nulla"),(13,62,9,"4","placerat, augue. Sed molestie. Sed id risus quis"),(3,63,11,"6","iaculis nec, eleifend non,"),(14,64,8,"5","quis, pede. Suspendisse dui. Fusce diam"),(4,65,11,"4","et"),(11,66,7,"3","consectetuer, cursus et, magna. Praesent interdum ligula eu enim."),(11,67,11,"9","nisi sem semper erat, in consectetuer"),(5,68,10,"1","fringilla mi lacinia mattis. Integer"),(5,69,8,"4","Aenean massa. Integer"),(9,70,9,"4","ut lacus."),(5,71,9,"6","dolor. Fusce mi lorem, vehicula"),(14,72,7,"8","non justo. Proin non"),(9,73,9,"9","luctus aliquet odio. Etiam ligula tortor,"),(4,74,11,"5","non nisi. Aenean eget metus. In nec"),(6,75,8,"7","ullamcorper. Duis"),(14,76,9,"1","imperdiet dictum"),(7,77,7,"8","et, rutrum"),(10,78,9,"3","dictum ultricies ligula. Nullam enim. Sed"),(10,79,8,"5","porttitor vulputate, posuere vulputate, lacus."),(12,80,11,"9","vitae aliquam"),(1,81,11,"4","et risus. Quisque libero lacus, varius et, euismod"),(4,82,7,"4","sapien,"),(5,83,11,"1","Aliquam nec enim. Nunc ut"),(10,84,11,"1","ac, feugiat non, lobortis quis, pede. Suspendisse"),(6,85,8,"5","Quisque imperdiet, erat nonummy ultricies ornare, elit elit"),(13,86,11,"9","tempus scelerisque, lorem"),(10,87,9,"2","justo eu arcu. Morbi sit amet"),(12,88,10,"7","velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque"),(6,89,8,"5","nec,"),(9,90,10,"3","urna. Nullam lobortis"),(15,91,7,"5","vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at"),(9,92,8,"3","enim. Etiam imperdiet dictum magna. Ut"),(2,93,7,"3","ipsum cursus vestibulum."),(6,94,9,"6","odio sagittis semper. Nam tempor diam dictum sapien."),(9,95,9,"4","neque"),(12,96,10,"1","Nullam velit dui, semper et, lacinia vitae,"),(3,97,10,"4","ante blandit viverra. Donec tempus, lorem fringilla ornare placerat,"),(6,98,8,"1","ut odio vel est"),(5,99,10,"5","dis parturient montes, nascetur ridiculus mus. Aenean eget"),(8,100,11,"5","tortor, dictum");






/*

FOR ASSESSMENT TABLE:

TOTAL RECORDS = 150
-Each class has 1 assessment for each subject.
-Thanks to the magic of loops and a lot of editing.
*/

use teamproject;
INSERT INTO `Assessment` (`Assessment_ID`,`Subject_ID`,`Class_ID`,`Assessment_Type`,`Assessment_Name`,`Date_Assigned`,`Date_Due`,`Date_Extension`,`Duration`,`Teacher_Comments`) VALUES (1,"1","1","Written","vitae semper egestas, urna","2021-01-22","2021-03-28","2021-04-28",3,"Nunc ac sem ut dolor"),(2,"1","2","Presentation","dolor. Nulla semper tellus","2021-01-25","2021-02-25","2021-04-22",6,"nec, leo."),(3,"1","3","Presentation","ultrices. Vivamus rhoncus.","2021-01-10","2021-04-16","2021-04-27",4,"egestas. Duis ac arcu. Nunc"),(4,"1","4","Coursework","ut, molestie in, tempus","2021-01-18","2021-03-19","2021-04-25",9,"dictum ultricies"),(5,"1","5","Coursework","luctus. Curabitur egestas nunc","2021-01-02","2021-02-19","2021-04-26",9,"Quisque purus sapien, gravida non, sollicitudin"),(6,"1","6","Coursework","eget metus eu erat","2021-01-09","2021-03-21","2021-04-30",1,"velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem"),(7,"1","7","Coursework","cursus in, hendrerit consectetuer,","2021-01-12","2021-02-18","2021-04-23",6,"molestie"),(8,"1","8","Written","parturient montes, nascetur ridiculus","2021-01-21","2021-02-21","2021-05-02",4,"arcu. Vestibulum ut eros non"),(9,"1","9","Presentation","aliquam adipiscing lacus. Ut","2021-01-14","2021-02-15","2021-04-25",3,"mollis vitae, posuere at, velit. Cras lorem lorem, luctus"),(10,"1","10","Coursework","Maecenas mi felis, adipiscing","2021-01-11","2021-04-02","2021-04-25",9,"facilisi. Sed neque. Sed"),(11,"2","1","Presentation","purus. Duis elementum, dui","2021-01-14","2021-02-19","2021-04-30",9,"volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat"),(12,"2","2","Presentation","at pretium aliquet, metus","2021-01-13","2021-04-09","2021-04-22",4,"tortor. Integer aliquam"),(13,"2","3","Coursework","inceptos hymenaeos. Mauris ut","2021-01-09","2021-04-03","2021-05-03",5,"lorem, sit"),(14,"2","4","Coursework","sagittis lobortis mauris. Suspendisse","2021-01-26","2021-03-24","2021-05-02",1,"sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed"),(15,"2","5","Coursework","semper rutrum. Fusce dolor","2021-01-11","2021-02-09","2021-04-22",6,"et, eros. Proin ultrices. Duis volutpat nunc"),(16,"2","6","Coursework","tincidunt nibh. Phasellus nulla.","2021-01-02","2021-02-23","2021-04-21",3,"sodales at, velit. Pellentesque ultricies dignissim"),(17,"2","7","Coursework","Vivamus nisi. Mauris nulla.","2021-01-15","2021-03-18","2021-04-29",2,"egestas. Duis ac arcu. Nunc mauris."),(18,"2","8","Written","enim. Curabitur massa. Vestibulum","2021-01-19","2021-03-20","2021-04-29",3,"Quisque"),(19,"2","9","Coursework","quam. Curabitur vel lectus.","2021-01-05","2021-02-01","2021-04-21",7,"Integer aliquam adipiscing lacus. Ut nec urna et arcu"),(20,"2","10","Presentation","blandit. Nam nulla magna,","2021-01-02","2021-03-29","2021-04-25",2,"velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl.");
INSERT INTO `Assessment` (`Assessment_ID`,`Subject_ID`,`Class_ID`,`Assessment_Type`,`Assessment_Name`,`Date_Assigned`,`Date_Due`,`Date_Extension`,`Duration`,`Teacher_Comments`) VALUES (21,"3","1","Written","orci lobortis augue scelerisque","2021-01-19","2021-02-17","2021-05-04",7,"consectetuer adipiscing"),(22,"3","2","Presentation","amet nulla. Donec non","2021-01-11","2021-04-18","2021-04-24",9,"tellus id nunc interdum"),(23,"3","3","Coursework","risus. Donec nibh enim,","2021-01-09","2021-04-20","2021-04-21",8,"ornare, lectus ante dictum mi, ac mattis"),(24,"3","4","Presentation","blandit enim consequat purus.","2021-01-07","2021-03-01","2021-05-03",2,"a neque. Nullam ut nisi a"),(25,"3","5","Coursework","luctus, ipsum leo elementum","2021-01-10","2021-02-17","2021-04-22",1,"torquent per conubia nostra, per inceptos"),(26,"3","6","Coursework","molestie in, tempus eu,","2021-01-05","2021-02-10","2021-04-29",9,"dui. Cum sociis natoque penatibus et magnis"),(27,"3","7","Coursework","Duis sit amet diam","2021-01-15","2021-04-04","2021-04-25",10,"Aenean massa. Integer vitae nibh. Donec est"),(28,"3","8","Written","Proin ultrices. Duis volutpat","2021-01-04","2021-02-09","2021-05-03",1,"Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra."),(29,"3","9","Presentation","sit amet metus. Aliquam","2021-01-06","2021-03-12","2021-04-23",9,"ante. Vivamus non lorem vitae odio sagittis"),(30,"3","10","Written","egestas. Fusce aliquet magna","2021-01-18","2021-02-23","2021-05-01",3,"enim. Sed nulla"),(31,"4","1","Coursework","dui augue eu tellus.","2021-01-13","2021-03-26","2021-04-24",7,"eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet"),(32,"4","2","Presentation","sodales. Mauris blandit enim","2021-01-26","2021-02-01","2021-04-28",2,"fringilla est. Mauris eu turpis. Nulla aliquet."),(33,"4","3","Presentation","Praesent luctus. Curabitur egestas","2021-01-13","2021-02-13","2021-04-26",5,"eget laoreet posuere,"),(34,"4","4","Written","Quisque nonummy ipsum non","2021-01-24","2021-02-04","2021-05-01",10,"ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas"),(35,"4","5","Written","orci lobortis augue scelerisque","2021-01-26","2021-02-11","2021-04-23",1,"Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla"),(36,"4","6","Written","In scelerisque scelerisque dui.","2021-01-20","2021-03-21","2021-04-28",5,"dui. Cum sociis"),(37,"4","7","Coursework","montes, nascetur ridiculus mus.","2021-01-23","2021-03-04","2021-04-26",4,"accumsan convallis,"),(38,"4","8","Presentation","dui, nec tempus mauris","2021-01-06","2021-04-12","2021-04-21",6,"a tortor. Nunc commodo auctor velit. Aliquam"),(39,"4","9","Presentation","Lorem ipsum dolor sit","2021-01-07","2021-04-11","2021-04-28",1,"pede sagittis augue, eu tempor erat neque non quam."),(40,"4","10","Coursework","mattis velit justo nec","2021-01-15","2021-04-08","2021-05-02",2,"senectus et netus et malesuada fames ac turpis egestas. Aliquam");
INSERT INTO `Assessment` (`Assessment_ID`,`Subject_ID`,`Class_ID`,`Assessment_Type`,`Assessment_Name`,`Date_Assigned`,`Date_Due`,`Date_Extension`,`Duration`,`Teacher_Comments`) VALUES (41,"5","1","Written","natoque penatibus et magnis","2021-01-01","2021-03-15","2021-05-03",5,"vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at"),(42,"5","2","Written","arcu vel quam dignissim","2021-01-26","2021-02-13","2021-04-25",5,"Quisque purus sapien, gravida non, sollicitudin a, malesuada"),(43,"5","3","Presentation","magna. Ut tincidunt orci","2021-01-08","2021-02-18","2021-04-30",3,"Duis risus odio, auctor vitae, aliquet nec,"),(44,"5","4","Coursework","purus gravida sagittis. Duis","2021-01-23","2021-03-18","2021-04-24",10,"Quisque libero lacus, varius et, euismod et, commodo"),(45,"5","5","Coursework","urna. Nunc quis arcu","2021-01-02","2021-02-15","2021-04-22",4,"amet diam eu dolor egestas rhoncus. Proin nisl"),(46,"5","6","Coursework","egestas a, scelerisque sed,","2021-01-19","2021-02-14","2021-05-02",2,"Proin nisl sem, consequat nec,"),(47,"5","7","Written","quis, tristique ac, eleifend","2021-01-24","2021-04-18","2021-05-02",7,"est, congue a, aliquet vel, vulputate eu, odio. Phasellus at"),(48,"5","8","Coursework","habitant morbi tristique senectus","2021-01-10","2021-02-06","2021-04-21",6,"egestas, urna justo faucibus lectus, a"),(49,"5","9","Coursework","tempor, est ac mattis","2021-01-02","2021-04-03","2021-04-24",10,"pellentesque. Sed dictum. Proin eget odio. Aliquam"),(50,"5","10","Written","per inceptos hymenaeos. Mauris","2021-01-09","2021-04-12","2021-05-02",9,"nunc"),(51,"6","1","Coursework","erat vel pede blandit","2021-01-02","2021-03-03","2021-05-04",10,"eu, ultrices sit amet, risus. Donec"),(52,"6","2","Written","id, mollis nec, cursus","2021-01-02","2021-03-12","2021-04-26",2,"non ante bibendum ullamcorper. Duis cursus, diam"),(53,"6","3","Written","semper auctor. Mauris vel","2021-01-22","2021-03-31","2021-04-25",7,"Maecenas libero est, congue a,"),(54,"6","4","Coursework","magna. Suspendisse tristique neque","2021-01-22","2021-02-14","2021-04-24",9,"morbi tristique"),(55,"6","5","Written","lorem semper auctor. Mauris","2021-01-02","2021-02-18","2021-04-30",3,"mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit"),(56,"6","6","Presentation","nec tempus scelerisque, lorem","2021-01-26","2021-02-02","2021-04-27",2,"vulputate, risus a"),(57,"6","7","Written","at, velit. Cras lorem","2021-01-25","2021-02-22","2021-05-03",2,"Vestibulum ut eros"),(58,"6","8","Coursework","varius ultrices, mauris ipsum","2021-01-06","2021-02-15","2021-05-03",2,"arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing."),(59,"6","9","Coursework","vestibulum. Mauris magna. Duis","2021-01-03","2021-04-09","2021-04-29",7,"nunc nulla vulputate dui, nec tempus"),(60,"6","10","Written","egestas blandit. Nam nulla","2021-01-15","2021-04-16","2021-04-27",4,"massa lobortis ultrices. Vivamus rhoncus.");
INSERT INTO `Assessment` (`Assessment_ID`,`Subject_ID`,`Class_ID`,`Assessment_Type`,`Assessment_Name`,`Date_Assigned`,`Date_Due`,`Date_Extension`,`Duration`,`Teacher_Comments`) VALUES (61,"7","1","Written","justo nec ante. Maecenas","2021-01-05","2021-02-21","2021-04-21",10,"vulputate, risus a ultricies adipiscing, enim mi tempor lorem,"),(62,"7","2","Presentation","tristique aliquet. Phasellus fermentum","2021-01-22","2021-03-22","2021-04-24",1,"Sed diam lorem, auctor quis, tristique ac, eleifend vitae,"),(63,"7","3","Written","nibh. Quisque nonummy ipsum","2021-01-01","2021-02-04","2021-04-25",2,"libero. Proin sed turpis nec mauris"),(64,"7","4","Presentation","scelerisque neque sed sem","2021-01-11","2021-04-15","2021-05-04",4,"rhoncus."),(65,"7","5","Written","mauris erat eget ipsum.","2021-01-02","2021-03-17","2021-04-24",6,"laoreet, libero et tristique pellentesque, tellus sem mollis"),(66,"7","6","Written","Cras eu tellus eu","2021-01-06","2021-02-09","2021-04-25",9,"netus et malesuada fames ac"),(67,"7","7","Presentation","a feugiat tellus lorem","2021-01-05","2021-02-12","2021-04-29",3,"pharetra."),(68,"7","8","Written","montes, nascetur ridiculus mus.","2021-01-07","2021-02-05","2021-04-28",8,"Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus"),(69,"7","9","Coursework","tincidunt pede ac urna.","2021-01-09","2021-02-13","2021-04-26",2,"consequat dolor vitae dolor."),(70,"7","10","Presentation","Aenean massa. Integer vitae","2021-01-08","2021-03-26","2021-05-01",5,"Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue,"),(71,"8","1","Presentation","sed, sapien. Nunc pulvinar","2021-01-25","2021-02-27","2021-04-22",6,"nec, imperdiet nec, leo. Morbi neque tellus, imperdiet"),(72,"8","2","Written","feugiat. Sed nec metus","2021-01-16","2021-02-17","2021-04-30",10,"sollicitudin orci sem eget"),(73,"8","3","Coursework","varius et, euismod et,","2021-01-22","2021-03-27","2021-04-26",4,"turpis"),(74,"8","4","Presentation","Donec dignissim magna a","2021-01-14","2021-02-25","2021-05-04",9,"sem mollis dui, in sodales elit erat vitae"),(75,"8","5","Coursework","ac arcu. Nunc mauris.","2021-01-04","2021-02-26","2021-04-26",8,"nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque"),(76,"8","6","Presentation","non enim. Mauris quis","2021-01-22","2021-04-17","2021-04-24",9,"magnis dis parturient montes, nascetur ridiculus mus. Proin"),(77,"8","7","Presentation","sit amet diam eu","2021-01-10","2021-03-20","2021-04-21",9,"elit fermentum risus, at fringilla purus mauris a nunc. In"),(78,"8","8","Written","In tincidunt congue turpis.","2021-01-16","2021-03-25","2021-04-25",10,"non justo. Proin non massa non ante bibendum ullamcorper. Duis"),(79,"8","9","Written","ultrices sit amet, risus.","2021-01-10","2021-03-10","2021-04-28",6,"orci. Ut sagittis lobortis mauris. Suspendisse"),(80,"8","10","Written","Aliquam auctor, velit eget","2021-01-18","2021-02-05","2021-04-25",9,"dapibus id, blandit at, nisi. Cum sociis natoque penatibus");
INSERT INTO `Assessment` (`Assessment_ID`,`Subject_ID`,`Class_ID`,`Assessment_Type`,`Assessment_Name`,`Date_Assigned`,`Date_Due`,`Date_Extension`,`Duration`,`Teacher_Comments`) VALUES (81,"9","1","Coursework","est ac mattis semper,","2021-01-03","2021-03-19","2021-04-23",5,"Sed eu nibh vulputate"),(82,"9","2","Presentation","diam. Sed diam lorem,","2021-01-25","2021-03-06","2021-05-01",1,"nonummy ipsum non arcu. Vivamus sit amet risus."),(83,"9","3","Written","Nunc lectus pede, ultrices","2021-01-01","2021-02-13","2021-05-02",3,"eu erat semper rutrum."),(84,"9","4","Coursework","gravida nunc sed pede.","2021-01-15","2021-04-18","2021-04-21",9,"non, vestibulum nec,"),(85,"9","5","Coursework","leo. Morbi neque tellus,","2021-01-04","2021-02-05","2021-04-28",3,"eget varius ultrices, mauris ipsum porta elit,"),(86,"9","6","Written","ut dolor dapibus gravida.","2021-01-13","2021-03-05","2021-04-23",8,"Cras pellentesque. Sed"),(87,"9","7","Coursework","commodo hendrerit. Donec porttitor","2021-01-01","2021-04-13","2021-05-02",9,"sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam"),(88,"9","8","Coursework","convallis, ante lectus convallis","2021-01-20","2021-03-24","2021-04-21",9,"dolor egestas rhoncus."),(89,"9","9","Presentation","Suspendisse commodo tincidunt nibh.","2021-01-07","2021-03-29","2021-04-26",8,"ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis"),(90,"9","10","Coursework","Nullam ut nisi a","2021-01-16","2021-03-01","2021-04-21",3,"sem"),(91,"10","1","Presentation","erat volutpat. Nulla facilisis.","2021-01-21","2021-02-02","2021-04-27",6,"Vivamus euismod urna. Nullam lobortis"),(92,"10","2","Presentation","malesuada fames ac turpis","2021-01-10","2021-03-19","2021-04-25",8,"dapibus rutrum, justo. Praesent"),(93,"10","3","Coursework","diam luctus lobortis. Class","2021-01-02","2021-04-20","2021-05-03",10,"et magnis dis"),(94,"10","4","Written","sit amet, risus. Donec","2021-01-16","2021-04-19","2021-04-23",10,"eu, ligula. Aenean euismod mauris eu"),(95,"10","5","Coursework","turpis. Aliquam adipiscing lobortis","2021-01-03","2021-04-17","2021-04-23",5,"est ac mattis semper, dui"),(96,"10","6","Presentation","inceptos hymenaeos. Mauris ut","2021-01-04","2021-03-26","2021-04-29",1,"nascetur ridiculus mus. Donec dignissim"),(97,"10","7","Presentation","elit erat vitae risus.","2021-01-16","2021-02-27","2021-04-25",5,"hendrerit neque."),(98,"10","8","Written","tempor bibendum. Donec felis","2021-01-10","2021-04-02","2021-04-23",6,"adipiscing lobortis risus. In mi pede, nonummy ut, molestie in,"),(99,"10","9","Written","dapibus gravida. Aliquam tincidunt,","2021-01-04","2021-03-09","2021-04-21",3,"magna et"),(100,"10","10","Presentation","sit amet, faucibus ut,","2021-01-02","2021-03-28","2021-04-23",1,"enim nec tempus");
INSERT INTO `Assessment` (`Assessment_ID`,`Subject_ID`,`Class_ID`,`Assessment_Type`,`Assessment_Name`,`Date_Assigned`,`Date_Due`,`Date_Extension`,`Duration`,`Teacher_Comments`) VALUES (101,"11","1","Written","bibendum. Donec","2021-01-12","2021-02-07","2021-04-26",10,"ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus"),(102,"11","2","Written","aliquet odio.","2021-01-18","2021-03-07","2021-05-04",2,"Maecenas iaculis aliquet diam. Sed diam lorem,"),(103,"11","3","Presentation","a sollicitudin","2021-01-23","2021-04-03","2021-05-05",8,"vel, convallis in, cursus et, eros."),(104,"11","4","Written","rhoncus. Proin","2021-01-11","2021-04-14","2021-04-25",10,"gravida sagittis. Duis gravida. Praesent eu nulla at sem"),(105,"11","5","Written","ac urna.","2021-01-17","2021-04-18","2021-05-04",3,"lorem"),(106,"11","6","Coursework","ut mi.","2021-01-10","2021-04-08","2021-04-24",8,"nisi. Mauris nulla. Integer urna."),(107,"11","7","Coursework","Cras vehicula","2021-01-20","2021-04-01","2021-04-30",5,"commodo at, libero. Morbi accumsan"),(108,"11","8","Presentation","magna tellus","2021-01-14","2021-02-21","2021-05-01",9,"Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede."),(109,"11","9","Presentation","diam luctus","2021-01-07","2021-03-18","2021-05-04",9,"elit fermentum risus, at fringilla purus mauris a nunc. In"),(110,"11","10","Written","imperdiet ullamcorper.","2021-01-01","2021-04-01","2021-04-23",2,"a ultricies adipiscing,"),(111,"12","1","Coursework","enim mi","2021-01-23","2021-04-10","2021-05-01",9,"ac orci. Ut semper pretium"),(112,"12","2","Presentation","convallis convallis","2021-01-26","2021-03-26","2021-04-23",9,"ac mattis semper, dui lectus rutrum urna, nec"),(113,"12","3","Coursework","lectus. Nullam","2021-01-03","2021-03-14","2021-05-05",7,"eu elit. Nulla facilisi. Sed neque."),(114,"12","4","Coursework","auctor, nunc","2021-01-11","2021-02-04","2021-05-04",10,"mauris sit amet lorem semper auctor."),(115,"12","5","Coursework","ornare, facilisis","2021-01-05","2021-02-03","2021-04-27",4,"torquent per conubia nostra, per inceptos hymenaeos. Mauris ut"),(116,"12","6","Presentation","dictum eleifend,","2021-01-19","2021-03-19","2021-04-29",2,"ullamcorper. Duis cursus, diam at pretium aliquet,"),(117,"12","7","Coursework","sociis natoque","2021-01-17","2021-02-24","2021-04-23",4,"sapien. Cras dolor dolor,"),(118,"12","8","Presentation","vel, convallis","2021-01-16","2021-03-14","2021-04-25",3,"varius. Nam"),(119,"12","9","Presentation","Integer id","2021-01-04","2021-03-11","2021-05-05",4,"ut dolor dapibus gravida. Aliquam"),(120,"12","10","Written","in sodales","2021-01-15","2021-02-03","2021-05-04",1,"nisi sem semper erat, in consectetuer ipsum"),(121,"13","1","Presentation","facilisi. Sed","2021-01-20","2021-02-13","2021-04-22",4,"eget metus eu erat semper rutrum. Fusce dolor quam, elementum"),(122,"13","2","Coursework","velit justo","2021-01-22","2021-03-16","2021-05-05",9,"non enim. Mauris quis turpis"),(123,"13","3","Presentation","lobortis ultrices.","2021-01-14","2021-03-07","2021-04-25",5,"aliquet libero."),(124,"13","4","Written","aliquam arcu.","2021-01-11","2021-03-06","2021-04-24",9,"ante dictum cursus. Nunc mauris"),(125,"13","5","Written","magnis dis","2021-01-20","2021-03-24","2021-04-29",8,"amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede,"),(126,"13","6","Presentation","aliquet. Phasellus","2021-01-06","2021-02-02","2021-04-26",5,"sollicitudin"),(127,"13","7","Coursework","a, magna.","2021-01-01","2021-04-05","2021-04-27",1,"fermentum metus. Aenean sed"),(128,"13","8","Written","erat. Etiam","2021-01-05","2021-03-05","2021-05-05",3,"vestibulum."),(129,"13","9","Presentation","diam lorem,","2021-01-14","2021-04-06","2021-04-23",4,"dolor, nonummy ac, feugiat non, lobortis quis,"),(130,"13","10","Written","convallis est,","2021-01-01","2021-02-13","2021-05-01",8,"et nunc. Quisque ornare tortor at risus."),(131,"14","1","Written","rhoncus. Proin","2021-01-10","2021-02-25","2021-05-02",9,"Aenean gravida nunc sed pede. Cum sociis"),(132,"14","2","Written","Cras dolor","2021-01-26","2021-03-02","2021-04-25",2,"posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo"),(133,"14","3","Presentation","orci. Donec","2021-01-08","2021-03-03","2021-04-21",4,"est mauris,"),(134,"14","4","Presentation","quis massa.","2021-01-15","2021-04-12","2021-05-02",2,"ornare,"),(135,"14","5","Presentation","dolor sit","2021-01-06","2021-03-02","2021-04-26",9,"erat. Etiam vestibulum massa rutrum magna. Cras"),(136,"14","6","Written","ultrices. Vivamus","2021-01-02","2021-02-06","2021-04-26",2,"convallis est, vitae sodales nisi magna sed dui. Fusce aliquam,"),(137,"14","7","Coursework","pede ac","2021-01-12","2021-03-11","2021-04-26",10,"interdum feugiat. Sed nec metus facilisis lorem tristique aliquet."),(138,"14","8","Coursework","mollis. Phasellus","2021-01-20","2021-02-06","2021-04-22",10,"Mauris vestibulum, neque sed"),(139,"14","9","Written","Quisque imperdiet,","2021-01-11","2021-04-09","2021-04-28",7,"risus varius orci, in consequat enim diam vel"),(140,"14","10","Written","eu elit.","2021-01-14","2021-02-14","2021-04-29",4,"mollis non, cursus non, egestas"),(141,"15","1","Presentation","eu neque","2021-01-06","2021-04-19","2021-05-03",5,"enim, gravida sit amet, dapibus id,"),(142,"15","2","Presentation","quis massa.","2021-01-17","2021-03-08","2021-05-04",7,"lorem, luctus ut, pellentesque eget, dictum"),(143,"15","3","Coursework","convallis erat,","2021-01-24","2021-04-14","2021-04-27",5,"eu, ultrices sit amet, risus. Donec nibh"),(144,"15","4","Presentation","Ut tincidunt","2021-01-24","2021-03-02","2021-04-28",6,"mollis non, cursus non, egestas a, dui. Cras pellentesque."),(145,"15","5","Presentation","aptent taciti","2021-01-26","2021-03-27","2021-04-28",7,"eu dui."),(146,"15","6","Presentation","Nunc mauris","2021-01-04","2021-02-23","2021-05-04",8,"diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer"),(147,"15","7","Presentation","Curabitur vel","2021-01-13","2021-04-09","2021-04-24",4,"ac mi"),(148,"15","8","Coursework","lorem, auctor","2021-01-07","2021-03-26","2021-04-26",2,"auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris"),(149,"15","9","Written","Suspendisse sed","2021-01-04","2021-03-16","2021-04-25",1,"in molestie tortor"),(150,"15","10","Coursework","consequat dolor","2021-01-25","2021-03-30","2021-04-27",1,"Aenean");




/*

FOR ASSESSMENT_GRADE TABLE:

TOTAL RECORDS = 100
This is a pain to do. 
To simplify things, each student has a random grade in a random assessment, even though the class might not be given that assessment.... there's no way around this, to be honest.

*/


INSERT INTO `Assessment_Grade` (`Assessment_ID`,`Student_ID`,`Grade`,`Feedback`) VALUES 
(28,1,"6","at pretium aliquet, metus urna convallis erat, eget"),
(10,2,"4","lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum"),
(59,3,"6","lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed"),
(84,4,"4","dui. Cras pellentesque. Sed dictum."),
(63,5,"1","Suspendisse tristique neque"),(43,6,"3","dolor quam, elementum at, egestas a, scelerisque"),(4,7,"4","nec orci. Donec nibh. Quisque nonummy ipsum"),(65,8,"6","nec, diam. Duis mi enim, condimentum eget, volutpat"),(65,9,"6","facilisis"),(40,10,"4","mauris erat eget ipsum. Suspendisse sagittis. Nullam"),(36,11,"4","venenatis vel, faucibus id, libero. Donec consectetuer"),(25,12,"3","tellus. Suspendisse sed dolor. Fusce"),(78,13,"1","purus."),(53,14,"4","Donec non"),(3,15,"3","libero. Donec consectetuer mauris id sapien. Cras"),(37,16,"3","vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie"),(52,17,"4","a, malesuada id, erat."),(5,18,"9","libero. Donec consectetuer mauris"),(34,19,"5","felis, adipiscing fringilla, porttitor vulputate,"),(22,20,"1","dis parturient"),(19,21,"4","libero. Proin sed turpis nec mauris blandit"),(35,22,"8","tincidunt"),(89,23,"1","arcu."),(26,24,"7","at risus. Nunc ac sem"),(43,25,"3","eget lacus. Mauris"),(36,26,"4","dolor, nonummy ac,"),(63,27,"4","ullamcorper."),(49,28,"2","Duis"),(100,29,"3","auctor, velit eget"),(33,30,"4","sem semper erat,"),(95,31,"4","urna, nec luctus felis purus ac tellus. Suspendisse sed dolor."),(88,32,"4","cursus. Integer mollis. Integer tincidunt"),(51,33,"5","tincidunt, nunc ac mattis ornare, lectus ante dictum mi,"),(28,34,"1","Nullam nisl. Maecenas"),(98,35,"9","aliquet. Phasellus fermentum convallis ligula. Donec"),(42,36,"6","ultrices posuere cubilia"),(99,37,"3","purus, accumsan"),(93,38,"4","egestas. Aliquam fringilla cursus purus."),(54,39,"4","nunc. In at pede. Cras vulputate velit"),(19,40,"4","sapien molestie"),(33,41,"5","enim. Mauris quis"),(34,42,"6","egestas."),(27,43,"4","Vestibulum ante ipsum primis in faucibus orci"),(51,44,"3","eu,"),(69,45,"5","Fusce aliquet magna a neque. Nullam ut nisi a"),(100,46,"6","vel arcu eu odio"),(13,47,"6","et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus"),(39,48,"5","consequat auctor,"),(99,49,"3","tortor at risus. Nunc ac sem ut"),(34,50,"9","facilisis. Suspendisse commodo tincidunt nibh. Phasellus"),(30,51,"5","nibh enim, gravida sit amet, dapibus id, blandit at, nisi."),(84,52,"4","et malesuada fames ac turpis egestas."),(94,53,"1","porttitor scelerisque neque. Nullam nisl. Maecenas"),(75,54,"2","in lobortis tellus justo sit"),(70,55,"9","vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum."),(35,56,"5","risus. Quisque libero lacus, varius et, euismod et, commodo at,"),(18,57,"3","lectus quis massa. Mauris vestibulum,"),(23,58,"1","at pede. Cras vulputate velit eu sem."),(44,59,"5","amet luctus vulputate, nisi sem semper erat, in"),(52,60,"3","feugiat non, lobortis"),(28,61,"5","molestie"),(7,62,"4","mauris, aliquam eu, accumsan sed, facilisis vitae,"),(8,63,"3","parturient montes,"),(80,64,"9","ante bibendum ullamcorper."),(39,65,"4","ornare placerat, orci lacus vestibulum"),(2,66,"2","aliquam iaculis, lacus"),(79,67,"3","mus. Donec dignissim magna a"),(61,68,"2","leo, in lobortis tellus justo sit amet nulla. Donec non"),(4,69,"4","nunc ac"),(20,70,"7","sed pede. Cum sociis natoque"),(100,71,"4","dolor vitae"),(54,72,"5","ac mi eleifend egestas. Sed pharetra, felis eget varius"),(49,73,"5","vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci"),(3,74,"6","aliquet nec, imperdiet"),(24,75,"1","libero"),(33,76,"3","dolor"),(100,77,"4","arcu eu odio tristique pharetra. Quisque ac libero"),(17,78,"4","facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc"),(11,79,"1","condimentum. Donec at arcu. Vestibulum ante ipsum"),(14,80,"2","metus facilisis lorem tristique aliquet. Phasellus fermentum"),(47,81,"3","Cras dictum ultricies"),(53,82,"5","convallis ligula. Donec luctus aliquet odio. Etiam ligula"),(70,83,"4","erat. Sed nunc est, mollis"),(50,84,"1","Fusce diam nunc, ullamcorper eu, euismod ac,"),(25,85,"1","nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim"),(35,86,"3","Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo."),(65,87,"5","placerat. Cras dictum ultricies ligula. Nullam enim. Sed"),(34,88,"4","odio sagittis semper. Nam tempor diam dictum sapien. Aenean"),(58,89,"4","justo. Praesent luctus. Curabitur egestas nunc sed"),(98,90,"6","Cras"),(94,91,"4","porttitor tellus non magna. Nam ligula elit, pretium"),(34,92,"3","vestibulum massa"),(55,93,"8","erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus"),(69,94,"4","Proin eget odio. Aliquam vulputate"),(58,95,"8","iaculis"),(72,96,"9","dictum eleifend, nunc risus varius orci, in consequat enim diam"),(24,97,"4","vitae odio sagittis semper. Nam tempor diam dictum sapien."),(68,98,"9","et, magna. Praesent interdum"),(31,99,"5","sapien. Cras dolor dolor, tempus"),(70,100,"3","ridiculus mus. Donec dignissim magna");








/*

FOR LESSON TABLE:

TOTAL RECORDS = 100
This was also a pain.
Each class may have 0 or more lessons in a random subject.
Oh, and lessons can take place at 11 at night, or 4 in the morning. Look, we never said this was a nice school, ok!

*/



INSERT INTO `Lesson` (`Lesson_ID`,`Class_ID`,`Subject_ID`,`Classroom_ID`,`Lesson_Date`) VALUES 
(1,"1",15,20,"2021-02-22 17:00:00"),
(2,"1",5,8,"2021-03-21 09:00:00"),(3,"1",8,7,"2021-04-02 20:00:00"),(4,"1",10,10,"2021-03-26 10:00:00"),(5,"1",10,1,"2021-01-07 09:00:00"),(6,"1",12,9,"2021-01-10 22:00:00"),(7,"1",3,4,"2021-02-13 11:00:00"),(8,"1",6,1,"2021-01-17 10:00:00"),(9,"1",4,9,"2021-02-14 15:00:00"),(10,"1",15,12,"2021-03-11 02:00:00"),(11,"2",3,1,"2021-01-16 20:00:00"),(12,"2",13,14,"2021-01-09 16:00:00"),(13,"2",8,10,"2021-02-06 18:00:00"),(14,"2",9,9,"2021-01-07 01:00:00"),(15,"2",2,17,"2021-04-01 21:00:00"),(16,"2",12,11,"2021-02-12 03:00:00"),(17,"2",9,19,"2021-03-22 05:00:00"),(18,"2",3,12,"2021-01-02 12:00:00"),(19,"2",8,18,"2021-01-20 06:00:00"),(20,"2",2,1,"2021-04-03 18:00:00"),(21,"3",1,9,"2021-01-31 18:00:00"),(22,"3",5,9,"2021-03-15 18:00:00"),(23,"3",3,10,"2021-03-15 00:00:00"),(24,"3",8,17,"2021-02-19 19:00:00"),(25,"3",8,7,"2021-01-12 14:00:00"),(26,"3",6,12,"2021-02-13 17:00:00"),(27,"3",15,17,"2021-02-10 13:00:00"),(28,"3",4,17,"2021-03-15 04:00:00"),(29,"3",12,12,"2021-01-01 13:00:00"),(30,"3",13,17,"2021-01-04 12:00:00"),(31,"4",5,12,"2021-03-25 17:00:00"),(32,"4",9,6,"2021-01-24 20:00:00"),(33,"4",4,19,"2021-02-06 07:00:00"),(34,"4",10,11,"2021-02-28 07:00:00"),(35,"4",5,15,"2021-02-13 13:00:00"),(36,"4",6,13,"2021-03-30 20:00:00"),(37,"4",4,19,"2021-01-17 19:00:00"),(38,"4",14,19,"2021-02-13 15:00:00"),(39,"4",12,15,"2021-01-09 16:00:00"),(40,"4",9,11,"2021-01-05 19:00:00"),(41,"5",11,17,"2021-03-29 05:00:00"),(42,"5",7,14,"2021-01-15 14:00:00"),(43,"5",5,7,"2021-04-03 15:00:00"),(44,"5",7,2,"2021-03-18 16:00:00"),(45,"5",14,15,"2021-01-30 10:00:00"),(46,"5",13,9,"2021-02-03 13:00:00"),(47,"5",13,9,"2021-02-01 12:00:00"),(48,"5",11,16,"2021-02-23 17:00:00"),(49,"5",12,10,"2021-03-18 13:00:00"),(50,"5",5,9,"2021-03-14 18:00:00"),(51,"6",7,18,"2021-03-04 00:00:00"),(52,"6",8,5,"2021-01-16 03:00:00"),(53,"6",8,10,"2021-01-23 00:00:00"),(54,"6",12,16,"2021-02-25 22:00:00"),(55,"6",7,7,"2021-03-24 23:00:00"),(56,"6",15,6,"2021-01-25 07:00:00"),(57,"6",6,18,"2021-03-29 09:00:00"),(58,"6",10,12,"2021-01-03 14:00:00"),(59,"6",12,16,"2021-03-02 04:00:00"),(60,"6",6,12,"2021-02-18 19:00:00"),(61,"7",1,3,"2021-01-13 22:00:00"),(62,"7",15,8,"2021-01-26 06:00:00"),(63,"7",6,13,"2021-02-10 09:00:00"),(64,"7",6,15,"2021-01-13 00:00:00"),(65,"7",5,16,"2021-01-11 01:00:00"),(66,"7",3,1,"2021-02-15 22:00:00"),(67,"7",11,3,"2021-01-27 00:00:00"),(68,"7",3,11,"2021-01-10 21:00:00"),(69,"7",1,4,"2021-01-29 00:00:00"),(70,"7",8,15,"2021-02-01 18:00:00"),(71,"8",1,9,"2021-01-29 06:00:00"),(72,"8",3,2,"2021-01-01 12:00:00"),(73,"8",12,2,"2021-02-21 01:00:00"),(74,"8",7,3,"2021-01-28 01:00:00"),(75,"8",7,13,"2021-04-05 05:00:00"),(76,"8",1,16,"2021-02-27 01:00:00"),(77,"8",12,14,"2021-02-13 10:00:00"),(78,"8",8,15,"2021-01-04 13:00:00"),(79,"8",15,16,"2021-01-19 01:00:00"),(80,"8",6,18,"2021-02-10 12:00:00"),(81,"9",6,17,"2021-03-10 17:00:00"),(82,"9",11,3,"2021-04-01 07:00:00"),(83,"9",10,1,"2021-01-29 10:00:00"),(84,"9",3,14,"2021-03-18 15:00:00"),(85,"9",5,13,"2021-01-21 08:00:00"),(86,"9",5,16,"2021-03-24 09:00:00"),(87,"9",8,19,"2021-01-01 10:00:00"),(88,"9",11,4,"2021-01-10 15:00:00"),(89,"9",1,12,"2021-01-29 11:00:00"),(90,"9",5,16,"2021-02-19 00:00:00"),(91,"10",15,18,"2021-01-26 17:00:00"),(92,"10",8,4,"2021-03-02 08:00:00"),(93,"10",2,7,"2021-02-22 21:00:00"),(94,"10",14,15,"2021-01-19 05:00:00"),(95,"10",6,4,"2021-04-02 06:00:00"),(96,"10",7,5,"2021-03-03 02:00:00"),(97,"10",9,17,"2021-03-17 06:00:00"),(98,"10",15,20,"2021-01-22 12:00:00"),(99,"10",9,10,"2021-03-08 16:00:00"),(100,"10",2,2,"2021-01-31 07:00:00");

/*

Because I didn't include the staff person id:
*/
UPDATE `Lesson` SET `Staff_Person_ID` = 201 WHERE `Lesson_ID` = 1;
UPDATE `Lesson` SET `Staff_Person_ID` = 202 WHERE `Lesson_ID` = 2;
UPDATE `Lesson` SET `Staff_Person_ID` = 203 WHERE `Lesson_ID` = 3;
UPDATE `Lesson` SET `Staff_Person_ID` = 204 WHERE `Lesson_ID` = 4;
UPDATE `Lesson` SET `Staff_Person_ID` = 205 WHERE `Lesson_ID` = 5;
UPDATE `Lesson` SET `Staff_Person_ID` = 206 WHERE `Lesson_ID` = 6;
UPDATE `Lesson` SET `Staff_Person_ID` = 207 WHERE `Lesson_ID` = 7;
UPDATE `Lesson` SET `Staff_Person_ID` = 208 WHERE `Lesson_ID` = 8;
UPDATE `Lesson` SET `Staff_Person_ID` = 209 WHERE `Lesson_ID` = 9;
UPDATE `Lesson` SET `Staff_Person_ID` = 210 WHERE `Lesson_ID` = 10;
UPDATE `Lesson` SET `Staff_Person_ID` = 211 WHERE `Lesson_ID` = 11;
UPDATE `Lesson` SET `Staff_Person_ID` = 212 WHERE `Lesson_ID` = 12;
UPDATE `Lesson` SET `Staff_Person_ID` = 213 WHERE `Lesson_ID` = 13;
UPDATE `Lesson` SET `Staff_Person_ID` = 214 WHERE `Lesson_ID` = 14;
UPDATE `Lesson` SET `Staff_Person_ID` = 215 WHERE `Lesson_ID` = 15;
UPDATE `Lesson` SET `Staff_Person_ID` = 216 WHERE `Lesson_ID` = 16;
UPDATE `Lesson` SET `Staff_Person_ID` = 217 WHERE `Lesson_ID` = 17;
UPDATE `Lesson` SET `Staff_Person_ID` = 218 WHERE `Lesson_ID` = 18;
UPDATE `Lesson` SET `Staff_Person_ID` = 219 WHERE `Lesson_ID` = 19;
UPDATE `Lesson` SET `Staff_Person_ID` = 220 WHERE `Lesson_ID` = 20;
UPDATE `Lesson` SET `Staff_Person_ID` = 221 WHERE `Lesson_ID` = 21;
UPDATE `Lesson` SET `Staff_Person_ID` = 222 WHERE `Lesson_ID` = 22;
UPDATE `Lesson` SET `Staff_Person_ID` = 223 WHERE `Lesson_ID` = 23;
UPDATE `Lesson` SET `Staff_Person_ID` = 224 WHERE `Lesson_ID` = 24;
UPDATE `Lesson` SET `Staff_Person_ID` = 225 WHERE `Lesson_ID` = 25;
UPDATE `Lesson` SET `Staff_Person_ID` = 226 WHERE `Lesson_ID` = 26;
UPDATE `Lesson` SET `Staff_Person_ID` = 227 WHERE `Lesson_ID` = 27;
UPDATE `Lesson` SET `Staff_Person_ID` = 228 WHERE `Lesson_ID` = 28;
UPDATE `Lesson` SET `Staff_Person_ID` = 229 WHERE `Lesson_ID` = 29;
UPDATE `Lesson` SET `Staff_Person_ID` = 230 WHERE `Lesson_ID` = 30;
UPDATE `Lesson` SET `Staff_Person_ID` = 231 WHERE `Lesson_ID` = 31;
UPDATE `Lesson` SET `Staff_Person_ID` = 232 WHERE `Lesson_ID` = 32;
UPDATE `Lesson` SET `Staff_Person_ID` = 233 WHERE `Lesson_ID` = 33;
UPDATE `Lesson` SET `Staff_Person_ID` = 234 WHERE `Lesson_ID` = 34;
UPDATE `Lesson` SET `Staff_Person_ID` = 235 WHERE `Lesson_ID` = 35;
UPDATE `Lesson` SET `Staff_Person_ID` = 236 WHERE `Lesson_ID` = 36;
UPDATE `Lesson` SET `Staff_Person_ID` = 237 WHERE `Lesson_ID` = 37;
UPDATE `Lesson` SET `Staff_Person_ID` = 238 WHERE `Lesson_ID` = 38;
UPDATE `Lesson` SET `Staff_Person_ID` = 239 WHERE `Lesson_ID` = 39;
UPDATE `Lesson` SET `Staff_Person_ID` = 240 WHERE `Lesson_ID` = 40;
UPDATE `Lesson` SET `Staff_Person_ID` = 241 WHERE `Lesson_ID` = 41;
UPDATE `Lesson` SET `Staff_Person_ID` = 242 WHERE `Lesson_ID` = 42;
UPDATE `Lesson` SET `Staff_Person_ID` = 243 WHERE `Lesson_ID` = 43;
UPDATE `Lesson` SET `Staff_Person_ID` = 243 WHERE `Lesson_ID` = 44;
UPDATE `Lesson` SET `Staff_Person_ID` = 244 WHERE `Lesson_ID` = 45;
UPDATE `Lesson` SET `Staff_Person_ID` = 245 WHERE `Lesson_ID` = 46;
UPDATE `Lesson` SET `Staff_Person_ID` = 246 WHERE `Lesson_ID` = 47;
UPDATE `Lesson` SET `Staff_Person_ID` = 247 WHERE `Lesson_ID` = 48;
UPDATE `Lesson` SET `Staff_Person_ID` = 248 WHERE `Lesson_ID` = 49;
UPDATE `Lesson` SET `Staff_Person_ID` = 249 WHERE `Lesson_ID` = 50;
UPDATE `Lesson` SET `Staff_Person_ID` = 250 WHERE `Lesson_ID` = 51;
UPDATE `Lesson` SET `Staff_Person_ID` = 239 WHERE `Lesson_ID` = 52;
UPDATE `Lesson` SET `Staff_Person_ID` = 229 WHERE `Lesson_ID` = 53;
UPDATE `Lesson` SET `Staff_Person_ID` = 232 WHERE `Lesson_ID` = 54;
UPDATE `Lesson` SET `Staff_Person_ID` = 212 WHERE `Lesson_ID` = 55;
UPDATE `Lesson` SET `Staff_Person_ID` = 201 WHERE `Lesson_ID` = 56;
UPDATE `Lesson` SET `Staff_Person_ID` = 201 WHERE `Lesson_ID` = 57;
UPDATE `Lesson` SET `Staff_Person_ID` = 202 WHERE `Lesson_ID` = 58;
UPDATE `Lesson` SET `Staff_Person_ID` = 204 WHERE `Lesson_ID` = 59;
UPDATE `Lesson` SET `Staff_Person_ID` = 205 WHERE `Lesson_ID` = 60;
UPDATE `Lesson` SET `Staff_Person_ID` = 208 WHERE `Lesson_ID` = 61;
UPDATE `Lesson` SET `Staff_Person_ID` = 218 WHERE `Lesson_ID` = 62;
UPDATE `Lesson` SET `Staff_Person_ID` = 217 WHERE `Lesson_ID` = 63;
UPDATE `Lesson` SET `Staff_Person_ID` = 215 WHERE `Lesson_ID` = 64;
UPDATE `Lesson` SET `Staff_Person_ID` = 214 WHERE `Lesson_ID` = 65;
UPDATE `Lesson` SET `Staff_Person_ID` = 221 WHERE `Lesson_ID` = 66;
UPDATE `Lesson` SET `Staff_Person_ID` = 223 WHERE `Lesson_ID` = 67;
UPDATE `Lesson` SET `Staff_Person_ID` = 224 WHERE `Lesson_ID` = 68;
UPDATE `Lesson` SET `Staff_Person_ID` = 228 WHERE `Lesson_ID` = 69;
UPDATE `Lesson` SET `Staff_Person_ID` = 229 WHERE `Lesson_ID` = 70;
UPDATE `Lesson` SET `Staff_Person_ID` = 221 WHERE `Lesson_ID` = 71;
UPDATE `Lesson` SET `Staff_Person_ID` = 245 WHERE `Lesson_ID` = 72;
UPDATE `Lesson` SET `Staff_Person_ID` = 250 WHERE `Lesson_ID` = 73;
UPDATE `Lesson` SET `Staff_Person_ID` = 232 WHERE `Lesson_ID` = 74;
UPDATE `Lesson` SET `Staff_Person_ID` = 231 WHERE `Lesson_ID` = 75;
UPDATE `Lesson` SET `Staff_Person_ID` = 238 WHERE `Lesson_ID` = 76;
UPDATE `Lesson` SET `Staff_Person_ID` = 236 WHERE `Lesson_ID` = 77;
UPDATE `Lesson` SET `Staff_Person_ID` = 239 WHERE `Lesson_ID` = 78;
UPDATE `Lesson` SET `Staff_Person_ID` = 249 WHERE `Lesson_ID` = 79;
UPDATE `Lesson` SET `Staff_Person_ID` = 247 WHERE `Lesson_ID` = 80;
UPDATE `Lesson` SET `Staff_Person_ID` = 248 WHERE `Lesson_ID` = 81;
UPDATE `Lesson` SET `Staff_Person_ID` = 247 WHERE `Lesson_ID` = 82;
UPDATE `Lesson` SET `Staff_Person_ID` = 246 WHERE `Lesson_ID` = 83;
UPDATE `Lesson` SET `Staff_Person_ID` = 245 WHERE `Lesson_ID` = 84;
UPDATE `Lesson` SET `Staff_Person_ID` = 244 WHERE `Lesson_ID` = 85;
UPDATE `Lesson` SET `Staff_Person_ID` = 244 WHERE `Lesson_ID` = 86;
UPDATE `Lesson` SET `Staff_Person_ID` = 244 WHERE `Lesson_ID` = 87;
UPDATE `Lesson` SET `Staff_Person_ID` = 231 WHERE `Lesson_ID` = 88;
UPDATE `Lesson` SET `Staff_Person_ID` = 233 WHERE `Lesson_ID` = 89;
UPDATE `Lesson` SET `Staff_Person_ID` = 203 WHERE `Lesson_ID` = 90;
UPDATE `Lesson` SET `Staff_Person_ID` = 202 WHERE `Lesson_ID` = 91;
UPDATE `Lesson` SET `Staff_Person_ID` = 201 WHERE `Lesson_ID` = 92;
UPDATE `Lesson` SET `Staff_Person_ID` = 215 WHERE `Lesson_ID` = 93;
UPDATE `Lesson` SET `Staff_Person_ID` = 243 WHERE `Lesson_ID` = 94;
UPDATE `Lesson` SET `Staff_Person_ID` = 231 WHERE `Lesson_ID` = 95;
UPDATE `Lesson` SET `Staff_Person_ID` = 241 WHERE `Lesson_ID` = 96;
UPDATE `Lesson` SET `Staff_Person_ID` = 230 WHERE `Lesson_ID` = 97;
UPDATE `Lesson` SET `Staff_Person_ID` = 220 WHERE `Lesson_ID` = 98;
UPDATE `Lesson` SET `Staff_Person_ID` = 210 WHERE `Lesson_ID` = 99;
UPDATE `Lesson` SET `Staff_Person_ID` = 203 WHERE `Lesson_ID` = 100;














/*

FOR LOGIN TABLE:

TOTAL RECORDS = 200 
FOR all STAFF AND STUDENT, PASSWORD = '1234'
OR, IN HASH, AS IT IS STORED: 03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4


*/

INSERT INTO `Login` (`Person_ID`,`Password`) VALUES (1,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(2,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(3,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(4,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(5,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(6,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(7,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(8,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(9,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(10,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(11,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(12,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(13,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(14,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(15,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(16,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(17,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(18,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(19,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(20,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(21,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(22,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(23,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(24,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(25,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(26,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(27,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(28,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(29,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(30,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(31,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(32,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(33,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(34,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(35,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(36,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(37,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(38,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(39,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(40,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(41,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(42,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(43,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(44,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(45,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(46,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(47,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(48,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(49,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(50,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(51,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(52,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(53,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(54,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(55,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(56,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(57,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(58,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(59,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(60,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(61,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(62,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(63,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(64,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(65,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(66,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(67,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(68,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(69,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(70,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(71,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(72,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(73,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(74,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(75,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(76,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(77,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(78,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(79,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(80,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(81,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(82,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(83,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(84,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(85,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(86,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(87,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(88,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(89,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(90,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(91,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(92,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(93,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(94,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(95,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(96,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(97,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(98,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(99,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(100,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4");
INSERT INTO `Login` (`Person_ID`,`Password`) VALUES (201,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(202,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(203,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(204,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(205,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(206,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(207,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(208,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(209,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(210,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(211,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(212,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(213,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(214,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(215,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(216,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(217,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(218,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(219,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(220,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(221,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(222,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(223,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(224,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(225,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(226,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(227,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(228,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(229,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(230,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(231,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(232,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(233,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(234,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(235,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(236,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(237,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(238,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(239,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(240,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(241,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(242,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(243,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(244,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(245,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(246,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(247,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(248,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"),(249,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"), (250,"03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4");;


/*

FOR STUDENTS IN LESSON TABLE:

TOTAL RECORDS = 100
Each student is either present or not present in 1 lesson.


*/
INSERT INTO `Student_In_Lesson` (`Student_ID`,`Lesson_ID`,`IsPresent`) VALUES (1,52,"1"),(2,81,"0"),(3,21,"1"),(4,89,"1"),(5,51,"1"),(6,75,"1"),(7,85,"1"),(8,39,"1"),(9,38,"0"),(10,74,"1"),(11,40,"1"),(12,61,"1"),(13,65,"1"),(14,39,"1"),(15,6,"0"),(16,33,"0"),(17,75,"1"),(18,70,"1"),(19,35,"1"),(20,42,"1"),(21,14,"1"),(22,77,"1"),(23,22,"1"),(24,47,"1"),(25,25,"1"),(26,77,"0"),(27,7,"1"),(28,92,"1"),(29,58,"1"),(30,74,"1"),(31,32,"1"),(32,29,"1"),(33,13,"1"),(34,3,"1"),(35,73,"0"),(36,49,"1"),(37,59,"1"),(38,41,"1"),(39,34,"0"),(40,97,"0"),(41,4,"1"),(42,12,"1"),(43,29,"1"),(44,9,"1"),(45,51,"1"),(46,91,"1"),(47,53,"1"),(48,80,"1"),(49,31,"1"),(50,37,"1"),(51,78,"1"),(52,92,"1"),(53,68,"1"),(54,92,"1"),(55,55,"1"),(56,45,"1"),(57,97,"1"),(58,1,"1"),(59,30,"1"),(60,66,"1"),(61,74,"1"),(62,41,"1"),(63,38,"1"),(64,38,"1"),(65,93,"1"),(66,11,"1"),(67,34,"0"),(68,68,"1"),(69,88,"1"),(70,53,"1"),(71,43,"1"),(72,9,"0"),(73,97,"1"),(74,1,"1"),(75,19,"1"),(76,97,"1"),(77,91,"1"),(78,82,"1"),(79,19,"1"),(80,24,"1"),(81,23,"1"),(82,91,"1"),(83,54,"1"),(84,3,"1"),(85,6,"1"),(86,24,"1"),(87,92,"1"),(88,21,"1"),(89,91,"1"),(90,28,"1"),(91,66,"1"),(92,96,"0"),(93,75,"1"),(94,9,"1"),(95,79,"1"),(96,48,"1"),(97,56,"1"),(98,54,"1"),(99,98,"1"),(100,99,"0");






/*

FOR Credit TABLE:
TOTAL RECORDS = 100
Each student and teacher has a credit record.
Man, some of these people are loaded...

*/
INSERT INTO `Credit` (`Person_ID`,`Balance`,`Last_Top_Up`) VALUES (1,"54.58","2020-12-10"),(2,"503.89","2021-02-12"),(3,"512.62","2020-12-26"),(4,"845.81","2020-11-01"),(5,"122.31","2020-09-10"),(6,"37.99","2020-09-02"),(7,"358.94","2020-09-25"),(8,"610.64","2020-09-17"),(9,"780.57","2020-10-07"),(10,"315.63","2021-02-02"),(11,"840.73","2021-01-31"),(12,"711.43","2021-01-22"),(13,"481.34","2020-12-02"),(14,"359.03","2020-11-17"),(15,"837.63","2021-01-20"),(16,"614.31","2021-03-17"),(17,"723.74","2021-01-12"),(18,"809.54","2020-10-25"),(19,"370.55","2020-12-26"),(20,"247.42","2021-03-03"),(21,"802.66","2021-02-09"),(22,"942.96","2021-03-18"),(23,"840.26","2021-01-08"),(24,"774.67","2021-02-18"),(25,"640.36","2021-03-12"),(26,"186.12","2021-01-26"),(27,"927.10","2020-10-27"),(28,"781.36","2020-12-08"),(29,"943.24","2020-11-15"),(30,"922.36","2021-03-21"),(31,"632.64","2021-02-26"),(32,"730.46","2020-11-11"),(33,"32.05","2021-01-27"),(34,"517.40","2021-01-06"),(35,"428.98","2020-12-08"),(36,"394.05","2020-11-17"),(37,"816.46","2021-01-03"),(38,"710.81","2021-01-11"),(39,"128.98","2021-03-22"),(40,"5.13","2020-10-15"),(41,"591.11","2021-01-17"),(42,"189.46","2021-02-08"),(43,"926.38","2020-11-21"),(44,"904.65","2020-11-11"),(45,"68.81","2020-10-24"),(46,"756.70","2021-02-26"),(47,"33.54","2021-01-22"),(48,"445.74","2020-12-21"),(49,"168.55","2021-02-17"),(50,"838.67","2020-12-30"),(51,"290.32","2020-11-22"),(52,"851.53","2020-10-28"),(53,"413.81","2021-01-26"),(54,"453.95","2021-01-02"),(55,"900.40","2020-12-15"),(56,"631.60","2020-10-04"),(57,"203.56","2021-03-25"),(58,"3.06","2020-09-13"),(59,"920.25","2020-12-12"),(60,"111.58","2020-09-20"),(61,"206.84","2020-09-30"),(62,"996.48","2021-01-13"),(63,"622.42","2020-12-30"),(64,"320.41","2021-02-18"),(65,"982.30","2020-12-10"),(66,"744.35","2020-12-28"),(67,"193.05","2021-01-04"),(68,"308.51","2020-10-22"),(69,"569.68","2020-10-18"),(70,"450.74","2021-02-03"),(71,"756.76","2021-03-26"),(72,"317.34","2020-10-11"),(73,"627.23","2020-11-10"),(74,"902.90","2021-01-09"),(75,"577.45","2021-02-07"),(76,"366.18","2020-10-21"),(77,"106.76","2021-02-18"),(78,"171.82","2020-10-07"),(79,"909.91","2021-01-14"),(80,"689.25","2020-11-25"),(81,"902.33","2020-10-22"),(82,"651.02","2021-03-21"),(83,"56.00","2020-12-08"),(84,"198.34","2020-09-08"),(85,"856.01","2020-09-14"),(86,"761.79","2020-09-05"),(87,"343.23","2021-02-02"),(88,"591.09","2020-09-27"),(89,"186.58","2020-10-31"),(90,"453.15","2020-10-22"),(91,"247.47","2021-03-03"),(92,"612.66","2020-12-05"),(93,"562.11","2021-01-09"),(94,"909.74","2021-02-07"),(95,"219.81","2021-02-15"),(96,"835.72","2021-02-10"),(97,"799.15","2021-01-15"),(98,"624.16","2020-11-07"),(99,"928.82","2021-03-20"),(100,"71.03","2021-02-22");
INSERT INTO `Credit` (`Person_ID`,`Balance`,`Last_Top_Up`) VALUES (201,"22.41","2021-03-30"),(202,"401.39","2020-09-12"),(203,"825.46","2020-12-28"),(204,"718.84","2021-02-08"),(205,"729.36","2021-02-03"),(206,"228.68","2021-03-06"),(207,"481.04","2020-12-14"),(208,"434.73","2020-09-10"),(209,"754.67","2021-02-18"),(210,"713.65","2020-09-09"),(211,"391.81","2021-01-01"),(212,"595.12","2020-12-14"),(213,"896.66","2021-03-24"),(214,"70.46","2021-01-11"),(215,"266.58","2020-09-01"),(216,"988.86","2020-12-11"),(217,"658.12","2021-03-03"),(218,"290.57","2020-12-24"),(219,"762.22","2020-11-18"),(220,"910.53","2020-10-27"),(221,"452.66","2020-09-25"),(222,"276.88","2021-03-22"),(223,"293.51","2020-11-09"),(224,"800.31","2021-03-06"),(225,"665.77","2020-09-17"),(226,"283.64","2020-12-09"),(227,"713.54","2020-12-27"),(228,"768.19","2020-10-10"),(229,"860.59","2020-09-23"),(230,"640.03","2020-11-15"),(231,"442.32","2020-11-30"),(232,"792.07","2021-01-28"),(233,"559.44","2020-12-31"),(234,"12.57","2020-11-06"),(235,"629.78","2020-09-12"),(236,"290.80","2020-12-05"),(237,"564.63","2021-01-23"),(238,"572.38","2021-03-18"),(239,"220.76","2021-02-28"),(240,"764.70","2021-01-18"),(241,"408.49","2021-03-02"),(242,"980.96","2021-03-05"),(243,"836.96","2021-03-19"),(244,"664.88","2020-12-23"),(245,"949.65","2020-11-30"),(246,"747.87","2021-03-11"),(247,"879.06","2021-02-09"),(248,"321.54","2020-10-29"),(249,"753.58","2020-09-07"), (250,"293.58","2020-10-09");



/*
FOR TRANSACTION TABLE:
TOTAL RECORDS = 150

People be buying their school lunches at 1 in the morning...
I mean, why not- less of a queue.

*/


INSERT INTO `Transactions` (`Transaction_ID`,`Person_ID`,`Transaction_Value`,`Date_Of_Transaction`) VALUES (1,1,"36.58","2020-11-20 20:12:59"),(2,2,"57.60","2020-12-08 19:22:21"),(3,3,"13.48","2020-12-03 19:05:24"),(4,4,"82.37","2020-10-25 01:43:12"),(5,5,"50.60","2020-10-11 13:09:23"),(6,6,"98.65","2020-09-04 22:53:29"),(7,7,"59.97","2021-01-29 19:39:46"),(8,8,"22.61","2020-09-28 18:45:08"),(9,9,"97.59","2020-09-22 06:02:41"),(10,10,"85.03","2021-02-13 13:59:03"),(11,11,"26.37","2020-10-05 13:27:01"),(12,12,"11.39","2020-12-24 22:06:56"),(13,13,"47.42","2021-02-13 16:39:44"),(14,14,"0.23","2021-01-19 03:54:30"),(15,15,"80.78","2020-12-02 17:23:47"),(16,16,"82.65","2020-10-27 20:27:20"),(17,17,"7.07","2020-10-22 19:00:35"),(18,18,"47.59","2020-12-20 23:51:34"),(19,19,"89.53","2020-10-05 05:10:08"),(20,20,"64.86","2020-10-09 09:42:41"),(21,21,"65.72","2020-11-11 11:57:54"),(22,22,"81.81","2020-10-29 01:36:04"),(23,23,"71.92","2021-03-23 04:26:35"),(24,24,"62.86","2020-09-02 11:48:09"),(25,25,"16.31","2020-09-19 10:55:07"),(26,26,"27.79","2020-11-17 14:56:36"),(27,27,"8.76","2020-12-13 19:50:19"),(28,28,"76.72","2021-01-19 00:01:19"),(29,29,"25.96","2021-02-18 20:58:58"),(30,30,"41.52","2021-01-13 12:49:38"),(31,31,"48.57","2020-10-29 04:17:17"),(32,32,"96.86","2020-09-27 18:56:19"),(33,33,"74.82","2021-01-06 21:58:50"),(34,34,"3.55","2020-11-18 13:57:23"),(35,35,"37.74","2020-12-14 09:22:02"),(36,36,"76.79","2021-02-25 21:59:24"),(37,37,"97.73","2020-09-26 20:16:21"),(38,38,"4.25","2021-02-02 01:39:14"),(39,39,"75.91","2020-10-13 15:42:23"),(40,40,"56.58","2021-01-20 07:43:36"),(41,41,"38.32","2021-01-09 09:00:47"),(42,42,"68.95","2020-09-17 01:28:08"),(43,43,"32.59","2021-03-11 06:01:30"),(44,44,"51.35","2020-09-24 19:44:35"),(45,45,"40.04","2021-03-10 20:31:05"),(46,46,"29.91","2020-10-22 03:27:23"),(47,47,"93.39","2020-12-13 16:58:57"),(48,48,"26.63","2020-10-31 00:47:35"),(49,49,"22.44","2020-10-13 14:57:16"),(50,50,"91.91","2021-02-13 16:17:46"),(51,51,"44.27","2021-03-14 11:45:29"),(52,52,"59.58","2020-12-08 08:10:11"),(53,53,"69.45","2021-01-19 11:28:08"),(54,54,"99.82","2021-01-10 07:16:09"),(55,55,"63.69","2020-11-08 14:29:18"),(56,56,"61.01","2021-01-21 00:47:27"),(57,57,"60.36","2021-01-07 10:28:54"),(58,58,"28.52","2020-11-17 22:43:35"),(59,59,"32.93","2021-02-07 00:26:13"),(60,60,"42.01","2020-10-10 08:20:47"),(61,61,"45.33","2020-11-28 21:38:19"),(62,62,"64.41","2020-09-16 09:35:03"),(63,63,"13.71","2020-12-29 06:22:17"),(64,64,"41.40","2020-12-04 05:02:52"),(65,65,"55.84","2020-10-30 02:41:43"),(66,66,"83.85","2020-10-08 16:47:17"),(67,67,"25.08","2020-11-02 00:04:14"),(68,68,"22.36","2020-09-05 15:36:49"),(69,69,"52.00","2020-12-22 11:39:03"),(70,70,"67.52","2020-12-11 08:37:47"),(71,71,"96.35","2020-11-24 16:57:16"),(72,72,"76.06","2021-01-20 12:25:22"),(73,73,"68.95","2021-02-02 10:47:07"),(74,74,"65.60","2021-01-28 19:32:24"),(75,75,"84.96","2020-12-01 08:51:08"),(76,76,"38.32","2021-01-28 11:15:14"),(77,77,"26.20","2021-01-07 12:39:40"),(78,78,"68.72","2020-10-20 06:48:05"),(79,79,"64.53","2020-12-25 06:27:51"),(80,80,"80.80","2020-10-07 18:10:40"),(81,81,"90.36","2021-02-14 14:21:07"),(82,82,"1.87","2021-01-22 11:21:47"),(83,83,"41.63","2020-10-10 11:11:53"),(84,84,"13.22","2020-10-16 19:35:08"),(85,85,"51.61","2020-10-09 19:57:22"),(86,86,"33.67","2020-12-13 23:28:39"),(87,87,"95.70","2020-09-08 15:30:22"),(88,88,"47.19","2020-10-20 11:19:04"),(89,89,"92.43","2020-09-04 10:29:04"),(90,90,"36.52","2020-12-20 18:51:05"),(91,91,"39.41","2020-10-16 03:55:33"),(92,92,"99.46","2020-09-19 03:16:37"),(93,93,"29.18","2020-12-31 18:09:40"),(94,94,"73.07","2021-01-21 12:17:33"),(95,95,"13.95","2021-01-24 03:32:47"),(96,96,"85.95","2020-11-11 19:31:37"),(97,97,"32.59","2020-10-06 22:18:55"),(98,98,"75.06","2020-12-24 07:51:05"),(99,99,"16.85","2020-10-27 13:13:27"),(100,100,"41.52","2020-10-25 16:57:45");

INSERT INTO `Transactions` (`Transaction_ID`,`Person_ID`,`Transaction_Value`,`Date_Of_Transaction`) VALUES (102,201,"86.17","2020-12-06 13:41:42"),(103,202,"10.82","2021-02-17 20:54:46"),(104,203,"88.29","2020-10-22 05:08:10"),(105,204,"16.15","2021-02-22 02:29:09"),(106,205,"56.59","2021-02-24 09:13:36"),(107,206,"94.62","2021-03-05 14:58:12"),(108,207,"69.80","2020-11-29 11:54:50"),(109,208,"5.49","2020-11-25 18:37:36"),(110,209,"72.54","2020-09-23 00:35:00"),(111,210,"17.78","2020-10-25 05:29:11"),(112,211,"75.04","2021-01-04 22:44:43"),(113,212,"51.78","2020-09-12 08:27:00"),(114,213,"97.79","2021-02-26 11:39:30"),(115,214,"24.04","2021-01-08 23:52:32"),(116,215,"52.60","2020-12-20 12:43:06"),(117,216,"61.57","2021-02-21 14:19:11"),(118,217,"77.96","2021-03-17 09:40:02"),(119,218,"67.29","2021-01-17 01:09:03"),(120,219,"27.81","2021-01-30 02:54:35"),(121,220,"79.68","2020-11-03 14:12:44"),(122,221,"40.06","2021-02-27 07:49:43"),(123,222,"99.94","2020-12-01 12:54:02"),(124,223,"76.39","2021-01-24 03:44:16"),(125,224,"39.07","2021-03-06 14:27:59"),(126,225,"27.22","2020-09-16 04:35:06"),(127,226,"61.49","2021-01-27 13:18:08"),(128,227,"66.51","2021-02-19 13:33:45"),(129,228,"86.84","2020-12-29 16:44:23"),(130,229,"85.64","2020-12-11 07:22:47"),(131,230,"79.54","2020-12-31 00:37:07"),(132,231,"88.17","2021-02-02 18:39:10"),(133,232,"16.89","2020-11-07 21:42:34"),(134,233,"87.54","2020-12-13 18:35:54"),(135,234,"62.46","2021-03-05 13:58:31"),(136,235,"25.17","2020-09-04 21:01:17"),(137,236,"67.22","2020-10-26 19:11:32"),(138,237,"7.11","2020-10-21 23:42:46"),(139,238,"39.61","2020-09-04 06:51:03"),(140,239,"52.61","2021-01-13 18:04:22"),(141,240,"42.48","2021-02-13 18:13:42"),(142,241,"69.00","2020-09-16 18:28:08"),(143,242,"86.28","2020-12-07 17:22:30"),(144,243,"22.28","2020-10-31 17:13:47"),(145,244,"65.74","2021-03-06 16:26:36"),(146,245,"99.75","2020-12-16 11:47:31"),(147,246,"67.56","2020-12-07 00:10:09"),(148,247,"8.78","2020-10-06 00:11:06"),(149,248,"93.59","2020-10-18 19:33:16"),(150,249,"2.00","2021-01-13 12:38:03"), (151,250,"1.00","2021-01-03 11:32:39");



/*
FOR STAFF TABLE:
TOTAL RECORDS = 50

*/

INSERT INTO `Staff` (`Person_ID`,`Salary`,`Role`,`Education_And_Qualification`,`Work_Experience`,`National_Insurance`,`Tax_Code`,`Bank_Details`,`Department_ID`) VALUES (201,"31277.20","Teacher","non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper","Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna","SO061905V","BR1250","Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat.",6),(202,"52546.59","Teacher","ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi","turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia","PM510539G","BR1250","ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus",5),(203,"29851.43","Teacher","tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a","vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at,","BF615177X","BR1250","fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus",3),(204,"35281.23","Teacher","Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non","luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet","QU704216Z","D01250","lobortis. Class aptent taciti sociosqu ad litora torquent per conubia",2),(205,"49539.85","Teacher","ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus","elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna","IV597841I","BR1250","ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices,",6),(206,"33670.03","Teacher","Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus.","ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam","LG428860V","BR1250","arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida",6),(207,"49706.14","Teacher","nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor.","nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus","IK233854Z","L1250","convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit",5),(208,"49191.35","Teacher","Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat","dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum","DA705257X","D01250","Sed et libero. Proin mi. Aliquam gravida mauris ut mi.",9),(209,"35592.17","Teacher","primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis.","est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in","LJ080639A","L1250","Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet",1),(210,"46451.55","Teacher","imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis","tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed","JQ239843S","D01250","ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit",4),(211,"31364.82","Teacher","tortor at risus. Nunc ac sem ut dolor dapibus gravida.","habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam","VV622144A","D01250","lorem, sit amet ultricies sem magna nec quam. Curabitur vel",7),(212,"27626.03","Teacher","tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper","eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit","HR458134N","L1250","eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat",8),(213,"24598.32","Teacher","elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum","semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac","FQ970531O","BR1250","ut odio vel est tempor bibendum. Donec felis orci, adipiscing",2),(214,"20430.61","Teacher","facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa","nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui,","IP766370K","BR1250","Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem,",8),(215,"29163.82","Teacher","scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque","habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut","RC999467Q","BR1250","turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla",9),(216,"52465.68","Teacher","sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin","cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio.","WW709138S","BR1250","velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat,",2),(217,"18083.31","Teacher","felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio","Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim","DF446996D","L1250","eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed",4),(218,"44851.16","Teacher","iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada","condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus","FE628709F","L1250","Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent",2),(219,"19730.84","Teacher","dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris,","convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper","LQ912221S","L1250","Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio.",4),(220,"25021.78","Teacher","cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin","neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in,","DN642647F","D01250","sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci",3),(221,"46764.60","Teacher","purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi","tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis","CU359396D","BR1250","vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non",8),(222,"42687.48","Teacher","diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam","non enim. Mauris quis turpis vitae purus gravida sagittis. Duis","AE387760B","BR1250","egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere",7),(223,"35722.22","Teacher","commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit","purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel,","ZE421606A","BR1250","vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy",9),(224,"30439.58","Teacher","nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod","dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci","DY938711N","BR1250","magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna.",7),(225,"40777.85","Teacher","Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet","Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat","EL787872P","L1250","Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec,",6),(226,"41838.21","Teacher","quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec","lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam","IC422937V","D01250","lobortis risus. In mi pede, nonummy ut, molestie in, tempus",2),(227,"43126.31","Teacher","Praesent eu dui. Cum sociis natoque penatibus et magnis dis","sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan","QC001702Z","D01250","semper, dui lectus rutrum urna, nec luctus felis purus ac",6),(228,"18994.59","Teacher","mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id,","ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat","DE180785S","D01250","non nisi. Aenean eget metus. In nec orci. Donec nibh.",10),(229,"50471.28","Teacher","tellus id nunc interdum feugiat. Sed nec metus facilisis lorem","rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam","YO565037L","L1250","tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel,",10),(230,"34512.35","Teacher","a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque","et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae,","GN856152Y","BR1250","Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris.",10),(231,"46783.48","Teacher","massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum","turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada","WB343227Q","BR1250","faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend.",1),(232,"43609.41","Teacher","elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi","erat semper rutrum. Fusce dolor quam, elementum at, egestas a,","VF041035B","BR1250","Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum",10),(233,"44288.99","Teacher","Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor","ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies","ED236125H","D01250","Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor",3),(234,"34727.53","Teacher","quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce","vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor.","IJ502050P","D01250","egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem",7),(235,"32982.83","Teacher","sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in","aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus","GE851112L","L1250","nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam",5),(236,"39426.20","Teacher","Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus","risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac","BX819152L","L1250","dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent",3),(237,"32420.74","Teacher","et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida","egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend.","CE867990S","D01250","ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida",10),(238,"40326.25","Teacher","consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna","mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut","OB535988M","L1250","iaculis odio. Nam interdum enim non nisi. Aenean eget metus.",4),(239,"54965.41","Teacher","ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu,","lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at","VD368251D","L1250","nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat.",4),(240,"34091.08","Teacher","Cras eget nisi dictum augue malesuada malesuada. Integer id magna","ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh.","DN500302W","L1250","gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit",7),(241,"47170.06","Teacher","auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede,","non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra","DU086332S","D01250","enim, gravida sit amet, dapibus id, blandit at, nisi. Cum",1),(242,"40572.02","Teacher","Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;","euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam","EP559305O","BR1250","sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra,",7),(243,"33755.49","Teacher","orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec","eu tellus eu augue porttitor interdum. Sed auctor odio a purus.","NX479467M","BR1250","eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum.",1),(244,"51337.11","Teacher","imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec","ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo","GA638702S","BR1250","Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet",4),(245,"54301.28","Teacher","Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero","in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris","SY202285O","D01250","Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat",4),(246,"38149.81","Teacher","rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci.","Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu,","HC119243N","D01250","nulla. In tincidunt congue turpis. In condimentum. Donec at arcu.",3),(247,"41459.15","Teacher","eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae","Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula","MI479239D","L1250","est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse",6),(248,"43470.11","Teacher","magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor.","ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare","ZV336441H","D01250","et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien,",7),(249,"40944.65","Teacher","vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget","fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci","KV267241E","D01250","sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla",5),(250,"18456.07","Teacher","faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae","Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu.","EZ235712K","D01250","non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum",7);



/*

SET DEPT LEADERS
*/

UPDATE Staff
SET LeaderOf = 1
WHERE Person_ID = 209;
UPDATE Staff
SET LeaderOf = 2
WHERE Person_ID = 216;
UPDATE Staff
SET LeaderOf = 3
WHERE Person_ID = 246;
UPDATE Staff
SET LeaderOf = 4
WHERE Person_ID = 210;
UPDATE Staff
SET LeaderOf = 5
WHERE Person_ID = 202;
UPDATE Staff
SET LeaderOf = 6
WHERE Person_ID = 201;
UPDATE Staff
SET LeaderOf = 7
WHERE Person_ID = 211;
UPDATE Staff
SET LeaderOf = 8
WHERE Person_ID = 212;
UPDATE Staff
SET LeaderOf = 9
WHERE Person_ID = 208;
UPDATE Staff
SET LeaderOf = 10
WHERE Person_ID = 229;














/*Patch to fix foreign keys:
Run the following code in PHPMyAdmin and everything should be good!
This adds test data for.

Delete bad data.*/

DELETE FROM student_in_lesson;
DELETE FROM assessment_grade;
DELETE FROM subject_grade;
DELETE FROM lesson;


/*Detail*/ 
INSERT INTO `Subject_Grade` (`Subject_ID`,`Student_ID`,`CurrentYear`,`Grade`,`Feedback`) VALUES 
(1,1,11,"6","Well written! Great spelling."),
(2,1,11,"4","Sewing not very good. Designs and written work good quality."),
(3,1,11,"4","Great map work. Need to revise case studies."),
(4,1,11,"8","Brilliant final project. Great use of colour."),
(5,1,11,"4","Practise fractions."),
(6,1,11,"6","Please practise forces and vectors."),
(7,1,11,"5","Great listening and writing- practise pronunciation."),
(8,1,11,"4","No comment."),
(9,1,11,"4","Good work. Practise the case studies."),
(10,1,11,"1","Revise arguements/teachings."),
(14,1,11,"4","Please practise PHP to access higher marks. Good job overall!"),
(13,1,11,"5","Great use of diagrams.");

INSERT INTO `Subject_Grade` (`Subject_ID`,`Student_ID`,`CurrentYear`,`Grade`,`Feedback`) VALUES 
(1,2,10,"8","Improve analysis skills to access higher marks- see assessment details."),
(2,2,10,"7","Great designs."),
(3,2,10,"7","Work on timing."),
(11,2,10,"8","Improve performance skills."),
(15,2,10,"9","Great work- keep this up!"),
(5,2,10,"5","Practise algebra!");

update assessment set Assessment_Name = "Chapter analysis" where Assessment_ID = 9;
update assessment set Assessment_Name = "Food Tech Coursework" where Assessment_ID = 19;
update assessment set Assessment_Name = "Rivers and Erosion Presentation" where Assessment_ID = 29;
update assessment set Assessment_Name = "History of Art" where Assessment_ID = 39;
update assessment set Assessment_Name = "Representing Data Coursework" where Assessment_ID = 49;
update assessment set Assessment_Name = "Physics Experiment Diary" where Assessment_ID = 59;
update assessment set Assessment_Name = "French Report- my holidays" where Assessment_ID = 69;
update assessment set Assessment_Name = "Teamwork assay" where Assessment_ID = 79;
update assessment set Assessment_Name = "WW2 Presentation" where Assessment_ID = 89;
update assessment set Assessment_Name = "RS written Report" where Assessment_ID = 99;
update assessment set Assessment_Name = "Final Presentation" where Assessment_ID = 109;
update assessment set Assessment_Name = "Elements Presentation" where Assessment_ID = 119;
update assessment set Assessment_Name = "Reproduction Presentation" where Assessment_ID = 129;
update assessment set Assessment_Name = "Programming a web app essay" where Assessment_ID = 139;
update assessment set Assessment_Name = "Spanish Verbs essay" where Assessment_ID = 149;

update assessment set Teacher_Comments = "No notes" where Assessment_ID = 9;
update assessment set Teacher_Comments = "Remember to bring your recipes and equipment!" where Assessment_ID = 19;
update assessment set Teacher_Comments = "No notes" where Assessment_ID = 29;
update assessment set Teacher_Comments = "No notes" where Assessment_ID = 39;
update assessment set Teacher_Comments = "No notes" where Assessment_ID = 49;
update assessment set Teacher_Comments = "You are to hand in your diaries, and they must be updated with all 17 experiments." where Assessment_ID = 59;
update assessment set Teacher_Comments = "No notes" where Assessment_ID = 69;
update assessment set Teacher_Comments = "No notes" where Assessment_ID = 79;
update assessment set Teacher_Comments = "No notes" where Assessment_ID = 89;
update assessment set Teacher_Comments = "No notes" where Assessment_ID = 99;
update assessment set Teacher_Comments = "No notes" where Assessment_ID = 109;
update assessment set Teacher_Comments = "No notes" where Assessment_ID = 119;
update assessment set Teacher_Comments = "No notes" where Assessment_ID = 129;
update assessment set Teacher_Comments = "No notes" where Assessment_ID = 139;
update assessment set Teacher_Comments = "No notes" where Assessment_ID = 149;


update assessment set Assessment_Name = "Chapter analysis" where Assessment_ID = 7;
update assessment set Assessment_Name = "Food Tech Coursework" where Assessment_ID = 17;
update assessment set Assessment_Name = "Sustainability Presentation" where Assessment_ID = 27;
update assessment set Assessment_Name = "History of Art" where Assessment_ID = 37;
update assessment set Assessment_Name = "Representing Data Coursework" where Assessment_ID = 47;
update assessment set Assessment_Name = "Physics Experiment Diary" where Assessment_ID = 57;
update assessment set Assessment_Name = "French Report- my holidays" where Assessment_ID = 67;
update assessment set Assessment_Name = "Teamwork assay" where Assessment_ID = 77;
update assessment set Assessment_Name = "WW2 Presentation" where Assessment_ID = 87;
update assessment set Assessment_Name = "RS written Report" where Assessment_ID = 97;
update assessment set Assessment_Name = "Final Presentation" where Assessment_ID = 107;
update assessment set Assessment_Name = "Catalysts Presentation" where Assessment_ID = 117;
update assessment set Assessment_Name = "Reproduction Presentation" where Assessment_ID = 127;
update assessment set Assessment_Name = "Creating a database essay" where Assessment_ID = 137;
update assessment set Assessment_Name = "Spanish Nouns essay" where Assessment_ID = 147;

update assessment set Teacher_Comments = "No notes" where Assessment_ID = 7;
update assessment set Teacher_Comments = "Remember to bring your recipes and equipment!" where Assessment_ID = 17;
update assessment set Teacher_Comments = "No notes" where Assessment_ID = 27;
update assessment set Teacher_Comments = "No notes" where Assessment_ID = 37;
update assessment set Teacher_Comments = "No notes" where Assessment_ID = 47;
update assessment set Teacher_Comments = "You are to hand in your diaries, and they must be updated with all 17 experiments." where Assessment_ID = 57;
update assessment set Teacher_Comments = "No notes" where Assessment_ID = 67;
update assessment set Teacher_Comments = "No notes" where Assessment_ID = 77;
update assessment set Teacher_Comments = "No notes" where Assessment_ID = 87;
update assessment set Teacher_Comments = "No notes" where Assessment_ID = 97;
update assessment set Teacher_Comments = "No notes" where Assessment_ID = 107;
update assessment set Teacher_Comments = "No notes" where Assessment_ID = 117;
update assessment set Teacher_Comments = "No notes" where Assessment_ID = 127;
update assessment set Teacher_Comments = "No notes" where Assessment_ID = 137;
update assessment set Teacher_Comments = "No notes" where Assessment_ID = 147;



/*ADD ASSESSMENT GRADES FOR STUDENT 1 AND 2*/
INSERT INTO `Assessment_Grade` (`Assessment_ID`,`Student_ID`,`Grade`,`Feedback`) VALUES 
(9,1,"6","Very well done!"),
(19,1,"4","Needs Improvement."),
(29,1,"3","Great confidence and clear voice, but subject matter incorrect."),
(39,1,"6","Well presented."),
(49,1,"6","No comments."),
(59,1,"7","No comments."),
(69,1,"6","Good work."),
(79,1,"8","No comments."),
(89,1,"7","Well researched."),
(99,1,"7","Good job!"),
(109,1,"5","Good presentation- work on timings, and slides could be clearer."),
(119,1,"5","No comments."),
(129,1,"6","No comments."),
(139,1,"4","No comments."),
(149,1,"7","Great verbs used!"),
(7,2,"6","Very well done!"),
(17,2,"6","Needs Improvement."),
(27,2,"7","Requires more research."),
(37,2,"6","Well presented- needs more detail."),
(47,2,"8","No comments."),
(57,2,"7","No comments."),
(67,2,"8","Good work."),
(77,2,"8","No comments."),
(87,2,"9","Well researched."),
(97,2,"7","Good job!"),
(107,2,"8","Good presentation!"),
(117,2,"5","No comments."),
(127,2,"6","No comments."),
(137,2,"8","No comments."),
(147,2,"7","Great nouns used!");




INSERT INTO `Lesson` (`Lesson_ID`,`Class_ID`,`Subject_ID`,`Classroom_ID`,`Lesson_Date`, `Staff_Person_ID`) VALUES 
(1,9,1,1,"2021-04-26 9:00:00", 201),
(2,9,2,2,"2021-04-26 10:00:00", 202),
(3,9,3,3,"2021-04-26 11:00:00", 203),
(4,9,4,4,"2021-04-26 13:00:00", 215),
(5,9,6,5,"2021-04-26 14:00:00", 201),
(6,9,5,6,"2021-04-27 9:00:00", 205),
(7,9,6,7,"2021-04-27 10:00:00", 207),
(8,9,1,8,"2021-04-27 11:00:00", 201),
(9,9,2,9,"2021-04-27 13:00:00", 202),
(10,9,15,10,"2021-04-27 14:00:00", 201),
(11,9,5,11,"2021-04-28 9:00:00", 206),
(12,9,10,12,"2021-04-28 10:00:00", 211),
(13,9,1,13,"2021-04-28 11:00:00", 201),
(14,9,8,14,"2021-04-28 13:00:00", 209),
(15,9,6,15,"2021-04-28 14:00:00", 207),
(16,9,3,16,"2021-04-29 9:00:00", 203),
(17,9,5,17,"2021-04-29 10:00:00", 206),
(18,9,9,18,"2021-04-29 11:00:00", 210),
(19,9,11,19,"2021-04-29 13:00:00", 212),
(20,9,14,20,"2021-04-29 14:00:00", 217),
(21,9,12,1,"2021-04-30 9:00:00", 214),
(22,9,13,2,"2021-04-30 10:00:00", 213),
(23,9,7,3,"2021-04-30 11:00:00", 209),
(24,9,4,4,"2021-04-30 13:00:00", 216),
(25,9,6,5,"2021-04-30 14:00:00", 208),
(26,7,4,5,"2021-04-26 9:00:00", 221),
(27,7,2,6,"2021-04-26 10:00:00", 222),
(28,7,3,7,"2021-04-26 11:00:00", 223),
(29,7,1,8,"2021-04-26 13:00:00", 224),
(30,7,6,9,"2021-04-26 14:00:00", 225),
(31,7,5,10,"2021-04-27 9:00:00", 226),
(32,7,6,11,"2021-04-27 10:00:00", 227),
(33,7,1,11,"2021-04-27 11:00:00", 228),
(34,7,15,12,"2021-04-27 13:00:00", 229),
(35,7,15,13,"2021-04-27 14:00:00", 230),
(36,7,5,14,"2021-04-28 9:00:00", 231),
(37,7,10,15,"2021-04-28 10:00:00", 231),
(38,7,1,16,"2021-04-28 11:00:00", 232),
(39,7,8,17,"2021-04-28 13:00:00", 233),
(40,7,6,18,"2021-04-28 14:00:00", 234),
(41,7,3,19,"2021-04-29 9:00:00", 235),
(42,7,13,20,"2021-04-29 10:00:00", 236),
(43,7,9,1,"2021-04-29 11:00:00", 201),
(44,7,11,2,"2021-04-29 13:00:00", 238),
(45,7,14,3,"2021-04-29 14:00:00", 239),
(46,7,12,4,"2021-04-30 9:00:00", 240),
(47,7,13,5,"2021-04-30 10:00:00", 241),
(48,7,7,6,"2021-04-30 11:00:00", 245),
(49,7,4,18,"2021-04-30 13:00:00", 250),
(50,7,6,20,"2021-04-30 14:00:00", 202);


INSERT INTO `Student_In_Lesson` (`Student_ID`,`Lesson_ID`,`IsPresent`) VALUES 
(1,1,"1"),
(1,2,"0"),
(1,3,"1"),
(1,4,"1"),
(1,5,"1"),
(1,6,"1"),
(1,7,"1"),
(1,8,"1"),
(1,9,"1"),
(1,10,"1"),
(1,11,"1"),
(1,12,"1"),
(1,13,"0"),
(1,14,"0"),
(1,15,"0"),
(1,16,"0"),
(1,17,"0"),
(1,18,"0"),
(1,19,"0"),
(1,20,"0"),
(1,21,"0"),
(1,22,"0"),
(1,23,"0"),
(1,24,"0"),
(1,25,"0"),
(2,26,"1"),
(2,27,"0"),
(2,28,"1"),
(2,29,"1"),
(2,30,"1"),
(2,31,"1"),
(2,32,"1"),
(2,33,"1"),
(2,34,"1"),
(2,35,"1"),
(2,36,"1"),
(2,37,"1"),
(2,38,"0"),
(2,39,"0"),
(2,40,"0"),
(2,41,"0"),
(2,42,"0"),
(2,43,"0"),
(2,44,"0"),
(2,45,"0"),
(2,46,"0"),
(2,47,"0"),
(2,48,"0"),
(2,49,"0"),
(2,50,"0");


