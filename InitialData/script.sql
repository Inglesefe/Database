INSERT INTO `user` (`login`, `name`, `password`, `active`) VALUES ('leandrobaena@gmail.com', 'Leandro Baena Torres', SHA2('Prueba123', 512), 1);
INSERT INTO `role` (`name` ) VALUES ('Administradores');
INSERT INTO `user_role` (`iduser`, `idrole`) VALUES (1, 1);
INSERT INTO `application` (`name`) VALUES ('Autenticación');
INSERT INTO `application` (`name` ) VALUES ('Notificaciones');
INSERT INTO `application_role` (`idapplication`, `idrole`) VALUES (1, 1);
INSERT INTO `application_role` (`idapplication`, `idrole`) VALUES (2, 1);
INSERT INTO `template` (`name`, `content`) VALUES ('Notificación de error', '<p>Se ha generado un error en la aplicaci&oacute;n de Golden Web</p>
 <p>Se ha generado el registro #{id}# en la base de datos con el error</p>
 <p>La excepci&oacute;n tiene el siguiente mensaje: #{message}#</p>');
INSERT INTO `template` (`name`, `content`) VALUES ('Recuperación cotraseña', '<p>Ha solicitado la recuperaci&oacute;n de su contrase&ntilde;a.</p>
 <p>Para continuar con el proceso por favor haga clic en el enlace a continuaci&oacute;n.</p>
 <p>#{link}#</p>
 <p>Siga las instrucciones que all&iacute; encontrar&aacute; para cambiar la contrase&ntilde;a</p>');
INSERT INTO `template` (`name`, `content`) VALUES ('Contraseña cambiada con éxito', '<p>Su contrase&ntilde;a ha sido cambiada con &eacute;xito</p>');
