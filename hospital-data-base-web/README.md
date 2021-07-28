# Persistence Project

Grade: 19

Nice work!

Members: 

- Harold Villanueva ( HarryLexvb )
- Cledy Becerra ( cledybs )
- Massiel Oviedo ( Massielovi )
- Hillary Huaman ( Hillakass )


Youtube URL: https://youtu.be/Sexs70DIs5c

---

This project is about interconectivity between the information that is stored in the backend and the information that is presented to the user by the frontend. In this project we are gonna use the following tools:

- NodeJS as our main server and backend engine (preferred) but other options like Nginx and PHP are also allowed.
- PostgreSQL in the persistence layer (required).
- HTML, CSS and JS in the frontend side. Here you will be able to use libraries and propose your own design to make your work easier, I recommend Bootstrap and JQuery but you are free to use any other ones. Frameworks (DJango, Laravel, etc) are not allowed.

Considering the technology above our task is to build a simplified online health system with the following features:

- [ ] Log in/out and user authentication for physicians and administrator only ( not patients ).
- [ ] A physician should be able to add, edit and delete patients.
- [ ] A physician should be able to visualize his list of patients. 
- [ ] A physician should be able to search and filter his patients list.
- [ ] An administrator has the role to create, edit and delete physicians but not patients directly.
- [ ] When a physician is deleted by an administrator all his patients should be removed too.
- [ ] Consider appropriate error messages, for example when the user inserts an incorrect username or password.

## Persistence

- Connect to your PostreSQL instance using Docker or your native installation.
- Consider the creation of the following tables: `Physicians`, `Patients`, `Access`, where the last one should be a table storing all the login information ( username, password, role )

#### Physicians table

| id        | name        | email                | license_id | specialty    |
|-----------|-------------|----------------------|------------|--------------|
| 1         | Dr. Strange | dr.strange@medic.com | 12345      | neurosurgeon |
| 2         | Dr. House   | dr.house@medic.com   | 54321      | internist    |

Above table presents the structure of the Physicians table with some sample data, in this case there are 2 doctors, no foreign keys needed here.

#### Patients table

| id | doctor_id | name      | age | birthday   | phone     |
|----|-----------|-----------|-----|------------|-----------|
| 1  | 1         | Patient 1 | 20  | 04/04/2000 | 999123456 |

Considering that a patient should have a physician assigned to it we should use a foreign key to associate a particular patient with a physician. Remember that the only one that can create a patient is a physician. In the above example `Patient 1` is assigned to `Dr. Strange`.

#### Access table

| id | doctor_id | username  | password | role      |
|----|-----------|-----------|----------|-----------|
| 1  | 1         | drstrange | p4ssw0rd | physician |
| 2  | NULL      | admin     | admin    | admin     |

Since we are considering user authentication this table can be used to search for a particular username and password and get information about the person that is associated with it. If the user is a physician then we should present the features available to it. In the other case, if the user is an admin then we should present administrator options like create, edit and delete physicians.

# Deployment and grading

- Once your system is completed ( or not ) record a video of up to 10 minutes highlighting and explaining your features and your code either in spanish or english. Your video link should be inserted at the begining of this file in `Youtube URL`.
- All your source code for the frontend, backend and persitence layer should be included in this repository organized within folders.
- All your static SQL instructions (tables creation and initial insertions) should be stored in another folder as an .sql file

# Suggestions

- Create a single file to store your database credentials
- Organize your files based on the roles of a user
- Create a single entity that handles database connection and queries.

# Notes

<Write here any additional instructions for me to build your project, including information to connect to the database and tools or commands you are using>

-Para el servidor se usa xampp, debe dirigirse a la configuracion de apache y buscar la opcion `PHP(php.ini)` luego debera buscar las intrucciones `extension=pdo_pgsql` y `extension=pgsql`, luego quitarles el punto y coma para que asi el servidor se conecte a posgrest.
-Para cargar el `myDB.backup` primero debera ir a la carpeta donde se instalo postgreSQL(en mi caso fue en el disco local C), se ubica en la carpeta 13 luego en bin copia la ruta de la carpeta bin `C:\Program Files\PostgreSQL\13\bin`; luego se dirigira a `pgAdmin` donde se ubicara en `File/Preferences/Binary Paths/PostgresSQL Binary Path` y ahi es donde pegara la ruta del bin (en mi caso fue `C:\Program Files\PostgreSQL\13\bin`) luego le da `refresh`. Ahora creamos una nueva base de datos `myDB` le hacemos anticlick y seleccionamos `Restore` ahi buscara el archivo `myDB.backup` que esta dentro de la carpeta `db`, luego le da a `sabe` y finalmente Refresca una vez mas y ya se podra visualizar las tablas.
-Para ejecutar el proyecto, ola debera tener dentro de la carpeta `C:\xampp\htdocs`, luego en el navegador solo debera poner `localhost/control 02`.













