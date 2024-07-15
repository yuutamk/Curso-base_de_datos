

-- Para la creación de un usuario se puede seguir la siguiente estructura:
    
        CREATE USER 'nombre_usuario'@'localhost' IDENTIFIED BY 'password';
    

-- Para eliminar un usuario:
    ...
        DROP USER 'nombre_usuario'@'localhost' 
    ...

-- Para darle privilegios aun usuario:   
    
-- Para tener todo los privilegios sobre todas las tablas posibles:
        
            GRANT ALL PRIVILEGES ON *.* 
        
-- En un formato general sería:


    GRANT
            privileges
        ON
            databases.tables
        TO
            user;
    FLUSH PRIVIILEGES;


-- Ejemplo: 

    GRANT All PRIVILEGES ON *.* TO 'jrueda'@'localhost';
    FLUSH PRIVILEGES;
