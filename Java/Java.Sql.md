# java.sql 介绍

## Package java.sql Description

Provides the API for accessing and processing data stored in a data source (usually a relational database) using the JavaTM programming language. This API includes a framework whereby different drivers can be installed dynamically to access different data sources. Although the JDBCTM API is mainly geared to passing SQL statements to a database, it provides for reading and writing data from any data source with a tabular format. The reader/writer facility, available through the javax.sql.RowSet group of interfaces, can be customized to use and update data from a spread sheet, flat file, or any other tabular data source.

提供了一组使用 Java 编程语言访问和处理存储在数据库中的数据的 API。这组 API 包括一个供不同的驱动可以动态

### What the java.sql Package Contains

The java.sql package contains API for the following:

* Making a connection with a database via the DriverManager facility

  * DriverManager class -- makes a connection with a driver
  * SQLPermission class -- provides permission when code running within a Security Manager, such as an applet, attempts to set up a logging stream through the DriverManager
  * Driver interface -- provides the API for registering and connecting drivers based on JDBC technology ("JDBC drivers"); generally used only by the DriverManager class
  * DriverPropertyInfo class -- provides properties for a JDBC driver; not used by the general user

* Sending SQL statements to a database
  * Statement -- used to send basic SQL statements
  * PreparedStatement -- used to send prepared statements or basic SQL statements (derived from Statement)
  * CallableStatement -- used to call database stored procedures (derived from PreparedStatement)
  * Connection interface -- provides methods for creating statements and managing connections and their properties
  * Savepoint -- provides savepoints in a transaction

* Retrieving and updating the results of a query
  * ResultSet interface

* Standard mappings for SQL types to classes and interfaces in the Java programming language
  * Array interface -- mapping for SQL ARRAY
  * Blob interface -- mapping for SQL BLOB
  * Clob interface -- mapping for SQL CLOB
  * Date class -- mapping for SQL DATE
  * NClob interface -- mapping for SQL NCLOB
  * Ref interface -- mapping for SQL REF
  * RowId interface -- mapping for SQL ROWID
  * Struct interface -- mapping for SQL STRUCT
  * SQLXML interface -- mapping for SQL XML
  * Time class -- mapping for SQL TIME
  * Timestamp class -- mapping for SQL TIMESTAMP
  * Types class -- provides constants for SQL types

* Custom mapping an SQL user-defined type (UDT) to a class in the Java programming language
  * SQLData interface -- specifies the mapping of a UDT to an instance of this class
  * SQLInput interface -- provides methods for reading UDT attributes from a stream
  * SQLOutput interface -- provides methods for writing UDT attributes back to a stream

* Metadata
  * DatabaseMetaData interface -- provides information about the database
  * ResultSetMetaData interface -- provides information about the columns of a ResultSet object
  * ParameterMetaData interface -- provides information about the parameters to PreparedStatement commands

* Exceptions
  * SQLException -- thrown by most methods when there is a problem accessing data and by some methods for other reasons
  * SQLWarning -- thrown to indicate a warning
  * DataTruncation -- thrown to indicate that data may have been truncated
  * BatchUpdateException -- thrown to indicate that not all commands in a batch update executed successfully