create table Pini(
	code varchar
)

insert into Pini values
(234432),
(23345),
('sqfe4'),
(123&3),
(67424),
(7895432),
(12312)

SELECT *
FROM Pini
WHERE code ~*'^[0-9]{5,6}$';


