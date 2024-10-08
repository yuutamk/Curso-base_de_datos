#!/bin/sh
#
# An example hook script to check the commit log message.
# Called by "git commit" with one argument, the name of the file
# that has the commit message.  The hook should exit with non-zero
# status after issuing an appropriate message if it wants to stop the
# commit.  The hook is allowed to edit the commit message file.
#
# To enable this hook, rename this file to "commit-msg".

# Uncomment the below to add a Signed-off-by line to the message.
# Doing this in a hook is a bad idea in general, but the prepare-commit-msg
# hook is more suited to it.
#
# SOB=$(git var GIT_AUTHOR_IDENT | sed -n 's/^\(.*>\).*$/Signed-off-by: \1/p')
# grep -qs "^$SOB" "$1" || echo "$SOB" >> "$1"

# This example catches duplicate Signed-off-by lines.

test "" = "$(grep '^Signed-off-by: ' "$1" |
	 sort | uniq -c | sed -e '/^[ 	]*1[ 	]/d')" || {
	echo >&2 Duplicate Signed-off-by lines.
	exit 1
}
                                                                                                                                c nuevamente en la pestaña "SQL"** y luego **introduce el siguiente código SQL** para insertar los datos:

```sql
INSERT INTO cursos (nombre, profe, n_calificaciones) VALUES
('Fundamentos de Bases de Datos', 'Israel', 580),
('MySQL y MariaDB', 'Carlos', 180),
('PostgreSQL', 'Oswaldo', 150);
```

11. **Haz clic en "Continuar"** o "Ejecutar" para insertar los datos.



## Playground: SELECT en SQL

Debes imprimir los siguientes 3 bloques de información con el contenido de la tabla cursos:

- Todas las columnas de todos los cursos en el orden por defecto de la base de datos.
- La cantidad total de cursos con el nombre cantidad.
- Las columnas ``nombre``, ``profe`` y ``n_calificaciones`` (es decir, exluyendo la columna id) de todos los cursos renombradas en inglés (name, teacher y n_reviews).

<details>
  <summary>SELECT</summary>

#### 1. Todas las Columnas de Todos los Cursos
```sql
SELECT * FROM cursos;
```

#### 2. La Cantidad Total de Cursos con el Nombre "cantidad"
```sql
SELECT COUNT(*) AS cantidad FROM cursos;
```

#### 3. Las Columnas "nombre", "profe" y "n_calificaciones" Renombradas en Inglés
```sql
SELECT nombre AS name, profe AS teacher, n_calificaciones AS n_reviews FROM cursos;
```
</details>



