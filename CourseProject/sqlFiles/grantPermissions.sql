use CourseProject;

GRANT EXECUTE ON dbo.SelectUserRole TO db_client, db_hr, db_manager;
GRANT EXECUTE ON dbo.SelectUserLogin TO db_client;
GRANT EXECUTE ON dbo.SelectUserBankAccounts TO db_client;
GRANT EXECUTE ON dbo.TransferFunds TO db_client;
GRANT EXECUTE ON dbo.SelectUserBankAccountsNumbers TO db_client;
GRANT EXECUTE ON dbo.SelectCities TO db_manager, db_hr;
GRANT EXECUTE ON dbo.SelectBanksWhereCity TO db_hr;