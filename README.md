BloodDonors
Find Blood Donors on Bing MAPS - ASP.NET MVC4

The purpose of this project is to help people locate a blood donor of a particular blood group in their area.

homeissuesdiscussions
Locate Blood Donors using Online Maps
The objective is to Help people who need to find a particular blood group donor, the users will be able to locate a nearest donors using Ipad or Android devices . 

The invitation is open for ASP.net developers. The project will be in ASP.NET MVC4. 

## Database Setup

To set up the database for the Online Blood Donation Bank Management System, follow these steps:

1. Open SQL Server Management Studio (SSMS) or any other SQL client tool.
2. Connect to your SQL Server instance.
3. Open the `DatabaseSchema.sql` script file located in the `Online Blood Donation management System/Database/` directory.
4. Execute the script to create the database schema, including tables, primary keys, and foreign keys.

## Updating the Connection String

After creating the database, update the connection string in the `Web.Config` file to connect to the newly created database. Follow these steps:

1. Open the `Web.Config` file located in the root directory of the project.
2. Locate the `<connectionStrings>` section.
3. Update the `connectionString` attribute of the `BloodDonationDB` connection string with the appropriate server name, database name, user ID, and password.

Example:
```xml
<connectionStrings>
  <add name="BloodDonationDB" connectionString="Server=your_server_name;Database=BloodDonationDB;User Id=your_user_id;Password=your_password;" providerName="System.Data.SqlClient" />
</connectionStrings>
```
