CREATE TABLE `client` (
  `id` int PRIMARY KEY,
  `name` varchar(255),
  `cpf` int,
  `telephone` int,
  `status_delivery` varchar(255)
);

CREATE TABLE `delivery` (
  `id` int PRIMARY KEY,
  `id_owner` int,
  `date_start` date,
  `date_forecast` date,
  `status` varchar(255),
  `id_company` int
);

CREATE TABLE `company` (
  `id` int PRIMARY KEY,
  `name` varchar(255),
  `telephon` int,
  `status_delivery` varchar(255)
);

ALTER TABLE `delivery` ADD FOREIGN KEY (`id_owner`) REFERENCES `client` (`id`);

ALTER TABLE `delivery` ADD FOREIGN KEY (`id_company`) REFERENCES `company` (`id`);

ALTER TABLE `company` ADD FOREIGN KEY (`status_delivery`) REFERENCES `delivery` (`status`);

ALTER TABLE `client` ADD FOREIGN KEY (`status_delivery`) REFERENCES `company` (`status_delivery`);
