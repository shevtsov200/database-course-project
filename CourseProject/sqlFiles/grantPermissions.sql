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
GRANT EXECUTE ON dbo.RegisterClient TO db_manager, db_client;

GRANT EXECUTE ON dbo.InsertEmployee TO db_hr;
GRANT EXECUTE ON dbo.SelectPositions TO db_hr;

GRANT EXECUTE ON dbo.InsertBankAccount TO db_client;
GRANT EXECUTE ON dbo.SelectCurrentClient TO db_client;
GRANT EXECUTE ON dbo.InsertTransactionToHistory TO db_client;