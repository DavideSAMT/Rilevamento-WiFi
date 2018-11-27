delimiter //
CREATE TRIGGER ins_mac AFTER INSERT ON address 
FOR EACH ROW 
BEGIN
	INSERT INTO entrata (MAC_Address, Orario) VALUES(NEW.MAC_Address, NOW());
	INSERT INTO datipersonali (MAC_Address) VALUES(NEW.MAC_Address);
END;//
delimiter ;