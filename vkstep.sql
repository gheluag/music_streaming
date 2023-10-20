DROP DATABASE IF EXISTS vk;
CREATE DATABASE vk;
USE vk;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL PRIMARY KEY, 
    firstname VARCHAR(50),
    lastname VARCHAR(50) COMMENT 'Фамилия',
    email VARCHAR(120) UNIQUE,
    phone BIGINT, 
    INDEX users_phone_idx(phone),
    INDEX users_firstname_lastname_idx(firstname, lastname)
);

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('1', 'Jakob', 'Olson', 'vwuckert@example.org', '79949628732');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('2', 'Charlie', 'Langosh', 'koepp.crystel@example.com', '79283279382');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('3', 'Lillian', 'Mante', 'denesik.emile@example.com', '79323149491');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('4', 'Noble', 'Kuphal', 'lockman.lysanne@example.com', '79006312481');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('5', 'Cathy', 'Hand', 'jazmin.casper@example.net', '79728859973');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('6', 'Kristin', 'Oberbrunner', 'o\'reilly.kris@example.com', '79715918244');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('7', 'Catherine', 'Brekke', 'equitzon@example.org', '79882518406');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('8', 'Kiana', 'Reichel', 'vquitzon@example.org', '79163165267');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('9', 'Kiera', 'Rosenbaum', 'douglas.narciso@example.org', '79922687830');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('10', 'Cathy', 'Spinka', 'ransom.gorczany@example.net', '79459949463');

DROP TABLE IF EXISTS messages;
CREATE TABLE messages (
	id SERIAL PRIMARY KEY,
	from_user_id BIGINT UNSIGNED NOT NULL,
    to_user_id BIGINT UNSIGNED NOT NULL,
    body TEXT,
    created_at DATETIME DEFAULT NOW(),
    INDEX messages_from_user_id (from_user_id),
    INDEX messages_to_user_id (to_user_id),
    FOREIGN KEY (from_user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (to_user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('1', '1', '3', 'Fugit et laboriosam facere. Odit quia tempora non maxime. Aut quibusdam sit dolorem dolor.', '2018-10-18 16:39:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('2', '10', '2', 'Libero quae eos maiores maxime neque vero voluptatem. Qui voluptas sint voluptatem sit. Est eum libero repellat nostrum quaerat occaecati dolores. Ducimus incidunt beatae laudantium.', '1976-05-31 06:47:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('3', '1', '8', 'Nisi facere quasi dolorum quis temporibus. Sunt et distinctio dolorem voluptatem sed quod voluptatem. Placeat ad recusandae libero fugit.', '1976-06-29 23:19:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('4', '1', '8', 'Tempore vel voluptas voluptate et et ea. Molestias et suscipit velit earum autem aspernatur. Rerum maxime qui quod aperiam ea quia. Hic animi numquam id velit dolorem consequuntur ut. Numquam aut provident neque est.', '1984-04-15 20:47:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('5', '8', '7', 'Debitis distinctio quod ut. Laborum itaque odio quasi id consequatur est dolore aliquid. Ex velit amet molestiae eaque consequatur aliquid minima.', '1976-09-16 14:21:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('6', '10', '8', 'Iste sunt eveniet facilis dolorem praesentium repellendus. Eos tempore eveniet quasi quidem repellendus saepe. Sit aut cum aut molestiae in. Explicabo deserunt voluptas vel ducimus vitae.', '1971-03-18 23:02:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('7', '4', '9', 'Explicabo quam ut non accusamus. Eaque voluptas sunt impedit dolorem temporibus. Repellat eveniet labore magni quia.', '2003-01-25 18:24:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('8', '2', '9', 'Possimus asperiores minus aut commodi voluptas et cupiditate quidem. Sequi dolorem modi eos eum dolores aut atque. Quod quis perspiciatis quibusdam voluptates accusantium consequatur et porro. Id explicabo porro repellendus voluptas et numquam culpa.', '2007-01-10 01:42:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('9', '9', '2', 'Quia neque atque nihil aliquam aperiam aliquam voluptates et. Neque magnam voluptas perferendis doloribus. Voluptatibus in quod placeat repellendus sit.', '1985-06-10 03:26:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('10', '5', '7', 'Ea veritatis consequatur accusamus dicta ullam. Rem ipsam non eligendi. Nostrum quis temporibus et est quia. Omnis aut mollitia fuga voluptas et.', '1992-06-06 22:13:31');


DROP TABLE IF EXISTS friend_requests;
CREATE TABLE friend_requests (
	initiator_user_id BIGINT UNSIGNED NOT NULL,
    target_user_id BIGINT UNSIGNED NOT NULL,
    `status` ENUM('requested', 'approved', 'unfriended', 'declined'),
	requested_at DATETIME DEFAULT NOW(),
	confirmed_at DATETIME,
	INDEX (initiator_user_id),
    INDEX (target_user_id),
    PRIMARY KEY (initiator_user_id, target_user_id),
    FOREIGN KEY (initiator_user_id) REFERENCES users(id) ON UPDATE RESTRICT ON DELETE CASCADE, 
    FOREIGN KEY (target_user_id) REFERENCES users(id) ON UPDATE RESTRICT ON DELETE CASCADE
 
);

INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('1', '4', 'declined', '2022-08-10 01:48:11', '1980-10-17 06:42:13');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('2', '5', 'declined', '1996-06-12 10:55:10', '2022-12-03 13:41:44');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('3', '4', 'approved', '1982-10-28 10:37:11', '2015-07-03 15:15:20');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('5', '1', 'approved', '1976-01-23 15:54:18', '2001-07-16 19:10:23');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('6', '6', 'approved', '1970-05-08 16:48:52', '1987-11-14 15:59:42');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('7', '2', 'unfriended', '2019-03-16 02:26:01', '1999-08-11 12:23:06');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('7', '6', 'unfriended', '2013-08-12 03:55:48', '1990-04-08 16:11:34');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('9', '4', 'unfriended', '1997-08-05 19:23:55', '2000-04-12 05:19:17');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('10', '7', 'approved', '1994-12-13 08:10:08', '1979-05-05 06:41:36');



DROP TABLE IF EXISTS communities;
CREATE TABLE communities(
	id SERIAL PRIMARY KEY,
	name VARCHAR(150),
    INDEX communities_name_idx(name)
);

INSERT INTO `communities` (`id`, `name`) VALUES ('7', 'at');
INSERT INTO `communities` (`id`, `name`) VALUES ('2', 'consequatur');
INSERT INTO `communities` (`id`, `name`) VALUES ('6', 'cumque');
INSERT INTO `communities` (`id`, `name`) VALUES ('8', 'distinctio');
INSERT INTO `communities` (`id`, `name`) VALUES ('3', 'dolorum');
INSERT INTO `communities` (`id`, `name`) VALUES ('10', 'maxime');
INSERT INTO `communities` (`id`, `name`) VALUES ('9', 'molestias');
INSERT INTO `communities` (`id`, `name`) VALUES ('1', 'omnis');
INSERT INTO `communities` (`id`, `name`) VALUES ('5', 'quisquam');
INSERT INTO `communities` (`id`, `name`) VALUES ('4', 'sequi');

DROP TABLE IF EXISTS users_communities;
CREATE TABLE users_communities(
	user_id BIGINT UNSIGNED NOT NULL,
	community_id BIGINT UNSIGNED NOT NULL,
    PRIMARY KEY (user_id, community_id),
    FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (community_id) REFERENCES communities(id) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('1', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('2', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('3', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('4', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('5', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('6', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('7', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('8', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('9', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('10', '8');


DROP TABLE IF EXISTS media_types;
CREATE TABLE media_types(
	id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    created_at DATETIME DEFAULT NOW()
);

INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('1', 'photo', '2005-03-06 12:07:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('2', 'video', '1980-12-23 16:20:58');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('3', 'music', '1991-07-25 01:53:29');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES ('4', 'file', '1972-05-26 20:24:32');


DROP TABLE IF EXISTS media;
CREATE TABLE media(
	id SERIAL PRIMARY KEY,
    media_type_id BIGINT UNSIGNED,
    user_id BIGINT UNSIGNED NOT NULL,
  	body text,
    filename VARCHAR(255),
    size INT,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	INDEX (user_id),
    FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (media_type_id) REFERENCES media_types(id) ON UPDATE CASCADE ON DELETE SET NULL
);

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `created_at`, `updated_at`) VALUES ('1', '4', '3', 'Aut repellat eum sequi assumenda vero. Error quaerat illum quia et aut officiis dolorum. Minus ut et cupiditate ea.', 'quaerat', 7, '2017-06-18 08:34:23', '2017-03-19 09:04:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `created_at`, `updated_at`) VALUES ('2', '5', '2', 'Aut consequatur molestias voluptas quia eos doloribus perferendis est. Voluptates libero voluptates ullam maiores veniam. Quasi quod autem voluptatem esse et consequuntur. Minus omnis eum eum animi.', 'fugit', 39276336, '1991-08-28 02:27:15', '1998-05-15 19:57:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `created_at`, `updated_at`) VALUES ('3', '3', '2', 'Cumque earum voluptas ullam eligendi dolores eos et veniam. Deserunt provident et tenetur omnis ratione ratione. Quam animi distinctio culpa sed voluptates corporis beatae. Nihil vero officia sint veniam quis omnis.', 'omnis', 354, '1996-10-11 16:51:15', '1996-05-08 12:42:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `created_at`, `updated_at`) VALUES ('4', '4', '4', 'Cumque illum nihil eum quo quis. Et error nihil culpa consectetur.', 'fuga', 5, '1985-12-01 10:37:45', '1996-01-10 20:52:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `created_at`, `updated_at`) VALUES ('5', '3', '5', 'Quos impedit dicta facere eaque. Blanditiis cupiditate impedit asperiores et illo. Illum expedita dolores tenetur quae molestiae quidem. Provident nihil possimus eius voluptatem.', 'corporis', 3072960, '2009-07-29 17:35:55', '1975-05-08 10:46:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `created_at`, `updated_at`) VALUES ('6', '4', '3', 'Commodi vero et consequuntur quia mollitia impedit. Delectus voluptas sequi fugiat possimus sed sunt ipsum.', 'unde', 0, '2018-05-23 08:35:45', '1973-10-26 14:05:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `created_at`, `updated_at`) VALUES ('7', '3', '8', 'Architecto culpa quis voluptatem qui quas. Ad occaecati aliquid ut. Aut quia alias ut adipisci. Ex rerum et laboriosam voluptatibus dolorum ipsam.', 'non', 0, '2023-03-05 13:06:20', '1995-01-12 00:35:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `created_at`, `updated_at`) VALUES ('8', '2', '6', 'Nihil et voluptatem nobis eaque commodi non dolores. Omnis quisquam officia delectus ratione et. Dolor dolorem sed qui veniam minus aut quia.', 'dolorem', 4, '1996-09-07 16:41:37', '1981-08-09 06:56:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `created_at`, `updated_at`) VALUES ('9', '4', '10', 'Sint architecto eius fuga sequi eveniet numquam consequuntur. Error dolorem quia beatae illum similique similique. Nemo ab voluptas autem error rerum et. Nisi quia distinctio consequuntur amet et.', 'ipsa', 906, '2022-03-15 17:52:14', '1971-12-13 18:40:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `created_at`, `updated_at`) VALUES ('10', '4', '9', 'Tenetur sequi non sunt quia impedit accusamus voluptate. Est perspiciatis dolorem quidem dolor sed fugit. Voluptate dolore sit consequuntur vero voluptatem et.', 'ab', 6058, '1992-04-22 08:41:20', '2010-12-31 03:50:36');


DROP TABLE IF EXISTS likes;
CREATE TABLE likes(
	id SERIAL PRIMARY KEY,
    user_id BIGINT UNSIGNED NOT NULL,
    media_id BIGINT UNSIGNED NOT NULL,
    created_at DATETIME DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users(id)  ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (media_id) REFERENCES media(id)  ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('1', '5', '4', '1976-11-01 22:59:09');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('2', '10', '1', '1979-01-15 05:35:59');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('3', '6', '9', '1970-12-30 11:11:30');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('4', '9', '1', '1987-12-17 13:39:07');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('5', '7', '10', '1997-10-18 18:21:04');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('6', '10', '1', '1981-07-18 23:06:20');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('7', '2', '6', '2013-06-19 04:52:29');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('8', '7', '10', '2014-01-23 15:11:54');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('9', '3', '9', '1985-05-21 08:09:19');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('10', '8', '10', '2005-11-10 05:33:58');


DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles` (
	user_id SERIAL PRIMARY KEY,
    gender CHAR(1),
    birthday DATE,
	photo_id BIGINT UNSIGNED,
    created_at DATETIME DEFAULT NOW(),
    hometown VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES users(id)  ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (photo_id) REFERENCES media(id)  ON UPDATE CASCADE ON DELETE SET null
    );
    
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('1', 'f', '2003-06-01', '4', '2017-05-23 16:44:19', 'Lake Eldredmouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('2', 'm', '2015-03-30', '9', '1985-02-02 06:36:12', 'East Arianna');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('3', 'f', '2005-04-10', '3', '2018-08-18 03:50:02', 'Urielborough');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('4', 'f', '1995-11-20', '9', '2015-01-04 16:57:40', 'New Newell');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('5', 'f', '2006-02-26', '1', '1990-08-22 15:12:37', 'Kiehnfurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('6', 'f', '1998-01-21', '5', '1978-01-09 17:28:39', 'Eleanoraside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('7', 'm', '2006-10-26', '3', '1982-04-08 09:29:26', 'Grahamtown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('8', 'm', '2019-12-20', '3', '1988-04-29 19:28:16', 'New Tevinborough');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('9', 'f', '1996-04-08', '8', '1973-12-10 01:49:13', 'South Haileyborough');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('10', 'm', '1990-05-12', '10', '2009-08-15 06:02:10', 'Port Averyborough');
