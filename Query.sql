use haisanviethung;

SELECT * FROM PRODUCTS WHERE quantity>0 ORDER BY quantity ASC limit 10;


INSERT INTO `haisanviethung`.`categories` (`id`, `image`, `nameCategory`) VALUES ('1', 'wp-content/uploads/2020/01/icon_megamenu4.png', 'Ngao, sò, ốc');
INSERT INTO `haisanviethung`.`categories` (`id`, `image`, `nameCategory`) VALUES ('2', 'wp-content/uploads/2020/01/icon_megamenu6.png', 'Tôm các loại');
INSERT INTO `haisanviethung`.`categories` (`id`, `image`, `nameCategory`) VALUES ('3', 'wp-content/uploads/2020/01/icon_megamenu11.png', 'Cua, ghẹ');
INSERT INTO `haisanviethung`.`categories` (`id`, `image`, `nameCategory`) VALUES ('4', 'wp-content/uploads/2020/01/icon_megamenu8.png', 'Cá');
INSERT INTO `haisanviethung`.`categories` (`id`, `image`, `nameCategory`) VALUES ('5', 'wp-content/uploads/2020/01/icon_megamenu7.png', 'Mực, bạch tuộc');
INSERT INTO `haisanviethung`.`categories` (`id`, `image`, `nameCategory`) VALUES ('6', 'wp-content/uploads/2020/01/icon_megamenu9-1.png', 'Hải sản cao cấp');
INSERT INTO `haisanviethung`.`categories` (`id`, `image`, `nameCategory`) VALUES ('7', 'wp-content/uploads/2020/01/icon_megamenu10.png', 'Gia vị, sốt');


INSERT INTO `haisanviethung`.`admins` (`id`, `email`, `password`, `stt`, `username`) VALUES ('1', 'vt.arrow.06@gmail.com', '123456', b'0', 'hungkep12');
INSERT INTO `haisanviethung`.`admins` (`id`, `email`, `password`, `stt`, `username`) VALUES ('2', 'test1@gmail.com', '12345', b'0', 'test1');
INSERT INTO `haisanviethung`.`admins` (`id`, `email`, `password`, `stt`, `username`) VALUES ('3', 'test2@gmail.com', '123123', b'0', 'test2');

INSERT INTO `haisanviethung`.`users` (`id`, `displayName`, `email`, `fName`, `lName`, `password`, `stt`) VALUES ('1', 'hungkep12', 'vt.arrow.06@gmail.com', 'Nguyen Viet', 'Hung', 'nvh0610test', b'0');
INSERT INTO `haisanviethung`.`users` (`id`, `displayName`, `email`, `fName`, `lName`, `password`, `stt`) VALUES ('2', 'test', 'test@gmail.com', 'ftest', 'ltest', 'nvh0610test', b'0');
INSERT INTO `haisanviethung`.`users` (`id`, `displayName`, `email`, `fName`, `lName`, `password`, `stt`) VALUES ('3', 'test2', 'test2@gmail.com', 'ftest2', 'ltest2', 'nvh0610test', b'0');

INSERT INTO `haisanviethung`.`user_address` (`id`, `address`, `phone`, `idUser`) VALUES ('1', 'Kep12', '0868434000', '1');
INSERT INTO `haisanviethung`.`user_address` (`id`, `address`, `phone`, `idUser`) VALUES ('2', 'Hn', '123456', '2');
