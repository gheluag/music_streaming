drop table if exists `vk`;
create database if not exists `vk`;

use `vk`;

drop database if exists `users`;
CREATE table if not exists users (
	id SERIAL PRIMARY KEY,
    firstname VARCHAR(100),
    lastname VARCHAR(100) COMMENT 'Фамилия', 
    email VARCHAR(100) UNIQUE,
    password_hash varchar(100),
    phone BIGINT,
    is_deleted bit default 0,

    INDEX users_firstname_lastname_idx(firstname, lastname)
);

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('1', 'Minnie', 'Ferry', 'tess32@example.com', '2048c5a09e083d13f023cd6931e79ac6cc6454a0', '79118188953', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('2', 'Paula', 'Vandervort', 'joelle47@example.net', 'a4c8ae4b0dcd68e5b6ae19b17a43f6b511d50906', '79282965973', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('3', 'Lilly', 'Shanahan', 'schowalter.elenor@example.org', '526c260daa9dd67789ce62d096f3416ad2afb57a', '79604991549', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('4', 'Ethel', 'Bins', 'ronaldo.mccullough@example.com', '8e94273c9669d0806ec7307ca0ad244bdb71d0e8', '79609835499', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('5', 'Noelia', 'Kohler', 'xdonnelly@example.com', '20399d8e6ef6ef7a9e092a2baf932fd23d482bec', '79405111786', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('6', 'Mariana', 'Denesik', 'dorothea.metz@example.org', 'aafa64ac4bb66c3ee8a9f39481bf51c65f39f4c0', '79685729853', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) values ('7', 'Beatrice', 'Stroman', 'hrunolfsdottir@example.com', '389a1243454586153b52fa46450aca70cf175273', '79118724606', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('8', 'Magnolia', 'Wilderman', 'zwitting@example.com', '90e5dca3a642f0ad540f5a537ee17282355b2f21', '79505293763', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('9', 'Cordie', 'Kub', 'margarette70@example.net', 'f2856abf2de2a36a9eae33244242c0ec62b69cda', '79594551936', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('10', 'Russ', 'Marvin', 'lleuschke@example.com', '8a72fc45a779faae6ce4a72e37de5286efd2100b', '79183853300', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('11', 'Heidi', 'Dietrich', 'bdare@example.net', '6048fe7ad1315bab21e24cd9bfe646a919dc35ca', '79613937169', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('12', 'Deanna', 'Treutel', 'omari50@example.org', '4dc1bd2ebc2b37d3fef56ba7c4fafb0ca504a09f', '79444675929', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('13', 'Nestor', 'Quigley', 'hmitchell@example.net', '888e3bfc93d5ae332077e5648d221c5f4b6380bc', '79720663715', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('14', 'Estell', 'Lowe', 'wisoky.rhianna@example.net', 'e37d4cdaf38a11c02944d4102f5ddeaa2694c68b', '79901268791', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('15', 'Kailee', 'Dickens', 'linnie62@example.org', 'a28abe0bdf02df5af85563dd350b7192140d6201', '79710130960', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('16', 'Alison', 'Donnelly', 'beahan.roxane@example.com', '88c5100c0d3558000cd2b48cdd49e016a9e6579b', '79788953888', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('17', 'Sammy', 'Konopelski', 'zmclaughlin@example.org', '9d7388f8e841de91ebf2cb1ebedcf7c8c95ac04c', '79737777924', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('18', 'Julianne', 'Bartoletti', 'gleichner.malika@example.com', '2a4c555b6ef6c86ec55f1812c92b91152598dc3f', '79085730514', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('19', 'Brice', 'Rau', 'beulah.crooks@example.net', '929654641668184b7b1f3d88e4d320c35c91d356', '79076568740', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('20', 'Carleton', 'Hagenes', 'mjacobson@example.org', '89ef03a580da84edef2deead0dbb46b0fa1e3459', '79589858134', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('21', 'Caden', 'Weissnat', 'shermiston@example.com', 'c31354d1e78e1313b7d5530f1eb2d93257f3471a', '79913983384', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) values ('22', 'Abe', 'Carter', 'gutkowski.shyanne@example.com', 'ef2d1c8bde81f4f4562300df1021b36faf14891c', '79854122883', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('23', 'Dayna', 'Will', 'lenore92@example.net', '29c83ed7312bda017d254d584ecadb65b5408985', '79499124987', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('24', 'Randall', 'Bednar', 'chasity.haley@example.org', '9b9be3d0d89ef55a90b2c95b5613025328bbbf55', '79391795219', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('25', 'Gerry', 'Leannon', 'celine55@example.org', '5b2d76ea65ecf54678e1cc0f3847ef77e10e5f17', '79810842270', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('26', 'Otho', 'Thiel', 'ibashirian@example.org', 'f19fe4ed772e06e3de32ab31d7ae77279ca74786', '79729176001', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('27', 'Helena', 'Pouros', 'marquardt.garret@example.net', 'c2a7ccc6d1359ebaef951490f9a4ad3cf2890fbc', '79776293744', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('28', 'Lucas', 'D\'Amore', 'aurelia.wiegand@example.org', '81f598ffa2548fbea6ca638d8b8aa8e3a8e237e8', '79597135995', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('29', 'Leopold', 'Bode', 'kirk54@example.org', '37ba8a0b8c043158a8aaa0d409e2d5bec4290582', '79547694882', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('30', 'Jordi', 'Weimann', 'kgusikowski@example.net', 'b8ff47b9810bcc6c7706a1f69d4ac7f22718f6f6', '79846751323', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('31', 'Cheyanne', 'Davis', 'shawn.reinger@example.net', 'baf840ecab42405bf64bec3d95f5ccacb8f82ab3', '79269164481', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('32', 'Kaden', 'Lehner', 'jacky.stanton@example.com', '79385ac479886a57dade96607add29229676580f', '79115777898', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('33', 'Linnie', 'Pagac', 'ayana.carroll@example.com', '452e17f6aedfd25306d47f3522867643f98dee1d', '79097298604', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('34', 'Anthony', 'Price', 'deshaun.ward@example.org', 'bc6dcb2aad5d07250105bf6b1245b4c72c88ce98', '79266010547', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('35', 'Tessie', 'Bernier', 'verda50@example.net', '6741b9e17991e41c28733e9063c2a7d3080a5c1b', '79341690702', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('36', 'Glennie', 'Abernathy', 'isaac86@example.net', 'a47070a4956a35d0c3a11fe3a45dadd0a389fc57', '79078580771', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('37', 'Ludie', 'Turner', 'bryon23@example.net', 'c181976b1765b786957c2781d647453e69a08f88', '79729249960', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('38', 'Billie', 'Smith', 'nayeli.kling@example.com', '4667d9744484ecd27e038828c468d82acceb1a4d', '79224538491', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('39', 'Abbey', 'Moen', 'hand.iliana@example.com', '0cd8d47f95895ef11988d0995a2c2dec7dd5410a', '79639384351', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('40', 'Markus', 'Klein', 'wilburn12@example.net', '863f3d47b7f78eba11852eab2897772b9584f661', '79722959318', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('41', 'Maximillia', 'Pagac', 'agustina60@example.net', 'd7b8cff663ea8f64ee43d7c20d0bbb4bf60ee2ee', '79726205696', '1');
INSERt INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('42', 'Eugenia', 'Maggio', 'hector60@example.com', '7f8b13f1d8f049ed952224555dcddbb4229b2d3a', '79610003908', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('43', 'Anais', 'Gerlach', 'janelle.shields@example.net', '11feb8bdd4c43b539c54ac8ead4898de5b006401', '79780687096', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('44', 'Jennie', 'Kreiger', 'jlegros@example.net', '219f4dbabf7a23126f26971d6e0db084eb7fe85c', '79741305056', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('45', 'Casimer', 'Zboncak', 'schamberger.vito@example.org', '71d1d1ada1291217409c06eebee9a3f612a5cce8', '79705343238', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('46', 'Hudson', 'Boyle', 'delpha75@example.org', '154606af7aeac72e31f8a0a9690c723b88679032', '79030136689', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('47', 'Hortense', 'Hettinger', 'estevan.hettinger@example.com', '3d61cbd6d4e42e5b9113666f487c072abf735a5c', '79207625673', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('48', 'Rory', 'Jacobson', 'jillian.morar@example.com', '3b8c999b027232932aa85dfd2845dfc03035b494', '79044630458', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('49', 'Brock', 'Powlowski', 'ulices49@example.com', 'df254e5374fdcec5fe56413080610d4c8b1f99ea', '79134912770', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('50', 'Devonte', 'Gaylord', 'lauryn.huels@example.net', '815701edc4dcc52da24194edd8de557d56771078', '79797883156', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('51', 'Damien', 'Gulgowski', 'amckenzie@example.org', '25ff98b15ff98fcc093256cba43961c71a8d8bef', '79656213427', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('52', 'Roel', 'Nikolaus', 'alexandra.bogisich@example.org', 'fb53b31bf82bfbdbcbdf9a2603f2e017ae4539a8', '79222351169', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('53', 'Lukas', 'Gaylord', 'jsporer@example.net', '55b9b53698c8b1139bbe425302be88507c9d81ba', '79835534428', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('54', 'Randi', 'Lemke', 'yasmine.heaney@example.org', '49797b9cc40413bf308b45ba7c3e7ef856878f44', '79910512007', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('55', 'Kaia', 'Farrell', 'kimberly.leuschke@example.com', '8d3fbae874484d5d81df228db4ed0727d3850c5a', '79245093365', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('56', 'Vernie', 'Hilll', 'go\'conner@example.org', '3097cc050e8f28396739b2231bc87e85cae89058', '79719098653', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('57', 'Jeanne', 'Klein', 'xbeier@example.net', '0beb2ea20e5f52cd6bd9c1ed5080a9329561bd59', '79958093645', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('58', 'Aletha', 'Altenwerth', 'barry50@example.com', '347c591893869644e5a4a040935466d4b9c89c2e', '79986935804', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('59', 'Delta', 'Ward', 'nglover@example.org', 'c40af6a08af55662e6f5a918ec4908c16d0f837d', '79416289743', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('60', 'Matteo', 'Beer', 'cullrich@example.net', 'aeb87c0fb910b063b239b639911caa574c103ca7', '79113891363', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('61', 'Santos', 'Cremin', 'parker.huel@example.com', '77b9cefdcf654399185586f957426766e3c90c37', '79091254008', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('62', 'Leopoldo', 'Reichert', 'michaela.ankunding@example.com', '8679d439639ddbb5a2c3748471048ee6b035ce7a', '79659470037', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('63', 'Forest', 'Fisher', 'bo15@example.net', 'ace6d17df73ac6d63ad1bbc375e32e716d3afd61', '79792351345', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('64', 'Bryon', 'Deckow', 'denesik.tamara@example.org', 'e14bfff6e4c9a4dd822f436156b5a332fe1e9b71', '79828473775', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('65', 'Lilyan', 'Hauck', 'fdavis@example.com', 'c8d45661e234c9a962702d9fac68351c28b11a0f', '79061093460', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('66', 'Gavin', 'Pollich', 'wisozk.ara@example.com', '4cd41cff7f030b87ca4714cc1a42b2ecc0ee64b2', '79990359804', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('67', 'Jessica', 'Thompson', 'wendy90@example.com', '3e172b4b0a5ed405504a82284f182e4fc03e6d21', '79574956133', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('68', 'Adrien', 'Carroll', 'trantow.wayne@example.net', '4275fa81df5f49b57d77ae59a5bbe9ab0ee339b8', '79044574809', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('69', 'Chauncey', 'Baumbach', 'jast.roxanne@example.net', '1d8dead731b416d984e4a9ff3ebee4c704f5d8c1', '79899085865', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('70', 'Oswaldo', 'Zieme', 'crodriguez@example.org', '0b38933e5b3412e2422bfe00b769a3d81e1b2ab1', '79172866645', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('71', 'Raegan', 'Marks', 'ad\'amore@example.net', 'a28428fa0e6d3d1f802d458ecc2f9d06bae7c23d', '79331374102', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('72', 'Jonathon', 'Stamm', 'reichel.rhoda@example.net', 'a84cc502c528feb9ff62741dc96147e6a3092ad1', '79945756962', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('73', 'Arlie', 'Kulas', 'opfannerstill@example.net', '7cbf9d9863be2abff88b07455da845c0011ecd95', '79012931908', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('74', 'Santina', 'Stokes', 'pconroy@example.net', 'f3b98f4818be5c9e0298648150cf230af2cb9028', '79382429727', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('75', 'Orlando', 'Medhurst', 'torrey.daniel@example.com', '348d09525cfe87d15b5bd43431c24a6c5632b2d5', '79518138260', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('76', 'Howell', 'Hilpert', 'zdibbert@example.net', 'f523d6f8b5c5331a587582dba74bfdcf806d3f73', '79499147134', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('77', 'Rigoberto', 'Hauck', 'violet58@example.org', 'bca90bcebf5a0e99533719f90a88c628c4d8a46c', '79967565782', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('78', 'Dewitt', 'Wehner', 'jeffery.ziemann@example.org', '2fb397297124e6510b41959561476a1b508fcf29', '79290776503', '0');
INSERt INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('79', 'Josh', 'Reichert', 'fidel.wisoky@example.net', 'fe805ec270e980c49233fbafe71cb7087c6a843d', '79156918441', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('80', 'Stacy', 'Huels', 'kovacek.gia@example.org', '40d9da3984ff4e23b5c8d1454d89004923316bf5', '79262757457', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('81', 'Brycen', 'Daugherty', 'armstrong.sid@example.net', '3d91b801e52440d67bbb9ab46523cd3d688e8510', '79262115185', '0');
INSERT INTo `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('82', 'D\'angelo', 'Turcotte', 'ebert.leslie@example.net', 'b664811f7a96e199fa062f7148003a80cd686ccf', '79954466837', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('83', 'Terrell', 'Considine', 'vesta.hamill@example.com', '474e89dede50fe2469f33c923146977ebac0e276', '79174308598', '0');
INSERt INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('84', 'Summer', 'Bartell', 'hdenesik@example.net', 'b8055b55d2627b83a7b61e51dabb018aa3b631b0', '79871843275', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('85', 'Shanel', 'Hudson', 'devante54@example.org', '1aeb4723994aa1d0d102a6fe628a65b730df5f1d', '79480815587', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('86', 'Margaretta', 'Koepp', 'rruecker@example.org', 'f89e4db8a2722a1dfd394f9ba59a0b190bf5f922', '79219854565', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('87', 'Angelina', 'Kub', 'kaitlin68@example.org', '4d68fa2238645c2e3dc032e4b179209d32d8bd25', '79649803357', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('88', 'Orlando', 'Buckridge', 'paul25@example.org', '4b837cabc80e306660365f664622dc3685cb9cdc', '79435624087', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('89', 'Christy', 'Gleichner', 'giovanny02@example.net', 'e833be317c2087959c7e7e2881ff2ed58141b258', '79919408631', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('90', 'Nathen', 'Koepp', 'alanna31@example.com', '46fc69c78acb4ae59473305154dfa5db6d37382b', '79388082692', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('91', 'Greta', 'Connelly', 'jerry.collier@example.org', '7b6c8e495e5300f4f142036bbdb528b8a54cce31', '79675824320', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('92', 'Leonel', 'Bernier', 'dubuque.clemens@example.net', '6043d2315c83dac300dd9f2ccf55348d8355e0a0', '79389862911', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('93', 'Greta', 'Mertz', 'janis.robel@example.net', '88151098377af52f7615dbf8bac20914a98255bf', '79980050808', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('94', 'Reuben', 'Rohan', 'balistreri.callie@example.net', 'd6b998062d8a35295665d4f25b261d5853f4bd82', '79918465012', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('95', 'Rozella', 'Nolan', 'felicita82@example.com', '676667c2be729fda3d5ff0bb3b0e048b37ccd04c', '79456305651', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('96', 'Katelyn', 'Rippin', 'lwuckert@example.org', 'fd76922475eebb723714d68b96af2404898ab7df', '79165671625', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('97', 'Norbert', 'Hilll', 'fbalistreri@example.com', 'f7e23e9df8a6b3dcc2214a42e035aa219eb1b91a', '79982006216', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('98', 'Kirstin', 'Hegmann', 'fisher.andres@example.com', 'e677578faa43ad1ef72a539ca8eaae72738d4366', '79523120258', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('99', 'Jody', 'Smith', 'mellie.blanda@example.net', 'dfcc41c3638a39b63be28acb7dbc60ed457eba14', '79264939392', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('100', 'Gerda', 'Leffler', 'langosh.georgette@example.net', '2056987dcec8f5e5ee9b5f931fe8338400aa4c86', '79636703866', '0');



CREATE table if not exists `profiles` (
	user_id SERIAL PRIMARY KEY,
    gender CHAR(1),
    birthday DATE,
	photo_id BIGINT UNSIGNED,
    created_at DATETIME DEFAULT NOW(),
    hometown VARCHAR(100)
);

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('1', 'm', '1973-01-07', '73', '2003-05-11 21:40:06', 'Lake Timmothytown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('2', 'm', '2014-01-14', '42', '1982-08-16 06:23:34', 'South Aliya');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('3', 'f', '1972-02-15', '31', '2002-07-15 10:33:48', 'Leslietown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('4', 'm', '2010-09-25', '58', '1974-01-07 13:23:38', 'East Cristina');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('5', 'm', '2004-02-04', '48', '2018-03-30 18:51:32', 'Criststad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('6', 'm', '2018-07-28', '37', '2006-04-10 00:09:30', 'Croninberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('7', 'm', '2003-05-11', '51', '1994-03-01 23:20:00', 'West Lessieview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('8', 'f', '1998-07-19', '46', '2010-02-22 10:32:27', 'South Fannyville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('9', 'f', '1970-03-08', '62', '2014-03-10 21:41:56', 'Cleoville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('10', 'f', '1975-07-04', '42', '2010-06-10 08:17:02', 'D\'angelostad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('11', 'm', '1992-05-23', '38', '1993-10-09 05:05:16', 'South Nels');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('12', 'f', '1975-06-19', '38', '2013-02-09 11:35:46', 'West Owen');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('13', 'm', '2004-09-23', '77', '1990-02-04 02:29:55', 'Walshstad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('14', 'm', '1975-12-08', '58', '2011-06-12 17:34:00', 'Willismouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('15', 'm', '1998-01-19', '59', '2007-02-14 11:44:59', 'West Forestmouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('16', 'f', '2003-10-02', '51', '1985-07-02 00:52:00', 'West Scottyport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('17', 'f', '2022-06-19', '20', '2010-07-24 06:42:48', 'Sarahfort');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('18', 'f', '2004-10-31', '11', '1993-09-12 23:03:30', 'Port Theresa');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('19', 'm', '1991-02-02', '34', '2003-07-29 03:05:50', 'Ankundinghaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('20', 'f', '1988-06-21', '87', '2012-08-22 19:08:54', 'West Guiseppe');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('21', 'f', '1974-01-03', '55', '1995-01-26 17:19:01', 'Port Paxtonport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('22', 'm', '2001-12-10', '22', '1985-07-06 04:24:34', 'North Rebamouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('23', 'f', '1993-05-29', '90', '1991-09-01 18:43:07', 'New Rodolfo');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('24', 'm', '2022-10-15', '28', '2019-08-13 02:35:33', 'Douglasburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('25', 'm', '2001-01-13', '21', '2013-03-04 16:07:48', 'South Dulceside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('26', 'm', '1979-07-08', '4', '2000-04-06 11:45:04', 'Vickystad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('27', 'm', '1991-08-24', '18', '1980-06-20 11:26:02', 'North Odastad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('28', 'f', '1996-05-12', '30', '1984-11-17 16:59:15', 'Lake Julianside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('29', 'm', '1999-04-29', '62', '1994-03-21 18:24:53', 'Corkerymouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('30', 'f', '2023-05-04', '70', '1976-10-02 06:10:05', 'Parisianport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('31', 'm', '1976-05-06', '33', '1970-05-20 10:00:59', 'Lake Lizethmouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('32', 'f', '2014-08-14', '42', '1984-06-10 08:18:23', 'Hayliemouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('33', 'm', '1979-11-11', '26', '2015-11-24 06:55:07', 'Lake Bonnie');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('34', 'f', '2011-03-01', '15', '1976-03-02 09:59:06', 'East Berniestad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('35', 'f', '1972-07-06', '40', '1990-10-19 12:52:56', 'North Ramiro');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('36', 'm', '1989-05-18', '50', '1976-01-08 16:34:39', 'Watersmouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('37', 'f', '2020-10-12', '90', '2012-04-21 01:52:02', 'Lake Zella');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('38', 'm', '2003-11-02', '62', '2020-10-31 07:37:21', 'Shawnashire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('39', 'f', '1990-05-16', '27', '1990-12-09 12:57:26', 'Hoppehaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('40', 'f', '2018-12-27', '28', '2014-09-17 23:37:49', 'Shieldschester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('41', 'm', '2003-04-17', '93', '1980-11-22 13:32:36', 'Beerhaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('42', 'm', '1979-12-31', '79', '1980-12-03 06:03:26', 'Ashleightown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('43', 'm', '1975-07-31', '25', '2010-07-03 01:09:04', 'Padbergfurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('44', 'm', '2010-04-15', '62', '1994-12-25 09:00:23', 'Edgardofurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('45', 'f', '2016-12-01', '32', '1997-10-25 12:33:51', 'Port Richmond');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('46', 'm', '1992-02-18', '94', '2010-09-14 02:22:35', 'Lake Lizeth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('47', 'f', '2014-04-23', '25', '2016-03-13 15:22:48', 'East Zetta');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('48', 'f', '1995-11-08', '48', '1990-09-10 05:49:06', 'Hamillberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('49', 'm', '2019-11-12', '77', '1986-07-04 16:07:30', 'East Mikaylahaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('50', 'f', '1992-07-18', '52', '1993-01-14 21:02:41', 'North Efren');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('51', 'f', '1992-11-29', '64', '1992-10-21 09:08:07', 'West Andresland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('52', 'f', '2014-05-09', '20', '1979-12-08 19:01:18', 'Haroldfurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('53', 'm', '1989-10-03', '37', '2007-11-18 03:00:44', 'Osinskiville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('54', 'm', '1977-05-11', '37', '2010-02-28 13:52:23', 'North Tatum');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('55', 'f', '2018-08-14', '96', '1981-02-08 15:06:56', 'North Emmaport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('56', 'f', '1971-05-28', '28', '1998-04-23 05:36:31', 'New Jamarchester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('57', 'f', '2001-05-31', '69', '1996-05-21 10:22:38', 'North Dillanstad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('58', 'f', '1979-08-05', '59', '1983-12-25 20:34:16', 'Dorthachester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('59', 'f', '2015-05-28', '10', '1971-01-19 16:51:43', 'Port Assuntaside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('60', 'm', '1986-10-01', '82', '1988-03-30 02:06:58', 'North Bernardo');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('61', 'f', '1987-01-08', '89', '2011-09-18 17:41:03', 'Antonemouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('62', 'm', '1972-07-02', '58', '1980-05-11 19:34:57', 'Lake Brooks');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('63', 'f', '2009-01-23', '24', '1974-03-12 22:11:16', 'New Marcberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('64', 'f', '1982-02-21', '47', '1986-05-17 23:12:35', 'North Laviniamouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('65', 'm', '2011-08-25', '65', '1995-04-20 01:57:21', 'Lake Annieberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('66', 'f', '1992-08-12', '40', '2001-04-08 22:09:14', 'Wolfland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('67', 'm', '1974-03-20', '4', '1989-08-08 18:28:09', 'Lake Dorris');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('68', 'm', '1976-06-14', '87', '1975-01-03 17:06:11', 'Alanishaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('69', 'm', '1984-04-09', '99', '2019-10-30 08:02:57', 'Stehrtown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('70', 'f', '1992-12-19', '33', '2016-03-31 18:52:39', 'Lake Mossieport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('71', 'm', '1993-10-26', '31', '1982-09-29 21:29:30', 'Port Kamille');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('72', 'f', '1994-01-20', '19', '2003-01-16 14:53:18', 'Faheyshire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('73', 'f', '2013-11-09', '36', '1972-12-29 17:01:23', 'Fredmouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('74', 'm', '2022-01-19', '75', '2012-12-27 08:02:41', 'Dibberthaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('75', 'm', '2005-02-12', '14', '2015-04-02 21:10:51', 'Port Alexie');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('76', 'f', '1973-02-07', '87', '1988-08-08 08:30:44', 'West Melisa');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('77', 'm', '2015-05-10', '80', '1997-04-20 03:20:12', 'North Camylleport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('78', 'f', '1973-06-20', '62', '2003-02-15 08:50:39', 'New Delfinaville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('79', 'f', '2021-09-28', '68', '2016-05-29 22:20:12', 'South Vincent');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('80', 'f', '2019-08-14', '2', '1997-09-16 11:37:44', 'Wuckertville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('81', 'm', '2001-06-16', '21', '2013-02-07 16:11:43', 'South Pete');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('82', 'f', '2000-06-18', '50', '2017-09-07 01:03:05', 'Alessandramouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('83', 'm', '1987-05-09', '28', '1970-06-27 23:08:56', 'Carlosbury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('84', 'm', '2015-10-30', '40', '2016-09-24 06:46:16', 'Kshlerinberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('85', 'f', '2010-03-11', '77', '1977-09-15 01:19:10', 'New Denisfort');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('86', 'f', '2022-09-01', '40', '1984-08-04 13:38:39', 'West Lilliebury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('87', 'm', '2017-04-12', '82', '2018-11-17 17:29:48', 'Manleychester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('88', 'm', '2015-02-13', '45', '1980-04-12 10:42:36', 'North Bennie');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('89', 'm', '2018-05-16', '27', '2005-05-12 07:41:30', 'East Morton');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('90', 'f', '1975-05-06', '63', '1983-03-18 22:43:54', 'East Berry');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('91', 'f', '1993-05-11', '4', '1971-06-06 10:41:05', 'Port Gudrunstad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('92', 'f', '2013-11-05', '19', '2018-12-31 20:22:47', 'Hahnchester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('93', 'm', '1984-11-06', '9', '2016-11-02 15:16:05', 'Hartmanntown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('94', 'm', '2008-08-05', '92', '1990-02-03 02:24:54', 'Osinskiborough');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('95', 'f', '1974-11-02', '46', '1983-03-19 20:43:12', 'Port Jakaylatown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('96', 'f', '1990-12-11', '65', '2000-08-08 13:17:13', 'Peterhaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('97', 'f', '1986-01-25', '33', '1977-12-22 09:36:38', 'Jastville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('98', 'f', '2018-07-30', '62', '1978-08-27 10:23:23', 'Katlynville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('99', 'f', '1975-06-26', '72', '1998-10-28 15:45:19', 'Port Bryonview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('100', 'f', '1981-02-01', '19', '1978-04-22 03:35:26', 'New Charity');

ALTER table if not exists `profiles` ADD CONSTRAINT fk_user_id
    FOREIGN KEY (user_id) REFERENCES users(id)
    ON UPDATE CASCADE ON DELETE CASCADE;

CREATE table if not exists messages (
	id SERIAL PRIMARY KEY,
	from_user_id BIGINT UNSIGNED NOT NULL,
    to_user_id BIGINT UNSIGNED NOT NULL,
    body TEXT,
    created_at DATETIME DEFAULT NOW(), 

    FOREIGN KEY (from_user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (to_user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('1', '88', '37', 'Non provident nihil error et aliquam doloribus. Nostrum voluptates animi ut iste optio harum et dignissimos. Voluptatem neque distinctio et qui. Aut exercitationem sit ipsum.', '1997-10-02 06:35:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('2', '55', '76', 'Quod voluptas culpa aut ullam consequatur dignissimos. Voluptas illo magni ducimus. Et commodi ea optio vel amet quibusdam. Perspiciatis qui esse aspernatur sed voluptas quos. Voluptas est voluptatem vel voluptatem aut mollitia.', '1979-10-03 09:04:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('3', '31', '96', 'Voluptas tempore tempora ut aut molestiae sunt sed reiciendis. Libero repudiandae exercitationem rerum itaque qui. Dolore atque ratione impedit vero ut.', '2001-04-10 14:39:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('4', '61', '36', 'Mollitia sed qui aspernatur dolorem. Sunt nemo minus molestiae commodi. In numquam unde exercitationem commodi. Consequatur magni facilis rerum ipsum.', '2007-03-03 07:00:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('5', '30', '78', 'Voluptate dignissimos voluptas incidunt at aperiam vero. Qui ut tenetur quis iure laudantium.', '2020-07-05 19:00:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('6', '89', '11', 'Necessitatibus voluptates quaerat optio dignissimos et. Reiciendis vitae ut ut possimus ut ea. Suscipit quo voluptate quis voluptatem. Ea qui accusantium expedita reiciendis eveniet.', '2009-11-05 17:46:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('7', '95', '74', 'Eum ut odio quia quia non incidunt. Rem omnis qui fuga. Laudantium dolores laudantium ad voluptatem asperiores aliquid. Eos aliquam aut et et.', '1986-09-06 09:21:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('8', '17', '60', 'Reiciendis esse nulla consequatur consectetur rerum dolorem omnis. Quod quasi culpa consequatur. Consequuntur sequi et hic id dolor deserunt.', '1994-09-16 10:47:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('9', '65', '11', 'Voluptas omnis consequatur possimus quis aspernatur dolore. Similique temporibus est libero dicta qui et quidem molestiae. Voluptates tenetur consequatur totam sed ratione optio debitis.', '1996-03-20 08:11:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('10', '88', '87', 'Fuga culpa consequuntur officia officiis eius officiis ipsam. Ut sit ullam sit debitis culpa. Facere amet culpa rerum ipsum cupiditate sunt sint.', '2022-10-21 11:28:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('11', '28', '93', 'Perferendis molestiae facere quo nihil. Non quaerat optio velit veniam nemo commodi voluptas. Qui dolorum esse dolores ut autem vitae quia.', '1979-10-31 11:28:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('12', '97', '75', 'Facere illo recusandae vero repellat. Assumenda fugit dolore fuga aut. Consectetur ipsum reiciendis est et perferendis.', '1985-01-30 19:17:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('13', '13', '5', 'Incidunt voluptas doloremque fugiat nemo doloremque sint. Nulla dolores pariatur veritatis et atque vitae quia sint. Nobis qui placeat et quo quisquam ipsam voluptas. Qui dolores delectus aut veniam.', '2012-05-21 11:15:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('14', '27', '97', 'Officia autem laudantium velit natus. Nemo aut nam illo non. Et qui et eum provident qui aut.', '2007-12-22 20:58:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('15', '93', '78', 'Nulla adipisci quo non eveniet magnam aperiam. Perspiciatis rerum numquam ut autem. Nesciunt facilis quisquam deserunt deserunt provident debitis. Quae temporibus aperiam minima.', '2006-08-14 10:03:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('16', '15', '96', 'Omnis non reiciendis possimus laborum. Molestias molestiae facere quis voluptas. At cum aut ipsum.', '1971-02-25 10:07:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('17', '6', '79', 'Vel nihil laborum dignissimos quam qui maiores. Ut qui et sunt sequi itaque odit et repellat. Illo vel officia dolores ipsa.', '2007-05-19 23:59:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('18', '49', '78', 'Consequatur eum non temporibus velit veritatis sed veniam. Voluptatem expedita expedita cupiditate quia rem nobis. Ut esse nobis cupiditate aut quis blanditiis nam omnis. Beatae assumenda saepe cum illum porro.', '1984-10-23 06:16:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('19', '9', '12', 'Animi consequatur rerum sit architecto doloribus odit iusto. Est modi quas voluptatem odio itaque. Ullam sint nam alias pariatur. Porro iure laborum voluptatem repellat. Et eaque tenetur voluptatem est nihil.', '1997-12-01 15:06:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('20', '61', '93', 'Minima incidunt vel non aut. Consequatur odio nam nostrum quos tenetur facere. Est ut nobis est et enim iure consequatur.', '1981-03-20 23:15:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('21', '55', '61', 'Cum vitae amet est enim beatae deserunt. Qui eveniet itaque qui expedita asperiores. Soluta possimus et mollitia et. Iure aut nam nihil.', '1985-10-23 08:02:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('22', '52', '3', 'Magnam quae aperiam ut fuga enim. Fuga perspiciatis at magnam quis cumque. Dolores maiores neque repudiandae non.', '1996-06-30 00:13:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('23', '6', '99', 'Asperiores voluptas suscipit possimus placeat a ut ratione. Aut iste nobis ipsa placeat qui dignissimos. Et et aut error laudantium ea officiis.', '1970-12-24 00:48:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('24', '52', '10', 'Officia optio veritatis doloremque doloribus. Voluptate in dolor molestiae laudantium. Aperiam modi in similique nobis.', '2022-04-22 14:42:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('25', '10', '16', 'Aliquid fugit omnis fuga enim mollitia. Facere quo nam voluptatem assumenda et. Ut laudantium aspernatur a repellat.', '2011-09-11 12:26:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('26', '91', '79', 'Porro aliquid enim sint perferendis. Ea doloribus rerum officia facere quia maxime. Nulla nostrum eum alias. Dolores quam a soluta doloremque tenetur labore.', '1975-02-14 20:22:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('27', '1', '1', 'Qui voluptatem velit veritatis sed natus. Recusandae distinctio porro nobis rem aut quibusdam consequuntur. Suscipit qui voluptatem voluptatum id rem. Id neque dolorem quibusdam non.', '1997-11-14 13:41:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('28', '97', '8', 'Amet quod quos beatae. Quia similique sunt fugiat sed repellat excepturi. Consectetur sit et laudantium et ut. Qui tempora tempore architecto repellendus quas quaerat magni.', '1993-11-14 00:59:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('29', '84', '74', 'Quidem optio est earum qui aspernatur. Dolorem provident vero velit quia dolor neque. Nostrum a nihil reiciendis laudantium minus rerum ratione. Qui sint saepe occaecati quis est eligendi at. Hic unde fugiat debitis error.', '2023-06-14 14:54:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('30', '89', '63', 'Tempore quo cum voluptas qui esse est reiciendis velit. Et eius ut a ut facere. A soluta sint dolorem asperiores. Aut sapiente recusandae libero impedit enim.', '2017-05-15 18:34:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('31', '56', '43', 'Quo qui est enim consequuntur. Dolorum sunt dolorem minus laboriosam repudiandae non. Et quibusdam corporis dicta reprehenderit consequatur in omnis.', '2004-01-04 06:08:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('32', '97', '22', 'Omnis enim similique assumenda ratione. Autem omnis mollitia hic voluptas corrupti aut. Rerum excepturi non non voluptate.', '1999-10-03 07:36:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('33', '86', '32', 'Nihil eaque repudiandae porro autem sit aliquid velit. Voluptates quia est velit nisi vero. Quasi adipisci ut esse.', '1972-09-10 23:40:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('34', '61', '65', 'Non omnis cupiditate consectetur officia. Nemo magnam rem debitis occaecati porro fugiat.', '1988-01-28 08:21:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('35', '92', '79', 'Laborum laborum ab qui. Est magni voluptates sequi qui necessitatibus. Aut laboriosam consequatur dolor perferendis. Praesentium eum ratione magni illum qui. Ut cum ipsam molestias ipsum ipsa dicta alias fuga.', '2005-04-19 00:49:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('36', '14', '57', 'Facilis quo assumenda qui perspiciatis ut et dicta. Dolores numquam rerum magni assumenda et eum similique eos. Temporibus non ullam animi et maiores excepturi officiis. Magni placeat odit occaecati neque ea ut.', '2023-07-06 13:12:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('37', '86', '3', 'Facilis accusantium molestiae tempora doloremque. Dolorem quis qui voluptas facere. Nemo commodi odio ea in autem impedit praesentium. Facilis enim neque est voluptatem quo occaecati.', '2012-06-11 08:42:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('38', '70', '71', 'Ad ut eligendi eum sit in corporis. Velit perferendis ut minima omnis sint eius. Unde temporibus qui quia quisquam et. At eum officiis harum qui.', '2000-10-04 22:42:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('39', '70', '59', 'Velit quis ratione quo ea et neque. Omnis ut officia dolore natus. Omnis et sed sed magnam ut. Quod aut omnis nam quaerat optio. Dignissimos dolor consequatur est molestiae doloribus voluptatem.', '1992-07-20 12:57:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('40', '95', '35', 'Quia facere voluptatum quae ipsam. Earum architecto nemo error qui amet totam. Totam dolor et eveniet quidem. Et numquam autem nostrum.', '1972-02-23 00:44:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('41', '100', '77', 'Maiores aut adipisci aliquid sunt veniam quos. Et et laudantium et omnis alias. Accusantium omnis ut nemo autem.', '1979-04-11 12:23:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('42', '26', '6', 'Voluptas ut inventore officia asperiores quidem. Officia soluta repellat blanditiis nihil. Provident deserunt asperiores laudantium et.', '2008-03-03 03:52:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('43', '81', '2', 'Consequuntur rerum natus atque at. Eos nulla et voluptas fugit quae in quis. Doloremque porro sit quia sit sed animi.', '2016-03-30 13:46:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('44', '59', '7', 'Sed esse numquam dolores eaque omnis ad voluptas. Quas qui nemo provident quia ut omnis officia. Et ratione et qui vel suscipit nostrum ad. Neque rerum voluptate mollitia nobis.', '2018-06-24 06:58:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('45', '27', '4', 'Ut nostrum sequi expedita facere. Quidem quod sed maxime sed ullam dignissimos.', '1990-02-14 09:47:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('46', '30', '85', 'Libero nisi saepe distinctio dolores. Nulla earum id odit officiis et fuga qui. Animi fuga sit animi ipsum blanditiis. Nisi quia sed suscipit magni sit at.', '1971-04-23 19:30:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('47', '90', '41', 'Nihil in aut voluptas quos. Placeat excepturi praesentium quis pariatur. Accusantium sint nostrum iste. Est ut consequatur voluptate atque.', '1989-11-23 00:42:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('48', '62', '87', 'Nihil consectetur aut rerum maiores. Ipsa architecto aliquam non temporibus qui illo magni. Non vel odit delectus suscipit est velit.', '1985-04-25 20:20:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('49', '52', '31', 'Autem repudiandae sit eligendi molestiae fuga velit. Omnis in voluptate voluptas est necessitatibus.', '1974-08-17 08:21:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('50', '84', '42', 'Expedita rerum molestias omnis nihil quo molestiae provident. Et quia distinctio eius qui aliquam qui inventore. Repellat quod ut quidem.', '1999-02-20 20:10:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('51', '31', '91', 'Delectus non error et quis laudantium. Vel ea ut dolor expedita aut repudiandae. Non eius dolor nihil consectetur cum sequi sequi.', '1996-02-18 04:04:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('52', '67', '94', 'Exercitationem maiores nihil vitae maxime. Dicta laborum enim nobis dicta tempora corrupti labore. Nihil ad ea voluptatem sed voluptatem dolores nihil. Aliquid enim expedita saepe nesciunt nostrum cum enim incidunt.', '2000-10-23 15:08:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('53', '25', '86', 'Laborum et nihil impedit odio. Ipsum cum incidunt illo eos in non iusto aliquid. Aut vel repellat vero aperiam dolor in velit quia. Nihil nisi nihil quia consectetur.', '2019-01-07 00:50:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('54', '9', '45', 'Omnis ullam tempore fuga velit vel amet ipsam totam. Sint velit dolorem tempora earum id voluptatem illum. Quia est ducimus quia et rerum qui magnam. Fuga reprehenderit porro illo delectus pariatur.', '2011-09-27 18:54:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('55', '54', '26', 'Sunt rerum ad ea accusantium aliquid aut vitae. Molestiae illum non quisquam molestiae consequuntur harum quia.', '1979-06-04 18:21:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('56', '34', '59', 'Dolorem laudantium fugiat omnis qui. Beatae eaque vero possimus quaerat. Suscipit aut sint nihil voluptate eius qui autem. Sapiente ut dolorem natus sunt cumque sint.', '2002-10-11 13:16:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('57', '17', '72', 'Repudiandae sint unde deleniti ex quisquam. Cumque suscipit perspiciatis magni minima. Consequatur consectetur ullam minus voluptas. Aperiam dicta culpa voluptatem voluptatem quis.', '2001-01-17 02:47:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('58', '18', '71', 'Dolore consequatur iure distinctio quod aut sint. Repellendus hic sit ipsa voluptatem sunt ducimus. Debitis et nam illo quaerat.', '1996-04-16 20:25:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('59', '97', '82', 'Laborum repellat blanditiis voluptate rerum. Temporibus molestias nulla quia in.', '2002-02-19 02:20:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('60', '70', '59', 'Amet nesciunt et voluptatum ducimus voluptas similique. Illum enim omnis et aut sequi. Fugiat ut ullam eius ut qui. Harum hic nostrum explicabo.', '2012-10-02 18:45:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('61', '15', '59', 'Illo nostrum est vitae inventore. Sunt dolorem hic eius perferendis non nihil. Quaerat ut esse aut dolor officiis.', '1992-04-16 16:34:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('62', '8', '50', 'Ullam et quaerat autem dolorem consequuntur exercitationem pariatur. Earum sequi maxime et et dolor reprehenderit corrupti. Repellat modi vel sed dolores rem voluptatum.', '1980-04-14 09:24:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('63', '38', '27', 'Assumenda molestiae sint quia ad tempore ratione. Cumque est nobis nihil sapiente ut et distinctio. Sint eos aut deleniti similique nulla molestias. Et dolor nihil voluptate tenetur. Dicta fugiat doloribus non odio ipsam hic aut.', '1999-02-04 11:32:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('64', '78', '94', 'Sit minima ratione est quia sed. Corporis iure fugiat accusamus harum earum alias. Eos dolore eos iste. Unde consectetur deserunt et ut molestias omnis est.', '2000-12-10 23:34:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('65', '9', '97', 'Odio quisquam sapiente reiciendis hic voluptas reiciendis et hic. Magni voluptatem eos praesentium quos voluptate assumenda. A enim iusto rerum saepe. Repudiandae porro aut unde quibusdam sunt accusamus sint.', '1980-09-08 16:11:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('66', '79', '9', 'Non qui perspiciatis et dicta eveniet. Nihil voluptatem accusamus iure. Error labore sequi facere voluptatem.', '2000-07-27 04:33:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('67', '63', '25', 'Voluptatum tenetur molestias rerum nesciunt veniam consequatur est quam. Aspernatur tempore adipisci qui voluptatem. Mollitia ut ullam a consequuntur voluptatibus reprehenderit temporibus. Explicabo recusandae sit consequuntur.', '2005-06-03 23:30:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('68', '6', '57', 'Odit in consequatur molestias sequi qui vitae labore. Qui dolorum ut eligendi vel expedita quia est. Voluptas dicta expedita blanditiis autem.', '2014-12-09 08:05:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('69', '21', '6', 'Corporis dolor rerum reprehenderit et illum sequi sint. Consequatur provident ipsa et non doloremque earum. Quis officiis cumque rerum nulla maxime vel et. Doloremque natus ab recusandae.', '2022-04-25 00:53:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('70', '10', '91', 'Perferendis necessitatibus consequatur at perspiciatis libero beatae harum vero. Optio aspernatur id laudantium molestiae. Cupiditate veritatis labore molestiae dolore. A hic quae necessitatibus dolorum sunt. Nobis animi debitis voluptas soluta aut omnis soluta totam.', '2007-04-14 18:24:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('71', '61', '65', 'Dolor voluptas assumenda sed quidem temporibus eos. Autem in consequuntur iusto ab debitis nulla tenetur atque. Rerum molestias unde sapiente necessitatibus maxime tempora blanditiis.', '2007-11-06 04:04:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('72', '83', '13', 'Laboriosam nulla voluptatem accusantium. Sapiente et aspernatur accusamus a sit quia. Eaque sed ratione aperiam suscipit modi ut unde. In quasi et laudantium unde commodi.', '2004-04-07 10:49:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('73', '85', '89', 'Aperiam ratione perferendis iusto voluptas. Repellat sunt et beatae animi omnis. Aut dolorum optio quam ut.', '2013-02-28 18:10:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('74', '54', '29', 'Eos incidunt quo aliquam. Nobis accusamus ipsam inventore et eos assumenda. Neque error neque rerum. Totam molestias reprehenderit numquam quia reiciendis.', '2010-07-15 22:35:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('75', '21', '97', 'Vitae distinctio reprehenderit nam est alias vitae quidem. Ea mollitia blanditiis pariatur deleniti laudantium dolor. Molestiae reprehenderit eos dolores culpa eos provident quia.', '1996-09-11 07:51:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('76', '98', '79', 'Culpa veniam harum repellendus corporis cupiditate nobis quia. Expedita sunt nulla veritatis mollitia est beatae alias. Cupiditate quia modi harum quidem animi consequuntur.', '2003-12-03 01:27:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('77', '22', '71', 'Soluta aut culpa reiciendis. Architecto ut doloremque et laboriosam doloribus fugit eveniet. Nisi earum omnis ut repellendus est aut. Nostrum vel culpa deleniti incidunt in dolorum.', '1978-05-22 18:07:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('78', '20', '72', 'Rerum deserunt amet omnis consequuntur sint. Minima aut doloribus repellendus aspernatur. Voluptatem harum enim quis ex.', '1992-03-20 08:31:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('79', '79', '38', 'Est voluptates aut sapiente impedit consequatur est possimus deserunt. Eaque ab consequuntur tempora adipisci voluptatem. Hic perspiciatis esse necessitatibus vitae et deleniti ea.', '2009-02-04 03:05:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('80', '94', '65', 'Ipsa quia itaque est eligendi. Illum tempore assumenda quisquam in.', '1988-09-13 09:55:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('81', '71', '2', 'Fugiat rerum deleniti repellendus aut accusantium. Adipisci molestiae consequatur quod voluptatem et vel. Dicta veritatis voluptas provident quae maxime.', '2003-07-05 17:29:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('82', '54', '10', 'Ad quibusdam quidem voluptatibus amet autem culpa. Facilis magni ullam voluptatibus natus. Aut aperiam error et fuga est. Tempora et aliquid dolores consequatur.', '1994-04-21 12:36:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('83', '23', '38', 'Alias est voluptas molestiae officia quia. Officia qui odit veritatis officia veniam. Fuga voluptatem nostrum reprehenderit dolores.', '2001-03-07 15:58:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('84', '39', '12', 'Nobis est eligendi eaque ipsa. Error sint voluptatem provident. Natus dignissimos nemo veniam eligendi suscipit qui perferendis. Sunt sit eligendi omnis recusandae ut veniam.', '1989-10-18 04:19:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('85', '17', '85', 'Ex accusamus eum et iusto iure fuga. Eaque dolores ab qui. Laboriosam inventore quidem consectetur. Reprehenderit consectetur quidem exercitationem necessitatibus officiis cumque explicabo.', '2022-10-25 06:10:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('86', '37', '12', 'Explicabo dolor doloremque nesciunt aut dolor. Perferendis eius in eveniet officiis.', '2002-11-09 15:47:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('87', '74', '4', 'Qui perspiciatis iure blanditiis saepe. Cumque beatae harum labore eos et dignissimos. Qui eos qui iure labore. Soluta ab et id.', '2010-01-15 18:02:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('88', '2', '96', 'Accusamus aliquam ducimus aliquid sed. Iure laboriosam voluptate est aliquam. Beatae et magni voluptatem ducimus.', '2000-03-27 16:14:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('89', '58', '77', 'Laborum nulla rerum ex quidem labore. Reprehenderit dolorem perferendis excepturi nemo aspernatur. Dicta et amet doloremque sint et exercitationem a. Facere iste est dolore aliquam occaecati.', '1982-11-06 00:31:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('90', '22', '80', 'Similique necessitatibus quis quia. Dicta necessitatibus consectetur aut velit. Nihil quia totam vero incidunt.', '2015-02-22 04:40:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('91', '43', '40', 'Ad iusto dignissimos ea. Voluptas harum corporis qui iusto quo. Vitae eum facilis rerum nemo.', '1980-05-02 04:21:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('92', '45', '68', 'Atque dolore perspiciatis labore iusto maiores voluptas. Aspernatur sed vel nihil blanditiis fugit officiis. Explicabo ducimus velit illum non cupiditate aliquid.', '2008-04-15 15:39:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('93', '11', '34', 'Ex excepturi quidem est omnis labore aut. Magnam quasi libero velit officiis. Ut ducimus fugiat est voluptate qui quaerat. Est sunt voluptatum quia ut ipsum sed.', '2013-07-24 18:32:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('94', '23', '31', 'Nihil consequatur doloribus laudantium consequuntur similique consequuntur sapiente saepe. Et eligendi accusamus libero unde. Voluptatem et placeat voluptatem molestiae architecto et nobis. Sapiente adipisci illum non.', '2003-06-03 00:43:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('95', '50', '87', 'Assumenda fugit at nobis voluptas aliquid quisquam error ut. Molestias magni aut eos asperiores necessitatibus.', '2013-03-04 19:33:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('96', '92', '33', 'Et mollitia dolorem aperiam tenetur. Veniam vero qui quidem illo voluptatibus eos delectus rerum. Rerum voluptas placeat corporis.', '2022-02-15 22:36:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('97', '100', '62', 'Nemo adipisci sapiente temporibus deserunt dolorem aut nemo. Facere suscipit sed magnam velit voluptas. Voluptatem perspiciatis consequuntur modi ut libero autem asperiores. Consequatur natus est error aut et qui pariatur non. Doloribus nihil voluptatum eos vel beatae iure mollitia.', '2022-05-19 21:54:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('98', '17', '55', 'Ullam dignissimos autem fugiat nulla. Id sit molestiae aut labore qui asperiores. Eum et fugiat nam ut. Facere illo doloremque et facere quam iure.', '1983-08-31 02:33:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('99', '81', '39', 'Totam eum sunt molestias corporis quo. Mollitia sed sit sequi. Sit consequatur et maxime dolor et animi. Iure in ut cumque repudiandae dicta.', '1997-12-13 07:34:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('100', '22', '26', 'Molestiae sunt ut mollitia totam eos et vitae. Et sed rerum ipsa. Magni maxime quasi quidem.', '1975-11-21 21:21:56');



CREATE table if not exists media_types(
	id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP

);

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'photo', '1992-03-02 05:18:19', '1983-02-12 20:28:03');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'video', '1991-07-30 21:38:34', '2004-01-31 08:30:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'music', '2015-11-13 00:42:14', '1980-01-01 01:39:38');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'file', '1978-07-03 04:37:29', '1995-03-20 20:30:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'game', '1978-10-15 23:49:45', '2022-06-24 13:39:50');


CREATE table if not exists media(
	id SERIAL PRIMARY KEY,
    media_type_id BIGINT UNSIGNED,
    user_id BIGINT UNSIGNED NOT NULL,
  	body text,
    filename VARCHAR(255),
    `size` INT,
	metadata JSON,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (media_type_id) REFERENCES media_types(id) ON UPDATE CASCADE ON DELETE SET NULL
);

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '5', '49', 'Debitis dignissimos quidem cupiditate esse. Ut perspiciatis et perferendis. Labore dolores ipsum ratione voluptas. Et facere nesciunt autem eveniet odio expedita quaerat.', 'nostrum', 27756, NULL, '2002-07-18 03:03:24', '2014-01-09 12:58:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '2', '56', 'Quisquam et autem id. Nihil et voluptatum sunt. Vero est doloremque sunt placeat est. Sit iste et in.', 'nobis', 0, NULL, '2019-03-02 03:19:55', '1985-01-09 16:17:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '4', '68', 'Officia provident hic reprehenderit nesciunt. Laborum occaecati sit cum ea incidunt sed. Doloribus ea ex amet et porro laborum sapiente. Sunt magni sit cumque doloribus cupiditate.', 'dolorem', 98050615, NULL, '2010-06-28 23:40:14', '2007-10-27 09:17:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '4', '37', 'Illum assumenda repellendus maiores distinctio ut omnis aut. Dolorem sint non asperiores optio aut. Omnis itaque quis ea at corporis rerum praesentium. Aliquam nihil est voluptate rem laborum.', 'nemo', 0, NULL, '1999-01-02 01:59:26', '2012-11-27 07:05:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '4', '73', 'Officia dolorum aut et quibusdam est doloribus. Aut consequatur voluptate voluptate necessitatibus laborum. Maiores provident laboriosam nesciunt repudiandae itaque omnis laboriosam. Neque suscipit aut similique dolorem similique illo. Numquam reiciendis minus corporis atque voluptatem quisquam.', 'cumque', 946447895, NULL, '2019-07-08 08:27:57', '1980-06-12 04:15:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '4', '65', 'Distinctio magnam et vel iste dicta suscipit rem. Illum commodi ipsa perferendis alias dignissimos aliquam voluptas. Veritatis praesentium hic blanditiis vel. Quaerat et pariatur voluptas voluptatem autem id ut.', 'commodi', 51864827, NULL, '1988-10-16 15:52:49', '1974-05-03 04:46:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '4', '68', 'Saepe magni minima quo aut. Officiis ducimus minus est occaecati incidunt placeat quas. Aut exercitationem et non sed dolores.', 'explicabo', 98033, NULL, '1978-09-25 20:45:46', '1994-12-01 07:58:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '5', '26', 'Ad culpa voluptatem qui ratione consequatur voluptatem praesentium itaque. Commodi dolor nemo quam laboriosam voluptatem. Atque fuga sapiente deleniti itaque itaque cupiditate nobis. In dicta tenetur iusto iste.', 'tenetur', 0, NULL, '1995-10-01 03:42:35', '1981-02-15 04:54:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '3', '24', 'Beatae eos consequuntur dolorum tempore est qui reiciendis. Laboriosam soluta repellendus voluptas odio nam dicta ullam. Nihil qui excepturi in id tenetur. Labore impedit suscipit commodi voluptatum. In accusamus asperiores et ipsa eaque architecto unde.', 'reiciendis', 9, NULL, '2017-09-04 09:01:49', '2021-07-25 21:02:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '3', '75', 'A minima possimus velit debitis. Neque sed sed necessitatibus quia. Voluptatem soluta eum quidem vitae. Nulla aliquam dolores ipsa nobis magnam molestiae maiores porro. Aut sed a incidunt ea quia eos dolorum ducimus.', 'sed', 7465386, NULL, '1976-05-28 20:26:21', '1980-08-06 04:48:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('11', '1', '38', 'Dolorum asperiores voluptas laboriosam velit rerum quisquam blanditiis. Inventore molestias rerum beatae amet. Qui quas et repudiandae culpa molestiae repellat cupiditate. Aut eos et laboriosam rem consectetur et consectetur.', 'et', 194298621, NULL, '1998-01-17 07:09:27', '1987-08-08 05:24:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('12', '1', '57', 'Officia rerum voluptas laboriosam maiores perspiciatis. Quas nisi velit cupiditate odio soluta perspiciatis ut. Est iusto voluptatem et ipsum. Quisquam fugiat molestias repellat velit est.', 'dolorem', 5539372, NULL, '1979-02-16 09:30:13', '1987-07-04 09:31:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('13', '3', '3', 'Autem beatae maxime fuga officiis. Temporibus vitae nihil cupiditate blanditiis dolores qui in voluptates. Quaerat veniam aut exercitationem eaque.', 'voluptate', 9859, NULL, '1972-05-13 10:55:38', '2003-11-05 19:17:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('14', '1', '57', 'Sapiente a omnis voluptates delectus sed. Voluptatem nulla recusandae temporibus nulla. Harum sed et culpa et distinctio rem eaque.', 'voluptas', 651, NULL, '1990-12-21 08:26:59', '1971-01-18 01:36:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('15', '2', '32', 'Ea laborum dignissimos consequatur expedita ea dolorem. Veniam iure molestiae vero dignissimos aut accusantium. Est consectetur blanditiis eius voluptas consequatur qui ut. Neque quam unde iure nisi.', 'optio', 982277557, NULL, '2016-07-08 12:22:54', '1991-04-20 03:46:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('16', '1', '55', 'Cum quia repudiandae autem eos. Adipisci et doloremque iste fuga culpa consequatur neque non. Dolores sunt voluptates harum quidem.', 'ut', 11, NULL, '2013-10-10 14:19:20', '2009-10-29 15:01:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('17', '2', '9', 'Dignissimos quia quibusdam nostrum. Quis cumque quia et et id error. Praesentium voluptatem officia magni et ad nihil. Autem similique quo distinctio tenetur.', 'quis', 802790, NULL, '1989-09-25 22:48:01', '1975-05-23 15:05:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('18', '5', '61', 'Nihil incidunt qui similique tempore. Molestias eligendi vitae qui sunt expedita impedit vero. Aut iusto voluptatem consequatur.', 'enim', 97582693, NULL, '2012-07-22 22:14:51', '2022-05-22 03:00:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('19', '2', '74', 'Dolorem dicta sit soluta sint voluptatum. Voluptas iure optio consectetur. Qui aspernatur impedit enim non. Odit mollitia commodi libero maiores est.', 'temporibus', 47, NULL, '1986-09-05 08:02:51', '2016-07-23 23:09:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('20', '4', '64', 'Aut ad recusandae cumque. Hic est voluptatum accusantium rerum similique. Qui consequatur architecto aut ut. Blanditiis doloremque aperiam ipsam.', 'voluptatem', 0, NULL, '1971-11-22 15:14:38', '1997-10-14 05:20:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('21', '2', '1', 'Qui non et voluptatem id suscipit. Est perferendis eos nihil temporibus natus sunt asperiores. Occaecati maiores tempora quia omnis et est et. Eaque ut dolores consequuntur temporibus dignissimos nihil.', 'ex', 622322, NULL, '1986-09-28 22:55:48', '1971-07-25 16:52:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('22', '2', '65', 'Et neque distinctio veniam nihil temporibus. Necessitatibus voluptatibus illum consequuntur vel rerum ducimus non.', 'autem', 0, NULL, '1990-01-30 08:31:31', '1995-10-21 01:10:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('23', '4', '19', 'Animi vel mollitia atque quas et. Pariatur molestias delectus eaque optio dolorem et. Commodi amet unde voluptate rerum ducimus sed consequatur consectetur. Maxime velit reprehenderit aperiam aut fugit recusandae consectetur eum.', 'cumque', 306, NULL, '1987-10-13 18:01:46', '1988-12-11 18:25:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('24', '3', '12', 'Amet provident suscipit molestiae dolorem nemo accusamus. Reiciendis dignissimos iste sint at ut. Earum consequatur et ullam mollitia. Rem architecto quo quis et quidem totam asperiores. Placeat totam sequi delectus alias eius ipsam.', 'aspernatur', 245, NULL, '2011-04-14 15:50:34', '2001-03-01 08:50:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('25', '4', '10', 'Facilis nisi earum a at aliquid molestiae quaerat. Earum qui architecto assumenda numquam placeat praesentium rerum doloribus. Doloremque repellat qui nam libero a nemo dolores modi.', 'facilis', 802846601, NULL, '2007-07-26 01:54:36', '1979-08-07 04:46:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('26', '3', '83', 'Cupiditate voluptatem esse veritatis fuga praesentium eligendi. Assumenda tenetur autem necessitatibus voluptate eos et quis. Placeat odit accusamus illo commodi adipisci reprehenderit. Tempore corrupti eveniet qui consectetur laudantium qui provident deserunt.', 'quia', 23614293, NULL, '2008-11-26 09:14:39', '1978-04-28 11:56:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('27', '1', '74', 'Vel iusto et nam accusamus omnis facere saepe. Omnis aut eligendi deleniti inventore veniam numquam. Quos neque consectetur ut blanditiis dolore architecto recusandae veniam. Distinctio dolores id cumque cum.', 'labore', 0, NULL, '1974-01-24 20:02:16', '1974-04-12 00:06:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('28', '3', '3', 'Molestiae pariatur modi neque blanditiis veritatis. Sint a libero cum perferendis. Officiis ut officiis eveniet voluptate.', 'incidunt', 6768, NULL, '2011-10-06 13:32:40', '1994-07-09 01:54:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('29', '2', '71', 'In at quis neque magni aliquam laborum eligendi soluta. Fugit delectus eum non vel enim amet. Quo sint et maiores impedit laborum. Similique nobis temporibus nesciunt dolor hic.', 'sed', 55498, NULL, '1972-11-02 09:41:13', '1981-11-23 19:36:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('30', '5', '73', 'Doloribus quibusdam rerum alias quia rerum explicabo accusantium. Incidunt placeat impedit fuga atque et recusandae non. Omnis fugit omnis rerum velit. Labore debitis ex cum quo libero non.', 'et', 0, NULL, '2002-01-18 08:38:31', '1976-05-09 19:25:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('31', '2', '81', 'Autem provident sit corrupti omnis et aut. Consequatur vero est dolores voluptatem alias molestiae commodi. Reiciendis ea qui quia animi voluptas et consequatur.', 'iste', 770633, NULL, '1970-07-06 20:17:50', '1971-09-24 14:43:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('32', '1', '79', 'Odio eligendi corrupti cupiditate velit sunt. Sint molestias commodi nemo omnis sint ducimus omnis. Id est quibusdam exercitationem commodi quos error. Officiis reprehenderit reprehenderit labore doloribus dolorem.', 'qui', 437, NULL, '1979-09-27 11:22:35', '2016-01-07 15:14:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('33', '3', '60', 'Occaecati numquam quia ex iusto. Vero aut dolores non et et sapiente est. Occaecati sit quidem hic quas.', 'fugit', 27804, NULL, '2006-08-15 06:55:34', '1991-05-26 11:27:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('34', '3', '54', 'Itaque voluptatibus earum quam suscipit. Ratione molestias sint inventore qui amet. Repellendus impedit dolor et ut voluptas temporibus. A qui saepe ipsam ea consequatur ut.', 'accusantium', 80, NULL, '1994-07-02 10:54:09', '2006-07-29 21:55:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('35', '4', '12', 'Est qui maiores consequatur nihil dolores non et voluptas. Ut expedita quos eligendi. Laborum et ullam est voluptates quae. Dolor error id explicabo ut quo provident suscipit.', 'dolorem', 9330, NULL, '2007-11-05 09:00:28', '2012-09-10 04:09:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('36', '2', '47', 'Modi porro molestias reiciendis sed maiores quia. Itaque voluptas accusamus magnam. Eveniet eius quis qui quibusdam quia pariatur nobis. Dicta quia officiis ullam aut quia modi nisi distinctio.', 'sed', 202931552, NULL, '1994-06-27 08:44:30', '1990-08-26 11:40:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('37', '4', '52', 'Placeat facere sunt quam eum rerum non. Omnis blanditiis necessitatibus perspiciatis. Consequatur et eum voluptas est eum quasi laudantium. Veniam qui ratione ipsum earum dolorum et.', 'eius', 820601903, NULL, '2021-11-03 17:40:10', '2006-06-03 22:09:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('38', '1', '15', 'Nisi magni veritatis quibusdam nesciunt nobis quaerat. Eos alias nostrum quo et qui ipsa. Mollitia ducimus nemo sunt et dolore. Ducimus in exercitationem et aperiam rerum neque aut. Voluptatem tempore sunt assumenda.', 'aspernatur', 113, NULL, '2013-12-14 15:13:04', '1989-05-07 16:13:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('39', '1', '56', 'Inventore sit voluptas vel odit totam. Commodi accusantium vero alias quis libero. Quibusdam voluptates corporis qui nam fugit assumenda. Nihil quam quidem in alias deleniti.', 'inventore', 42358, NULL, '1986-11-17 05:13:04', '2007-03-31 19:56:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('40', '1', '92', 'Quo non alias quo est dicta aut. Id nulla asperiores qui. Hic vitae voluptatem consequatur sit magni sapiente. Quia nisi ipsam molestiae dolores nulla cumque ea.', 'omnis', 0, NULL, '2012-04-12 21:19:14', '2006-04-05 18:58:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('41', '5', '38', 'Atque fugiat voluptatem sed. Minus laborum et saepe quisquam et repellendus. Consequatur laborum sint perspiciatis qui. Enim tempore vitae reiciendis id quo.', 'ut', 8549483, NULL, '2023-02-25 16:49:26', '2003-06-16 04:26:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('42', '4', '38', 'Aut voluptas eius molestiae qui laborum velit eos. Aliquam dolore vitae perferendis sed. Deserunt ratione dolore molestiae quas quis quis sapiente.', 'earum', 0, NULL, '2008-04-21 06:20:26', '2004-01-21 14:41:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('43', '4', '55', 'Delectus sit natus qui eveniet temporibus. Rerum sit illum aut beatae est cum sequi. Quae voluptatem omnis vel aut nemo aliquid libero omnis. Minima occaecati omnis eum non quos molestias.', 'nihil', 0, NULL, '2016-12-03 22:37:05', '1996-09-24 12:50:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('44', '3', '27', 'Facere nostrum sit omnis neque ea consequatur. Perferendis est est eaque ipsa et. Quasi animi accusantium voluptatem quibusdam id error molestias. Sed quisquam ea nihil dolor dolorem repellat rem nihil.', 'aut', 1, NULL, '2013-08-21 03:49:56', '2006-09-25 04:22:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('45', '4', '79', 'Repudiandae illum sint et aut voluptatum. Alias velit distinctio tempore sunt architecto ab. Velit aperiam provident quis odit est laborum laboriosam explicabo. Ab voluptatem sit non tempore.', 'cumque', 761, NULL, '1976-12-02 10:40:41', '2023-08-17 08:09:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('46', '1', '7', 'Facere dolores voluptatem sed quia. Voluptatum veritatis dolore ipsam consequatur aut optio praesentium. Eveniet laboriosam aut praesentium debitis quaerat est est. Sit consequuntur consectetur nam nihil.', 'quod', 11, NULL, '2009-04-24 14:31:14', '2021-04-02 19:13:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('47', '3', '79', 'Fuga ullam optio ducimus culpa. Excepturi dolor rerum tenetur rerum ut aut. Ex et aut at vero.', 'qui', 676, NULL, '2009-02-04 13:26:16', '2009-01-19 03:36:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('48', '2', '52', 'Veniam veritatis ipsum nobis illum. Dolores eos expedita cum quasi rem fugiat odio. Molestias maxime nam corrupti et enim. Incidunt numquam pariatur quia quaerat.', 'quia', 4083, NULL, '2017-09-03 04:35:51', '1993-07-13 21:44:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('49', '3', '97', 'Commodi sint molestias ratione numquam. Temporibus eum facere distinctio. Aut ut quam itaque facilis aut qui. Sunt optio ex optio nam aut ea eum. Qui aliquid et dolores natus cupiditate facere.', 'perspiciatis', 701, NULL, '1981-06-22 01:59:05', '2021-10-05 03:25:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('50', '3', '7', 'Placeat fugiat libero explicabo voluptas. Unde in sunt iusto magnam pariatur laudantium hic. Quo voluptates qui similique veniam.', 'ea', 6807093, NULL, '1983-12-07 01:18:53', '2004-11-16 19:40:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('51', '3', '21', 'Adipisci qui maiores est et. Fugit quidem voluptatem molestiae et. Maiores quo laborum dolor illo.', 'qui', 0, NULL, '1977-07-29 18:49:22', '1975-11-25 17:10:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('52', '2', '42', 'Est ut quis ullam dolorum expedita ad. Vero enim consequatur quisquam vero qui iste. Officiis in ducimus mollitia quia laudantium ea.', 'eligendi', 74624, NULL, '1975-02-27 03:34:30', '2000-01-04 19:43:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('53', '2', '11', 'Facere consequatur culpa excepturi est ducimus aut nostrum. Omnis voluptatum nobis magni unde facilis necessitatibus. Molestiae beatae nesciunt incidunt quidem veniam debitis accusantium. Magnam rerum asperiores ipsum laborum qui odio est.', 'perferendis', 6788, NULL, '1995-03-10 20:22:14', '2008-01-26 15:24:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('54', '2', '54', 'Sequi rerum et voluptatem temporibus. Et est velit vel. Velit nihil reprehenderit aut eos perspiciatis. Esse possimus laudantium voluptas vel placeat atque.', 'et', 980, NULL, '2018-01-19 03:46:11', '1982-03-05 20:59:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('55', '2', '100', 'Nulla expedita laudantium sint atque. Mollitia ut vitae ducimus ut nobis voluptatem. Tempore voluptas molestiae eos possimus voluptas consequatur. Quos eos dolor animi quod et dolor sint quisquam. Facilis molestias voluptatem blanditiis.', 'neque', 6, NULL, '2000-12-16 16:39:56', '2005-05-10 06:39:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('56', '3', '31', 'Blanditiis accusamus possimus et. Qui dolores illo id reiciendis et ipsa voluptatum. Perferendis libero ea molestias laudantium sit dolor vel a.', 'ab', 158, NULL, '2009-05-15 11:03:22', '1986-11-04 22:41:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('57', '4', '61', 'Ea saepe eius tempora eveniet asperiores. Ex pariatur occaecati nesciunt recusandae quisquam dolorem non. Expedita enim non eligendi. Voluptatem voluptas distinctio sit provident labore quod voluptatum itaque. Dolorum sed omnis laboriosam.', 'voluptate', 214, NULL, '2023-05-18 04:08:54', '2012-12-04 08:13:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('58', '3', '90', 'Impedit sunt consectetur est consequuntur quasi et neque expedita. Sit iusto architecto tenetur accusantium distinctio in. Sit est debitis molestiae quidem. Aspernatur ut eveniet cum sed doloremque ullam quibusdam.', 'ea', 7084, NULL, '1970-10-31 05:02:24', '2005-03-27 03:13:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('59', '3', '43', 'Voluptas tempore eum esse exercitationem quia veritatis nihil veritatis. Facere delectus doloribus corporis consequatur. Corporis corrupti in harum explicabo quod laborum deleniti assumenda.', 'et', 51548, NULL, '2004-06-03 17:58:31', '1985-03-20 12:41:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('60', '2', '7', 'Aut ut quod et pariatur ut delectus repudiandae. Aut eaque culpa molestias neque. Aut illo sunt atque eligendi ut adipisci consectetur.', 'dicta', 9621, NULL, '2012-02-27 06:15:21', '1971-03-04 14:49:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('61', '2', '56', 'Fugiat iure laborum aut quidem totam perspiciatis. Est id perspiciatis libero voluptatem ea eveniet. Fugit sint ipsum perspiciatis ut dolorem et. Voluptatum natus iste aperiam sapiente.', 'exercitationem', 751368704, NULL, '1971-08-06 17:21:23', '1989-12-25 01:00:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('62', '2', '71', 'Aliquid illum ut in qui quia cupiditate autem. Sunt nobis aspernatur nulla esse accusantium nostrum adipisci. Ut earum odit aut dicta. Qui dolore nemo excepturi fugit fugiat.', 'dolor', 954, NULL, '1988-05-12 19:25:48', '1994-01-05 02:29:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('63', '2', '28', 'Animi mollitia cum tempore dicta quis. Temporibus cum cumque laudantium cupiditate ex. Ipsum ut nemo beatae facere aut et.', 'velit', 5216, NULL, '1988-09-06 20:02:42', '2016-04-02 16:33:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('64', '1', '53', 'Optio debitis autem delectus iste. Et quia consequatur aut dolorem animi. Veritatis et illo eos animi.', 'et', 89987898, NULL, '1994-04-27 01:03:04', '1981-02-06 13:12:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('65', '1', '57', 'Vel aut repellendus sit reiciendis qui. Consequatur deleniti nemo molestiae nemo sed quo vel. Dolorem debitis qui suscipit cumque. Aut ut nulla dolores rerum numquam.', 'ducimus', 562138298, NULL, '1992-03-29 05:38:12', '2006-01-02 05:55:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('66', '3', '3', 'Ex ducimus quaerat eum tempore dolor exercitationem totam. Laborum quia quaerat aspernatur quis eum. Facilis eaque nobis consectetur. Perspiciatis iusto et sed aut et nulla in. Animi a eligendi quam optio cumque minima repellendus.', 'voluptas', 56, NULL, '1988-05-06 11:10:36', '1980-07-17 18:54:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('67', '1', '20', 'Consequatur blanditiis omnis expedita id fuga ab reprehenderit. Voluptatem similique sint facere quos laudantium officiis ab. Reiciendis ipsum iusto omnis eum accusantium.', 'animi', 697318, NULL, '1996-11-14 16:32:29', '2015-12-16 01:19:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('68', '1', '90', 'Nemo aut labore perferendis. Et libero possimus mollitia consectetur blanditiis. Quidem esse ex non eligendi in officiis aut exercitationem. Atque quis at ea animi.', 'non', 4, NULL, '1972-02-13 21:34:50', '2019-06-16 22:55:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('69', '4', '75', 'Necessitatibus aliquam qui iure voluptatum et aut non repellat. Similique sapiente omnis incidunt et ducimus eos dolores delectus. Sequi culpa eaque tempora consequatur. Rerum nulla ea saepe eos.', 'magnam', 904424, NULL, '2017-01-15 06:44:11', '2007-02-12 11:51:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('70', '3', '19', 'Nihil dolorem explicabo dolor id tempore. Non consequatur fugit minus delectus. Nemo optio ad voluptatem.', 'est', 7, NULL, '2022-12-03 22:13:51', '1990-07-18 21:08:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('71', '4', '66', 'Eius et omnis consequatur voluptate temporibus nobis. Et aut eveniet aliquam autem soluta ducimus. Fugit vero in maiores deleniti animi aspernatur quis delectus. Non dolorem qui fuga consequatur accusamus ut.', 'nostrum', 969529, NULL, '1995-01-15 00:55:50', '1972-06-24 08:19:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('72', '5', '29', 'Asperiores commodi illo voluptatum et quasi porro quia. Nemo aliquid corrupti laboriosam soluta quo quis. Nihil ipsam architecto ut eius. Ipsum quis perspiciatis maxime ipsam asperiores.', 'enim', 1801, NULL, '1995-08-21 12:04:23', '1973-10-20 17:20:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('73', '5', '92', 'Laborum est omnis distinctio est. Aut corrupti unde consequuntur enim.', 'necessitatibus', 6420, NULL, '2017-09-08 11:11:41', '1988-09-25 08:48:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('74', '5', '9', 'Ullam aut nobis reiciendis rerum neque animi. Veniam minima nam et accusamus aut. Repellendus id voluptate alias nulla et doloribus nulla. Sit quia corrupti et dolor qui libero.', 'suscipit', 722811, NULL, '1992-05-12 19:18:40', '2015-10-03 07:26:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('75', '4', '40', 'Asperiores voluptates quibusdam incidunt sapiente sed. Culpa molestiae tempore et omnis deleniti nihil eaque. Nam nihil animi quas.', 'at', 280990660, NULL, '2020-10-20 06:26:54', '1983-02-03 06:08:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('76', '2', '65', 'Unde suscipit aliquid harum dolorem. Consequatur excepturi cupiditate atque velit sapiente commodi non omnis. Ut distinctio velit ab tempora eos est. Doloribus sint magni est vitae.', 'deleniti', 9, NULL, '1983-07-31 20:02:05', '2003-02-04 04:22:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('77', '4', '4', 'Est non magnam distinctio quas hic necessitatibus distinctio. Est dolores eius ab minima. In nisi corporis et voluptatum aut harum occaecati. Quaerat omnis ut a.', 'explicabo', 9018723, NULL, '1986-06-20 01:45:45', '1972-06-28 09:29:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('78', '5', '50', 'Suscipit enim iste pariatur aut et doloribus. Ab consequuntur labore incidunt eum aspernatur id laborum. Quia asperiores ut autem et culpa. Sapiente doloribus est nemo quia.', 'ducimus', 9928, NULL, '2001-12-12 16:48:22', '1988-01-26 22:36:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('79', '1', '47', 'Libero ipsam dignissimos nam voluptas qui. Aut aut esse ullam voluptas aspernatur. Aut esse nemo minima ut enim repudiandae distinctio ipsum.', 'vel', 6, NULL, '2017-11-04 22:40:41', '1996-11-21 18:28:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('80', '2', '62', 'Dolor adipisci perferendis et dolores ex. Quo qui qui ut ut aut. Dolores consectetur consequatur rerum unde dolorum fugit aut minima. Enim est voluptas ad sed sit omnis nemo.', 'tempora', 686070548, NULL, '1997-10-28 15:31:01', '2019-04-02 16:22:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('81', '2', '70', 'Nihil tempore odio iure minus amet neque. Consequatur possimus asperiores sequi tempora natus suscipit. In illum esse minus eos dolor est. Consectetur accusamus cumque aut temporibus iste minima.', 'cumque', 24, NULL, '1973-06-05 08:38:22', '1984-07-15 20:57:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('82', '5', '2', 'Asperiores illo ullam id et aliquid delectus quia. Optio eos quos ipsam est. A ut veritatis facilis ad et ut. Blanditiis occaecati consequatur adipisci atque eum consequatur.', 'tempore', 39872355, NULL, '2000-05-20 14:13:13', '2005-12-07 05:31:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('83', '4', '26', 'Iure dolorum quidem quasi impedit aut recusandae. Dicta molestias nam sit et et. Blanditiis soluta itaque labore ducimus minus.', 'natus', 943318, NULL, '2007-06-21 04:08:18', '1981-03-14 10:36:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('84', '4', '25', 'Repellat nihil autem voluptatem. Aut animi quaerat voluptas qui et animi adipisci. Inventore quae dolorem et est aut voluptatibus. Doloribus repellendus tempore qui ut.', 'commodi', 1356654, NULL, '2003-01-02 12:24:47', '2022-09-04 05:23:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('85', '3', '100', 'Temporibus tempora commodi aut reprehenderit. Illo veritatis quasi consectetur possimus occaecati occaecati illo sunt. Maxime beatae ipsam molestias. Quod magni laborum doloremque qui earum quam iste.', 'officia', 311788929, NULL, '1993-03-27 23:20:43', '1988-07-28 22:12:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('86', '5', '62', 'Quo illum eveniet amet est animi assumenda tempora. Eveniet quas officia explicabo dolor architecto eos dignissimos et. Accusamus alias quaerat sint minus.', 'ipsam', 638, NULL, '2020-09-15 21:06:01', '1982-11-02 04:41:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('87', '3', '89', 'Mollitia maxime totam et nesciunt. Dolor cumque eaque blanditiis nisi. Doloremque illum dignissimos earum quod officia deleniti. Placeat autem et nihil culpa fuga.', 'quia', 313321, NULL, '1997-12-26 09:12:04', '1971-08-14 08:08:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('88', '2', '33', 'Voluptatem vel dolorum nam quia consequuntur officiis. Quo autem minima minima sit. Corporis vitae et sequi amet nam sit.', 'voluptatem', 10957714, NULL, '1996-04-29 20:22:44', '2022-09-30 00:06:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('89', '4', '11', 'Amet sed ut recusandae voluptas. Fugiat unde illum eligendi exercitationem. Facilis autem repellat quidem nulla temporibus. Iste veritatis mollitia quia repudiandae soluta. Quae eos rerum aut eius sequi et.', 'saepe', 257684528, NULL, '1987-08-07 21:20:59', '1970-06-21 15:56:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('90', '4', '98', 'Itaque asperiores aliquam totam nostrum quaerat optio quaerat enim. Odio incidunt quasi molestias vero voluptatem delectus maxime.', 'et', 7, NULL, '1986-11-10 13:26:50', '1994-06-01 00:18:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('91', '5', '65', 'Est dolorem explicabo maxime. Ipsum a assumenda et dolore enim saepe. Deleniti nemo fugit praesentium voluptas provident reiciendis. Ducimus perferendis ratione fugiat.', 'ut', 43672, NULL, '1977-06-18 04:25:54', '2019-11-10 04:09:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('92', '3', '83', 'Incidunt officia quaerat ratione et dolor. Repellendus quasi aut ut. Et totam mollitia unde asperiores et ad praesentium.', 'tenetur', 5, NULL, '2004-12-22 20:20:46', '1980-12-13 08:50:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('93', '5', '95', 'Aut molestias assumenda corrupti dolorem minus. Non eaque accusamus optio iste. Enim recusandae omnis voluptas. Dolor quisquam sequi unde consectetur saepe doloremque nulla. Tempore similique placeat quis ut qui.', 'veniam', 636, NULL, '1980-09-08 18:51:32', '2016-02-03 15:06:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('94', '2', '37', 'Culpa expedita repellendus consequatur blanditiis similique. Assumenda dolorum autem possimus earum tenetur voluptas. Veritatis enim aut voluptas quis fuga ad et.', 'ducimus', 528550212, NULL, '1992-03-18 06:57:50', '2017-02-20 08:26:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('95', '4', '6', 'Sit nihil laboriosam tenetur aut error ut sit. Ab porro placeat praesentium ullam ea repellat. Praesentium nisi saepe occaecati quisquam aut enim.', 'ut', 51123, NULL, '2001-05-16 16:20:20', '2000-07-17 08:35:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('96', '1', '11', 'Sit iusto temporibus sit voluptatem est alias. Voluptas autem necessitatibus ratione aperiam labore rerum suscipit repudiandae. Ipsa aut ut quisquam voluptas. Eos velit optio dolor porro voluptatum dolorum.', 'voluptate', 1712774, NULL, '2011-11-16 17:01:02', '2002-03-11 08:58:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('97', '1', '79', 'A voluptatibus exercitationem eaque. Vel iste repudiandae dolores sit sit at ex. Non perspiciatis aspernatur aut soluta.', 'iure', 590276, NULL, '2011-07-15 13:41:45', '1997-04-28 21:38:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('98', '5', '89', 'Commodi assumenda a asperiores facere pariatur. Qui quam voluptates velit voluptas natus perferendis. Repellat explicabo ex at quis placeat ipsum sint. Magni dolorem sint dolorem similique. Dolores ipsa saepe non aut autem rerum dolor.', 'cum', 944622440, NULL, '1973-04-08 09:04:34', '2009-02-05 15:52:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('99', '3', '31', 'Ea sapiente possimus sit est aliquid. Eum cupiditate animi ipsam voluptatum occaecati assumenda. Ratione fuga sit libero occaecati ut. Quidem omnis dolores tenetur unde delectus.', 'quos', 62812, NULL, '2013-08-03 15:31:25', '1971-04-04 03:33:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('100', '4', '49', 'Quia dolor et delectus. Aut molestiae praesentium recusandae. Soluta inventore vel enim velit et cum recusandae.', 'temporibus', 0, NULL, '1989-09-13 11:42:57', '1976-11-23 18:39:38');



CREATE table if not exists `photo_albums` (
	`id` SERIAL,
	`name` varchar(255) DEFAULT NULL,
    `user_id` BIGINT UNSIGNED DEFAULT NULL,

    FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE SET NULL,
  	PRIMARY KEY (`id`)
);

INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('1', 'ratione', '6');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('2', 'iure', '55');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('3', 'ratione', '18');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('4', 'debitis', '11');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('5', 'consectetur', '25');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('6', 'quaerat', '29');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('7', 'explicabo', '59');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('8', 'repellendus', '24');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('9', 'nemo', '75');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('10', 'numquam', '52');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('11', 'consequuntur', '15');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('12', 'quibusdam', '25');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('13', 'doloribus', '9');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('14', 'modi', '51');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('15', 'illum', '33');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('16', 'amet', '44');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('17', 'ut', '40');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('18', 'in', '84');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('19', 'accusamus', '95');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('20', 'in', '23');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('21', 'quis', '46');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('22', 'illo', '42');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('23', 'debitis', '89');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('24', 'praesentium', '12');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('25', 'quia', '17');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('26', 'voluptatem', '17');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('27', 'error', '6');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('28', 'pariatur', '81');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('29', 'dolor', '6');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('30', 'quibusdam', '15');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('31', 'fugiat', '76');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('32', 'fuga', '62');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('33', 'doloremque', '79');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('34', 'nihil', '66');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('35', 'aut', '96');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('36', 'veniam', '63');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('37', 'eveniet', '37');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('38', 'est', '69');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('39', 'minima', '62');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('40', 'dolorem', '61');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('41', 'natus', '83');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('42', 'error', '100');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('43', 'a', '42');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('44', 'ullam', '86');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('45', 'consequatur', '92');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('46', 'ducimus', '18');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('47', 'et', '42');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('48', 'et', '93');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('49', 'consequatur', '44');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('50', 'ratione', '44');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('51', 'ea', '73');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('52', 'est', '41');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('53', 'laboriosam', '84');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('54', 'quidem', '32');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('55', 'velit', '97');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('56', 'aut', '62');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('57', 'aut', '49');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('58', 'nihil', '79');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('59', 'consequatur', '40');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('60', 'voluptas', '47');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('61', 'fuga', '31');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('62', 'voluptatem', '46');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('63', 'delectus', '54');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('64', 'aut', '70');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('65', 'corrupti', '51');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('66', 'saepe', '77');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('67', 'quaerat', '46');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('68', 'voluptatem', '99');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('69', 'ut', '28');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('70', 'qui', '8');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('71', 'et', '70');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('72', 'delectus', '30');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('73', 'rerum', '69');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('74', 'cumque', '5');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('75', 'molestiae', '27');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('76', 'est', '89');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('77', 'sed', '88');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('78', 'et', '99');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('79', 'accusamus', '21');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('80', 'ipsam', '38');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('81', 'aperiam', '82');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('82', 'odit', '20');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('83', 'est', '9');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('84', 'tempore', '100');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('85', 'veritatis', '61');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('86', 'est', '63');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('87', 'nostrum', '75');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('88', 'fugiat', '89');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('89', 'veniam', '9');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('90', 'dolores', '90');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('91', 'qui', '51');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('92', 'fuga', '58');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('93', 'dolorem', '23');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('94', 'nobis', '81');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('95', 'consequatur', '99');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('96', 'provident', '97');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('97', 'magnam', '13');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('98', 'asperiores', '75');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('99', 'voluptas', '11');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('100', 'nostrum', '34');

CREATE TABLE  if not exists`photos` (
	id SERIAL PRIMARY KEY,
	`album_id` BIGINT unsigned NOT NULL,
	`media_id` BIGINT unsigned NOT NULL,

	FOREIGN KEY (album_id) REFERENCES photo_albums(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (media_id) REFERENCES media(id) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('1', '62', '51');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2', '15', '26');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('3', '69', '13');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('4', '90', '70');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('5', '84', '56');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('6', '19', '9');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('7', '26', '29');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('8', '21', '100');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('9', '84', '77');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('10', '72', '78');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('11', '33', '19');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('12', '55', '3');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('13', '5', '11');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('14', '8', '8');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('15', '100', '11');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('16', '24', '47');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('17', '54', '72');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('18', '83', '86');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('19', '60', '29');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('20', '21', '10');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('21', '89', '90');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('22', '13', '62');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('23', '39', '25');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('24', '32', '10');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('25', '18', '1');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('26', '29', '16');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('27', '52', '91');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('28', '58', '35');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('29', '5', '15');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('30', '28', '14');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('31', '17', '92');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('32', '17', '31');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('33', '70', '78');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('34', '38', '10');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('35', '43', '87');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('36', '94', '53');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('37', '69', '81');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('38', '83', '80');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('39', '68', '23');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('40', '2', '73');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('41', '34', '71');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('42', '15', '5');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('43', '82', '78');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('44', '76', '92');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('45', '80', '2');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('46', '11', '89');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('47', '40', '45');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('48', '74', '85');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('49', '82', '66');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('50', '65', '77');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('51', '67', '98');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('52', '10', '8');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('53', '65', '33');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('54', '72', '13');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('55', '57', '78');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('56', '12', '76');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('57', '88', '96');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('58', '1', '56');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('59', '56', '20');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('60', '56', '10');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('61', '74', '6');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('62', '38', '23');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('63', '12', '80');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('64', '81', '35');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('65', '78', '95');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('66', '59', '11');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('67', '24', '70');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('68', '33', '48');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('69', '78', '9');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('70', '23', '52');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('71', '91', '1');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('72', '95', '35');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('73', '70', '69');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('74', '8', '70');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('75', '38', '21');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('76', '96', '63');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('77', '7', '81');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('78', '76', '71');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('79', '57', '44');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('80', '7', '40');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('81', '92', '60');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('82', '31', '87');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('83', '36', '46');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('84', '73', '61');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('85', '33', '41');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('86', '52', '35');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('87', '26', '58');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('88', '33', '23');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('89', '25', '57');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('90', '84', '10');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('91', '58', '32');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('92', '87', '10');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('93', '93', '11');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('94', '71', '71');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('95', '22', '51');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('96', '29', '95');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('97', '13', '66');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('98', '54', '64');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('99', '35', '40');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('100', '10', '96');


ALTER TABLE `profiles` ADD CONSTRAINT fk_photo_id
    FOREIGN KEY (photo_id) REFERENCES photos(id)
    ON UPDATE CASCADE ON DELETE set NULL;