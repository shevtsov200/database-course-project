use CourseProject;

GRANT EXECUTE ON dbo.SelectUserRole TO db_client, db_hr, db_manager;
GRANT EXECUTE ON dbo.SelectUserLogin TO db_client;

GRANT EXECUTE ON dbo.SelectUserBankAccounts TO db_client;
GRANT EXECUTE ON dbo.TransferFunds TO db_client;
GRANT EXECUTE ON dbo.SelectUserBankAccountsNumbers TO db_client;
GRANT EXECUTE ON dbo.SelectUserTransactions TO db_client;
GRANT EXECUTE ON dbo.SelectCities TO db_manager, db_hr;
GRANT EXECUTE ON dbo.SelectBanksWhereCity TO db_hr;

GRANT EXECUTE ON dbo.InsertClient TO db_manager, db_client;
GRANT EXECUTE ON dbo.RegisterClient TO db_manager;

GRANT EXECUTE ON dbo.InsertEmployee TO db_hr;
GRANT EXECUTE ON dbo.SelectPositions TO db_hr;

GRANT EXECUTE ON dbo.InsertBankAccount TO db_client;
GRANT EXECUTE ON dbo.SelectCurrentClient TO db_client;
GRANT EXECUTE ON dbo.InsertTransactionToHistory TO db_client;
GRANT EXECUTE ON dbo.SelectManagers TO db_client;
GRANT EXECUTE ON dbo.InsertFeedback TO db_client;

GRANT EXECUTE ON dbo.SelectCurrentManager TO db_manager;
GRANT EXECUTE ON dbo.SelectCurrentManagerFeedback TO db_manager;

GRANT EXECUTE ON dbo.SelectManagersRating TO db_hr;
GRANT EXECUTE ON dbo.RegisterEmployee TO db_hr;
GRANT EXECUTE ON dbo.SelectEmployees TO db_hr;
GRANT EXECUTE ON dbo.DeleteEmployee TO db_hr;
GRANT EXECUTE ON dbo.SelectEmployeeInformation TO db_hr;
GRANT EXECUTE ON dbo.SelectClientInformation TO db_client;

GRANT EXECUTE ON dbo.SelectClients TO db_manager;
GRANT EXECUTE ON dbo.UpdateClient TO db_manager;

GRANT EXECUTE ON dbo.UpdateEmployee TO db_hr;