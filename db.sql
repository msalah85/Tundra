IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_SafeValuesList', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_SafeValuesList'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_SafeValuesList', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_SafeValuesList'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_InvoicesSubPayments', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_InvoicesSubPayments'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_InvoicesSubPayments', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_InvoicesSubPayments'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_FirstAmountsForClientPaymentsTemp', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_FirstAmountsForClientPaymentsTemp'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_FirstAmountsForClientPaymentsTemp', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_FirstAmountsForClientPaymentsTemp'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_FirstAmountsForClientPaymentsTemp', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_FirstAmountsForClientPaymentsTemp'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesWorkshop', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesWorkshop'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesWorkshop', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesWorkshop'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesWorkshop', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesWorkshop'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesTransports', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesTransports'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesTransports', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesTransports'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesTransports', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesTransports'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesTowing', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesTowing'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesTowing', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesTowing'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesTowing', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesTowing'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesShipping', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesShipping'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesShipping', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesShipping'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesShipping', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesShipping'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesList', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesList'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesList', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesList'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesClearances', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesClearances'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesClearances', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesClearances'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesClearances', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesClearances'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesBuyers', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesBuyers'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesBuyers', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesBuyers'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesBuyers', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesBuyers'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_ClientPayments.temp', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ClientPayments.temp'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_ClientPayments.temp', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ClientPayments.temp'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_ClientPayments.temp', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ClientPayments.temp'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_ClientPayments', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ClientPayments'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_ClientPayments', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ClientPayments'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_ClientInvoicesTemp', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ClientInvoicesTemp'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_ClientInvoicesTemp', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ClientInvoicesTemp'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_CarSalesInvoices', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarSalesInvoices'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_CarSalesInvoices', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarSalesInvoices'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_CarSalesInvoices', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarSalesInvoices'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_CarMakerMode.temp', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarMakerMode.temp'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_CarMakerMode.temp', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarMakerMode.temp'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_CarInformation.temp', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarInformation.temp'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane3' , N'SCHEMA',N'dbo', N'VIEW',N'View_CarInformation.temp', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarInformation.temp'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_CarInformation.temp', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarInformation.temp'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_CarInformation.temp', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarInformation.temp'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_CarInformation', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarInformation'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane4' , N'SCHEMA',N'dbo', N'VIEW',N'View_CarInformation', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarInformation'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane3' , N'SCHEMA',N'dbo', N'VIEW',N'View_CarInformation', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarInformation'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_CarInformation', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarInformation'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_CarInformation', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarInformation'
GO
/****** Object:  StoredProcedure [dbo].[Years_GetNames]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Years_GetNames]
GO
/****** Object:  StoredProcedure [dbo].[Workshops_GetOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Workshops_GetOne]
GO
/****** Object:  StoredProcedure [dbo].[Workshops_GetNames]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Workshops_GetNames]
GO
/****** Object:  StoredProcedure [dbo].[Workshops_DeleteOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Workshops_DeleteOne]
GO
/****** Object:  StoredProcedure [dbo].[Workshops_AddEdit]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Workshops_AddEdit]
GO
/****** Object:  StoredProcedure [dbo].[Tundra_Cars]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Tundra_Cars]
GO
/****** Object:  StoredProcedure [dbo].[TransportCompanies_GetOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[TransportCompanies_GetOne]
GO
/****** Object:  StoredProcedure [dbo].[TransportCompanies_GetNames]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[TransportCompanies_GetNames]
GO
/****** Object:  StoredProcedure [dbo].[TransportCompanies_DeleteOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[TransportCompanies_DeleteOne]
GO
/****** Object:  StoredProcedure [dbo].[TransportCompanies_AddEdit]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[TransportCompanies_AddEdit]
GO
/****** Object:  StoredProcedure [dbo].[Transmissions_GetNames]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Transmissions_GetNames]
GO
/****** Object:  StoredProcedure [dbo].[TowingCompanies_GetOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[TowingCompanies_GetOne]
GO
/****** Object:  StoredProcedure [dbo].[TowingCompanies_GetNames]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[TowingCompanies_GetNames]
GO
/****** Object:  StoredProcedure [dbo].[TowingCompanies_DeleteOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[TowingCompanies_DeleteOne]
GO
/****** Object:  StoredProcedure [dbo].[TowingCompanies_AddEdit]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[TowingCompanies_AddEdit]
GO
/****** Object:  StoredProcedure [dbo].[Stores_GetOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Stores_GetOne]
GO
/****** Object:  StoredProcedure [dbo].[Stores_GetNames]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Stores_GetNames]
GO
/****** Object:  StoredProcedure [dbo].[Stores_DeleteOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Stores_DeleteOne]
GO
/****** Object:  StoredProcedure [dbo].[Stores_AddEdit]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Stores_AddEdit]
GO
/****** Object:  StoredProcedure [dbo].[Status_GetNames]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Status_GetNames]
GO
/****** Object:  StoredProcedure [dbo].[States_GetOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[States_GetOne]
GO
/****** Object:  StoredProcedure [dbo].[States_GetNames]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[States_GetNames]
GO
/****** Object:  StoredProcedure [dbo].[States_DeleteOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[States_DeleteOne]
GO
/****** Object:  StoredProcedure [dbo].[States_AddEdit]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[States_AddEdit]
GO
/****** Object:  StoredProcedure [dbo].[SiteCompanies_GetOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SiteCompanies_GetOne]
GO
/****** Object:  StoredProcedure [dbo].[Ships_GetOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Ships_GetOne]
GO
/****** Object:  StoredProcedure [dbo].[Ships_GetNames]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Ships_GetNames]
GO
/****** Object:  StoredProcedure [dbo].[Ships_DeleteOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Ships_DeleteOne]
GO
/****** Object:  StoredProcedure [dbo].[Ships_AddEdit]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Ships_AddEdit]
GO
/****** Object:  StoredProcedure [dbo].[ShipCompanies_GetOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[ShipCompanies_GetOne]
GO
/****** Object:  StoredProcedure [dbo].[ShipCompanies_GetNames]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[ShipCompanies_GetNames]
GO
/****** Object:  StoredProcedure [dbo].[ShipCompanies_DeleteOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[ShipCompanies_DeleteOne]
GO
/****** Object:  StoredProcedure [dbo].[ShipCompanies_AddEdit]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[ShipCompanies_AddEdit]
GO
/****** Object:  StoredProcedure [dbo].[SaleInvoicesPayments_StattisticsForClient]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SaleInvoicesPayments_StattisticsForClient]
GO
/****** Object:  StoredProcedure [dbo].[SaleInvoices_ToggleInvoice]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SaleInvoices_ToggleInvoice]
GO
/****** Object:  StoredProcedure [dbo].[SaleInvoices_GetOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SaleInvoices_GetOne]
GO
/****** Object:  StoredProcedure [dbo].[SaleInvoices_AddEdit]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[SaleInvoices_AddEdit]
GO
/****** Object:  StoredProcedure [dbo].[Safe_SaveDebitData]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Safe_SaveDebitData]
GO
/****** Object:  StoredProcedure [dbo].[Safe_GetSafeReport]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Safe_GetSafeReport]
GO
/****** Object:  StoredProcedure [dbo].[Safe_GetDebitDetails]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Safe_GetDebitDetails]
GO
/****** Object:  StoredProcedure [dbo].[Safe_GetDebitAll]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Safe_GetDebitAll]
GO
/****** Object:  StoredProcedure [dbo].[Safe_DeleteDebitData]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Safe_DeleteDebitData]
GO
/****** Object:  StoredProcedure [dbo].[Regions_GetOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Regions_GetOne]
GO
/****** Object:  StoredProcedure [dbo].[Regions_GetNames]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Regions_GetNames]
GO
/****** Object:  StoredProcedure [dbo].[Regions_DeleteOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Regions_DeleteOne]
GO
/****** Object:  StoredProcedure [dbo].[Regions_AddEdit]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Regions_AddEdit]
GO
/****** Object:  StoredProcedure [dbo].[PortShips_GetOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[PortShips_GetOne]
GO
/****** Object:  StoredProcedure [dbo].[PortShips_GetNames]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[PortShips_GetNames]
GO
/****** Object:  StoredProcedure [dbo].[PortShips_DeleteOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[PortShips_DeleteOne]
GO
/****** Object:  StoredProcedure [dbo].[PortShips_AddEdit]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[PortShips_AddEdit]
GO
/****** Object:  StoredProcedure [dbo].[Models_GetOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Models_GetOne]
GO
/****** Object:  StoredProcedure [dbo].[Models_GetNames]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Models_GetNames]
GO
/****** Object:  StoredProcedure [dbo].[Models_DeleteOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Models_DeleteOne]
GO
/****** Object:  StoredProcedure [dbo].[Models_AddEdit]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Models_AddEdit]
GO
/****** Object:  StoredProcedure [dbo].[LinksUpdateLink]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[LinksUpdateLink]
GO
/****** Object:  StoredProcedure [dbo].[LinksGetLinksListByLanguage]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[LinksGetLinksListByLanguage]
GO
/****** Object:  StoredProcedure [dbo].[LinksGetLinkDetailsById]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[LinksGetLinkDetailsById]
GO
/****** Object:  StoredProcedure [dbo].[LinksDeleteLink]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[LinksDeleteLink]
GO
/****** Object:  StoredProcedure [dbo].[LanguagesNamesList]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[LanguagesNamesList]
GO
/****** Object:  StoredProcedure [dbo].[ImagesResetMainImage]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[ImagesResetMainImage]
GO
/****** Object:  StoredProcedure [dbo].[ImagesListByCategoryId]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[ImagesListByCategoryId]
GO
/****** Object:  StoredProcedure [dbo].[ImagesDeleteImage]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[ImagesDeleteImage]
GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_SaveExpenseType]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[ExpenseTypes_SaveExpenseType]
GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_GetExpenseTypesNames]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[ExpenseTypes_GetExpenseTypesNames]
GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_GetExpenseTypeDetails]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[ExpenseTypes_GetExpenseTypeDetails]
GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_DeleteExpenseType]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[ExpenseTypes_DeleteExpenseType]
GO
/****** Object:  StoredProcedure [dbo].[Expenses_GetSelectList_Company]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Expenses_GetSelectList_Company]
GO
/****** Object:  StoredProcedure [dbo].[Expenses_GetSelectList]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Expenses_GetSelectList]
GO
/****** Object:  StoredProcedure [dbo].[Expenses_GetDetails]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Expenses_GetDetails]
GO
/****** Object:  StoredProcedure [dbo].[Expenses_Delete]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Expenses_Delete]
GO
/****** Object:  StoredProcedure [dbo].[Expenses_AddEdit]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Expenses_AddEdit]
GO
/****** Object:  StoredProcedure [dbo].[ExchangeCompanies_GetOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[ExchangeCompanies_GetOne]
GO
/****** Object:  StoredProcedure [dbo].[ExchangeCompanies_GetNames]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[ExchangeCompanies_GetNames]
GO
/****** Object:  StoredProcedure [dbo].[ExchangeCompanies_DeleteOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[ExchangeCompanies_DeleteOne]
GO
/****** Object:  StoredProcedure [dbo].[ExchangeCompanies_AddEdit]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[ExchangeCompanies_AddEdit]
GO
/****** Object:  StoredProcedure [dbo].[Engines_GetNames]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Engines_GetNames]
GO
/****** Object:  StoredProcedure [dbo].[Drives_GetNames]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Drives_GetNames]
GO
/****** Object:  StoredProcedure [dbo].[Currencies_SaveCurrency]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Currencies_SaveCurrency]
GO
/****** Object:  StoredProcedure [dbo].[Currencies_GetNames]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Currencies_GetNames]
GO
/****** Object:  StoredProcedure [dbo].[Currencies_GetCurrency]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Currencies_GetCurrency]
GO
/****** Object:  StoredProcedure [dbo].[Currencies_DeleteCurrency]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Currencies_DeleteCurrency]
GO
/****** Object:  StoredProcedure [dbo].[Colors_GetNames]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Colors_GetNames]
GO
/****** Object:  StoredProcedure [dbo].[ClientSubPayments_ToggleOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[ClientSubPayments_ToggleOne]
GO
/****** Object:  StoredProcedure [dbo].[ClientSubPayments_GetOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[ClientSubPayments_GetOne]
GO
/****** Object:  StoredProcedure [dbo].[ClientSubPayments_AddEdit]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[ClientSubPayments_AddEdit]
GO
/****** Object:  StoredProcedure [dbo].[Clients_GetOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Clients_GetOne]
GO
/****** Object:  StoredProcedure [dbo].[Clients_GetNames]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Clients_GetNames]
GO
/****** Object:  StoredProcedure [dbo].[Clients_DeleteOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Clients_DeleteOne]
GO
/****** Object:  StoredProcedure [dbo].[Clients_AddEdit]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Clients_AddEdit]
GO
/****** Object:  StoredProcedure [dbo].[ClientPayments_ToggleOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[ClientPayments_ToggleOne]
GO
/****** Object:  StoredProcedure [dbo].[ClientPayments_ReceiptsToReset]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[ClientPayments_ReceiptsToReset]
GO
/****** Object:  StoredProcedure [dbo].[ClientPayments_InvoicesToReset]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[ClientPayments_InvoicesToReset]
GO
/****** Object:  StoredProcedure [dbo].[ClientPayments_GetOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[ClientPayments_GetOne]
GO
/****** Object:  StoredProcedure [dbo].[ClientPayments_AddEdit]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[ClientPayments_AddEdit]
GO
/****** Object:  StoredProcedure [dbo].[ClearanceCompanies_GetOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[ClearanceCompanies_GetOne]
GO
/****** Object:  StoredProcedure [dbo].[ClearanceCompanies_GetNames]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[ClearanceCompanies_GetNames]
GO
/****** Object:  StoredProcedure [dbo].[ClearanceCompanies_DeleteOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[ClearanceCompanies_DeleteOne]
GO
/****** Object:  StoredProcedure [dbo].[ClearanceCompanies_AddEdit]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[ClearanceCompanies_AddEdit]
GO
/****** Object:  StoredProcedure [dbo].[CarWorkingStatus_GetNames]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[CarWorkingStatus_GetNames]
GO
/****** Object:  StoredProcedure [dbo].[CarTransferStatus_GetNames]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[CarTransferStatus_GetNames]
GO
/****** Object:  StoredProcedure [dbo].[CarStyles_GetNames]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[CarStyles_GetNames]
GO
/****** Object:  StoredProcedure [dbo].[CarsMarker_GetOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[CarsMarker_GetOne]
GO
/****** Object:  StoredProcedure [dbo].[CarsMarker_DeleteOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[CarsMarker_DeleteOne]
GO
/****** Object:  StoredProcedure [dbo].[CarsMarker_AddEdit]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[CarsMarker_AddEdit]
GO
/****** Object:  StoredProcedure [dbo].[CarsMaker_GetNames]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[CarsMaker_GetNames]
GO
/****** Object:  StoredProcedure [dbo].[Cars_GetOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Cars_GetOne]
GO
/****** Object:  StoredProcedure [dbo].[Cars_getNewCarCode]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Cars_getNewCarCode]
GO
/****** Object:  StoredProcedure [dbo].[Cars_GetCarsCustomCount]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Cars_GetCarsCustomCount]
GO
/****** Object:  StoredProcedure [dbo].[Cars_GetCarsCustom]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Cars_GetCarsCustom]
GO
/****** Object:  StoredProcedure [dbo].[Cars_GetCarChassis]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Cars_GetCarChassis]
GO
/****** Object:  StoredProcedure [dbo].[Cars_DeleteCar]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Cars_DeleteCar]
GO
/****** Object:  StoredProcedure [dbo].[Cars_AddEditCar]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Cars_AddEditCar]
GO
/****** Object:  StoredProcedure [dbo].[Capacities_GetNames]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Capacities_GetNames]
GO
/****** Object:  StoredProcedure [dbo].[Buyers_GetOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Buyers_GetOne]
GO
/****** Object:  StoredProcedure [dbo].[Buyers_GetNames2]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Buyers_GetNames2]
GO
/****** Object:  StoredProcedure [dbo].[Buyers_GetNames]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Buyers_GetNames]
GO
/****** Object:  StoredProcedure [dbo].[Buyers_DeleteOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Buyers_DeleteOne]
GO
/****** Object:  StoredProcedure [dbo].[Buyers_AddEdit]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Buyers_AddEdit]
GO
/****** Object:  StoredProcedure [dbo].[Auctions_GetOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Auctions_GetOne]
GO
/****** Object:  StoredProcedure [dbo].[Auctions_GetNames]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Auctions_GetNames]
GO
/****** Object:  StoredProcedure [dbo].[Auctions_DeleteOne]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Auctions_DeleteOne]
GO
/****** Object:  StoredProcedure [dbo].[Auctions_AddEdit]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[Auctions_AddEdit]
GO
/****** Object:  StoredProcedure [dbo].[AdminUsersLogin]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[AdminUsersLogin]
GO
/****** Object:  StoredProcedure [dbo].[AdminUsersGetUserByEmail]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[AdminUsersGetUserByEmail]
GO
/****** Object:  StoredProcedure [dbo].[AdminUpdateUsers]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[AdminUpdateUsers]
GO
/****** Object:  StoredProcedure [dbo].[AdminDeleteUser]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[AdminDeleteUser]
GO
/****** Object:  StoredProcedure [dbo].[AddinUpdateAddin]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[AddinUpdateAddin]
GO
/****** Object:  StoredProcedure [dbo].[AddinsGetAllActiveAddins]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[AddinsGetAllActiveAddins]
GO
/****** Object:  StoredProcedure [dbo].[AddinsGetAddinsByLanguageIdLimitedCount]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[AddinsGetAddinsByLanguageIdLimitedCount]
GO
/****** Object:  StoredProcedure [dbo].[AddinsGetAddinsByLanguageId]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[AddinsGetAddinsByLanguageId]
GO
/****** Object:  StoredProcedure [dbo].[AddinsGetAddinDetailsById]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[AddinsGetAddinDetailsById]
GO
/****** Object:  StoredProcedure [dbo].[AddinsDeleteAddin]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[AddinsDeleteAddin]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_admin_n]') AND type in (N'U'))
ALTER TABLE [dbo].[tbl_admin_n] DROP CONSTRAINT IF EXISTS [FK_tbl_admin_n_Stores]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SiteLinks]') AND type in (N'U'))
ALTER TABLE [dbo].[SiteLinks] DROP CONSTRAINT IF EXISTS [FK_SiteLinks_SiteLanguages]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pictures]') AND type in (N'U'))
ALTER TABLE [dbo].[Pictures] DROP CONSTRAINT IF EXISTS [FK_Images_SiteLinks]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CarPartsImages]') AND type in (N'U'))
ALTER TABLE [dbo].[CarPartsImages] DROP CONSTRAINT IF EXISTS [FK_CarPartsImages_CarParts]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientPayments]') AND type in (N'U'))
ALTER TABLE [dbo].[ClientPayments] DROP CONSTRAINT IF EXISTS [DF_ClientPayments_CloseOut]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CarPartTypes]') AND type in (N'U'))
ALTER TABLE [dbo].[CarPartTypes] DROP CONSTRAINT IF EXISTS [DF_CarPartTypes_IsDeleted]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CarParts]') AND type in (N'U'))
ALTER TABLE [dbo].[CarParts] DROP CONSTRAINT IF EXISTS [DF_CarParts_CreatedDate]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CarParts]') AND type in (N'U'))
ALTER TABLE [dbo].[CarParts] DROP CONSTRAINT IF EXISTS [DF_CarParts_IsDeleted]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CarParts]') AND type in (N'U'))
ALTER TABLE [dbo].[CarParts] DROP CONSTRAINT IF EXISTS [DF_Table_1_IsActice]
GO
/****** Object:  View [dbo].[View_SafeValuesList]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP VIEW IF EXISTS [dbo].[View_SafeValuesList]
GO
/****** Object:  View [dbo].[View_FirstAmountsForClientPaymentsTemp]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP VIEW IF EXISTS [dbo].[View_FirstAmountsForClientPaymentsTemp]
GO
/****** Object:  View [dbo].[View_ClientPayments.temp]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP VIEW IF EXISTS [dbo].[View_ClientPayments.temp]
GO
/****** Object:  View [dbo].[View_CarMakerMode.temp]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP VIEW IF EXISTS [dbo].[View_CarMakerMode.temp]
GO
/****** Object:  View [dbo].[View_CarInformation.temp]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP VIEW IF EXISTS [dbo].[View_CarInformation.temp]
GO
/****** Object:  View [dbo].[View_ExpensesList]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP VIEW IF EXISTS [dbo].[View_ExpensesList]
GO
/****** Object:  View [dbo].[View_ExpensesWorkshop]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP VIEW IF EXISTS [dbo].[View_ExpensesWorkshop]
GO
/****** Object:  View [dbo].[View_ExpensesTransports]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP VIEW IF EXISTS [dbo].[View_ExpensesTransports]
GO
/****** Object:  View [dbo].[View_ExpensesTowing]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP VIEW IF EXISTS [dbo].[View_ExpensesTowing]
GO
/****** Object:  View [dbo].[View_ExpensesShipping]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP VIEW IF EXISTS [dbo].[View_ExpensesShipping]
GO
/****** Object:  View [dbo].[View_ExpensesClearances]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP VIEW IF EXISTS [dbo].[View_ExpensesClearances]
GO
/****** Object:  View [dbo].[View_ExpensesBuyers]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP VIEW IF EXISTS [dbo].[View_ExpensesBuyers]
GO
/****** Object:  View [dbo].[View_InvoicesSubPayments]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP VIEW IF EXISTS [dbo].[View_InvoicesSubPayments]
GO
/****** Object:  View [dbo].[View_ClientPayments]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP VIEW IF EXISTS [dbo].[View_ClientPayments]
GO
/****** Object:  View [dbo].[View_CarSalesInvoices]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP VIEW IF EXISTS [dbo].[View_CarSalesInvoices]
GO
/****** Object:  View [dbo].[View_CarInformation]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP VIEW IF EXISTS [dbo].[View_CarInformation]
GO
/****** Object:  View [dbo].[View_ClientInvoicesTemp]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP VIEW IF EXISTS [dbo].[View_ClientInvoicesTemp]
GO
/****** Object:  Table [dbo].[Years]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[Years]
GO
/****** Object:  Table [dbo].[Workshops]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[Workshops]
GO
/****** Object:  Table [dbo].[WorkingStatus]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[WorkingStatus]
GO
/****** Object:  Table [dbo].[TransportCompanies]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[TransportCompanies]
GO
/****** Object:  Table [dbo].[Transmissions]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[Transmissions]
GO
/****** Object:  Table [dbo].[TowingCompanies]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[TowingCompanies]
GO
/****** Object:  Table [dbo].[tbl_admin_n]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[tbl_admin_n]
GO
/****** Object:  Table [dbo].[Styles]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[Styles]
GO
/****** Object:  Table [dbo].[Stores]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[Stores]
GO
/****** Object:  Table [dbo].[States]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[States]
GO
/****** Object:  Table [dbo].[SiteLinks]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[SiteLinks]
GO
/****** Object:  Table [dbo].[SiteLanguages]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[SiteLanguages]
GO
/****** Object:  Table [dbo].[SiteCompanies]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[SiteCompanies]
GO
/****** Object:  Table [dbo].[Ships]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[Ships]
GO
/****** Object:  Table [dbo].[ShippingCompanies]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[ShippingCompanies]
GO
/****** Object:  Table [dbo].[Regions]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[Regions]
GO
/****** Object:  Table [dbo].[PortShipping]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[PortShipping]
GO
/****** Object:  Table [dbo].[Pictures]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[Pictures]
GO
/****** Object:  Table [dbo].[MainSafeDebitCredit]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[MainSafeDebitCredit]
GO
/****** Object:  Table [dbo].[ExpenseTypes]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[ExpenseTypes]
GO
/****** Object:  Table [dbo].[ExchangeCompanies]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[ExchangeCompanies]
GO
/****** Object:  Table [dbo].[Engines]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[Engines]
GO
/****** Object:  Table [dbo].[Drives]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[Drives]
GO
/****** Object:  Table [dbo].[Currencies]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[Currencies]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[Colors]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[Clients]
GO
/****** Object:  Table [dbo].[ClientPayments]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[ClientPayments]
GO
/****** Object:  Table [dbo].[ClientInvoicesPayments]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[ClientInvoicesPayments]
GO
/****** Object:  Table [dbo].[ClearanceCompanies]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[ClearanceCompanies]
GO
/****** Object:  Table [dbo].[CarsStatus]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[CarsStatus]
GO
/****** Object:  Table [dbo].[CarsModel]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[CarsModel]
GO
/****** Object:  Table [dbo].[CarsMarker]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[CarsMarker]
GO
/****** Object:  Table [dbo].[CarsData]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[CarsData]
GO
/****** Object:  Table [dbo].[CarPartTypes]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[CarPartTypes]
GO
/****** Object:  Table [dbo].[CarPartsImages]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[CarPartsImages]
GO
/****** Object:  Table [dbo].[CarParts]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[CarParts]
GO
/****** Object:  Table [dbo].[CarOptions]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[CarOptions]
GO
/****** Object:  Table [dbo].[CarInvoices]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[CarInvoices]
GO
/****** Object:  Table [dbo].[CarExpenses]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[CarExpenses]
GO
/****** Object:  Table [dbo].[Capacities]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[Capacities]
GO
/****** Object:  Table [dbo].[Buyers]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[Buyers]
GO
/****** Object:  Table [dbo].[Auctions]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[Auctions]
GO
/****** Object:  Table [dbo].[Addins]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP TABLE IF EXISTS [dbo].[Addins]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDurationYearMonthDays]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP FUNCTION IF EXISTS [dbo].[GetDurationYearMonthDays]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDirhamExchangeRatio]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP FUNCTION IF EXISTS [dbo].[GetDirhamExchangeRatio]
GO
/****** Object:  Database [TundraUae]    Script Date: 2/2/2018 9:10:02 PM ******/
DROP DATABASE IF EXISTS [TundraUae]
GO
/****** Object:  Database [TundraUae]    Script Date: 2/2/2018 9:10:02 PM ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'TundraUae')
BEGIN
CREATE DATABASE [TundraUae]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TundraUae', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\TundraUae.mdf' , SIZE = 6144KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TundraUae_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\TundraUae_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END
GO
ALTER DATABASE [TundraUae] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TundraUae].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TundraUae] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TundraUae] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TundraUae] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TundraUae] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TundraUae] SET ARITHABORT OFF 
GO
ALTER DATABASE [TundraUae] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TundraUae] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TundraUae] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TundraUae] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TundraUae] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TundraUae] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TundraUae] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TundraUae] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TundraUae] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TundraUae] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TundraUae] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TundraUae] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TundraUae] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TundraUae] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TundraUae] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TundraUae] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TundraUae] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TundraUae] SET RECOVERY FULL 
GO
ALTER DATABASE [TundraUae] SET  MULTI_USER 
GO
ALTER DATABASE [TundraUae] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TundraUae] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TundraUae] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TundraUae] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TundraUae] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TundraUae', N'ON'
GO
/****** Object:  UserDefinedFunction [dbo].[GetDirhamExchangeRatio]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetDirhamExchangeRatio]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'



-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[GetDirhamExchangeRatio]
(
	-- Add the parameters for the function here
--	@startDate datetime, @carID bigint
)
RETURNS  money
AS
BEGIN
	-- Declare the return variable here
	DECLARE @ResultVar money

	SET @ResultVar = (SELECT TOP 1 ExchangeRate FROM Currencies WHERE CurrencyID = 2); -- Dirham currency.

	-- Return the result of the function
	RETURN @ResultVar

END




' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetDurationYearMonthDays]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetDurationYearMonthDays]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[GetDurationYearMonthDays]
(
	-- Add the parameters for the function here
	@startDate datetime, @carID bigint
)
RETURNS  nvarchar(50)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @ResultVar nvarchar(50)

SET  @ResultVar = ''Y:'' + (SELECT (CAST(LeftYear AS varchar(10))  + '', M:'' +  CAST(LeftMonth AS varchar(10)) + '', D:'' + CAST(LeftDays AS varchar(10))) AS DurationDate 
from (

SELECT
 (YEAR(WorkDuration) - 1900) AS LeftYear,
 (MONTH(WorkDuration) - 1) AS LeftMonth,
 (DAY(WorkDuration) - 1) AS LeftDays 
FROM 
 (SELECT (GETDATE() - @startDate) AS WorkDuration 
	FROM view_carinformation temp WHERE temp.carid = @carID) tmp

)  adad);

	-- Return the result of the function
	RETURN @ResultVar

END


' 
END
GO
/****** Object:  Table [dbo].[Addins]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Addins]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Addins](
	[ID] [bigint] NOT NULL,
	[LanguageID] [int] NULL,
	[Title] [nvarchar](100) NULL,
	[ShortDesc] [ntext] NULL,
	[Details] [ntext] NULL,
	[Type] [nvarchar](50) NULL,
	[Priority] [int] NULL,
	[ViewHome] [bit] NULL,
	[Active] [bit] NULL,
	[ThisMonth] [bit] NULL,
	[Timestamp] [datetime] NULL,
	[main_picture] [nvarchar](200) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Auctions]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Auctions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Auctions](
	[AuctionID] [int] IDENTITY(1,1) NOT NULL,
	[AuctionName] [nvarchar](100) NULL,
	[AuctionEmail] [nvarchar](100) NULL,
	[AuctionPhone] [nvarchar](100) NULL,
	[AuctionAddress] [nvarchar](500) NULL,
	[AuctionDesc] [nvarchar](2000) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_Auctions] PRIMARY KEY CLUSTERED 
(
	[AuctionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Buyers]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Buyers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Buyers](
	[BuyerID] [bigint] IDENTITY(1,1) NOT NULL,
	[Auction_ID] [int] NOT NULL,
	[BuyerName] [nvarchar](100) NULL,
	[BuyerEmail] [nvarchar](100) NULL,
	[BuyerPhone] [nvarchar](100) NULL,
	[BuyerAddress] [nvarchar](100) NULL,
	[BuyerDesc] [nvarchar](2000) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[OpeningBalance] [money] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_Buyers] PRIMARY KEY CLUSTERED 
(
	[BuyerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Capacities]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Capacities]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Capacities](
	[CapacityID] [int] IDENTITY(1,1) NOT NULL,
	[CapacityNameEn] [nvarchar](100) NULL,
	[CapacityNameAr] [nvarchar](100) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_CarCapacity] PRIMARY KEY CLUSTERED 
(
	[CapacityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CarExpenses]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CarExpenses]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CarExpenses](
	[ExpenseID] [bigint] IDENTITY(1,1) NOT NULL,
	[Car_ID] [bigint] NULL,
	[Currency_ID] [int] NULL,
	[ExpenseType_ID] [int] NULL,
	[CompanyType] [nvarchar](50) NULL,
	[Company_ID] [bigint] NULL,
	[ExchangeCompany_ID] [bigint] NULL,
	[InvoiceCode] [nvarchar](150) NULL,
	[DueDate] [datetime] NULL,
	[PaymentDate] [datetime] NULL,
	[Notes] [nvarchar](3000) NULL,
	[ExpenseValue] [money] NULL,
	[PaymentValue] [money] NULL,
	[InOutType] [nvarchar](20) NULL,
	[Active] [bit] NULL,
	[Store_ID] [bigint] NULL,
	[AddDate] [datetime] NULL,
	[WhoAdd] [bigint] NULL,
	[AddIP] [nvarchar](50) NULL,
	[EditDate] [datetime] NULL,
	[WhoEdit] [bigint] NULL,
	[EditIP] [nvarchar](50) NULL,
	[Deleted] [bit] NULL,
	[DeleteDate] [datetime] NULL,
	[WhoDelete] [bigint] NULL,
	[DeleteIP] [nvarchar](50) NULL,
	[Timestamp] [timestamp] NULL,
 CONSTRAINT [PK_Car_Expenses] PRIMARY KEY CLUSTERED 
(
	[ExpenseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CarInvoices]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CarInvoices]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CarInvoices](
	[InvoiceID] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteCompany_ID] [int] NULL,
	[Car_ID] [bigint] NULL,
	[Client_ID] [bigint] NULL,
	[Currency_ID] [int] NULL,
	[SalePrice] [money] NULL,
	[FirstAmount] [money] NULL,
	[InvoiceDate] [datetime] NULL,
	[Notes] [nvarchar](2000) NULL,
	[Timestamp] [timestamp] NULL,
	[Active] [bit] NULL,
	[Store_ID] [bigint] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_CarInvoices] PRIMARY KEY CLUSTERED 
(
	[InvoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CarOptions]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CarOptions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CarOptions](
	[CarOptionID] [int] IDENTITY(1,1) NOT NULL,
	[CarOptionNameEn] [nvarchar](100) NULL,
	[CarOptionNameAr] [nvarchar](100) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_CarCarOption] PRIMARY KEY CLUSTERED 
(
	[CarOptionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CarParts]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CarParts]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CarParts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[Price] [money] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[YearId] [int] NULL,
	[MakerId] [int] NULL,
	[ModelId] [bigint] NULL,
	[TypeId] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Periority] [int] NULL,
 CONSTRAINT [PK_CarParts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CarPartsImages]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CarPartsImages]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CarPartsImages](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](150) NULL,
	[PartId] [int] NULL,
	[IsMain] [bit] NULL,
	[IsActive] [bit] NULL,
	[Priority] [int] NULL,
 CONSTRAINT [PK_CarPartsImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CarPartTypes]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CarPartTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CarPartTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name_En] [nvarchar](70) NOT NULL,
	[Name_Ar] [nvarchar](70) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_CarPartTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CarsData]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CarsData]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CarsData](
	[CarID] [bigint] IDENTITY(1,1) NOT NULL,
	[car_code] [bigint] NOT NULL,
	[view_home] [bit] NULL,
	[active] [bit] NULL,
	[featured_car] [bit] NULL,
	[Auction_ID] [int] NULL,
	[Buyer_ID] [int] NULL,
	[Marker_ID] [int] NULL,
	[Model_ID] [bigint] NULL,
	[WorkingStatus_ID] [int] NULL,
	[TransferStatus_ID] [int] NULL,
	[Year_ID] [int] NULL,
	[PortShipping_ID] [int] NULL,
	[TowingCompsny_ID] [bigint] NULL,
	[ShippingCompany_ID] [bigint] NULL,
	[Ship_ID] [bigint] NULL,
	[State_ID] [int] NULL,
	[Region_ID] [bigint] NULL,
	[Workshop_ID] [bigint] NULL,
	[Transport_ID] [bigint] NULL,
	[Clearance_ID] [bigint] NULL,
	[Store_ID] [bigint] NULL,
	[chassis_no] [nvarchar](150) NULL,
	[container_no] [nvarchar](150) NULL,
	[container_code] [nvarchar](150) NULL,
	[booking_no] [nvarchar](100) NULL,
	[poly_fielding] [nvarchar](3000) NULL,
	[lot_no] [nvarchar](150) NULL,
	[engine_no] [nvarchar](150) NULL,
	[sold] [bit] NULL,
	[exterior_color] [int] NULL,
	[interior_color] [int] NULL,
	[body_style] [int] NULL,
	[car_transmission] [int] NULL,
	[mileage] [nvarchar](100) NULL,
	[car_drive] [int] NULL,
	[car_engine] [int] NULL,
	[car_capacity] [int] NULL,
	[car_options] [nvarchar](1500) NULL,
	[car_remarks] [nvarchar](3000) NULL,
	[Customs_No] [nvarchar](150) NULL,
	[purchase_date] [datetime] NULL,
	[checkout_date] [datetime] NULL,
	[Shipping_date] [datetime] NULL,
	[expected_arrive_date] [datetime] NULL,
	[dubia_arrive_date] [datetime] NULL,
	[sharjah_arrive_date] [datetime] NULL,
	[arrive_date] [datetime] NULL,
	[WorkshopEntryDate] [datetime] NULL,
	[WorkshopExitDate] [datetime] NULL,
	[price_currency] [money] NULL,
	[real_price] [numeric](18, 0) NULL,
	[sale_price] [numeric](18, 0) NULL,
	[cost] [numeric](18, 0) NULL,
	[CurrencyExchange_ID] [int] NULL,
	[payement_to_who] [nvarchar](150) NULL,
	[sale_to] [nvarchar](150) NULL,
	[show_sale] [bit] NULL,
	[sale_date] [datetime] NULL,
	[visitors] [bigint] NULL,
	[main_picture] [nvarchar](150) NULL,
	[Timestamp] [timestamp] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_Cars_1] PRIMARY KEY CLUSTERED 
(
	[CarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CarsMarker]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CarsMarker]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CarsMarker](
	[MarkerID] [int] IDENTITY(1,1) NOT NULL,
	[MarkerNameEn] [nvarchar](100) NULL,
	[MarkerNameAr] [nvarchar](100) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_CarMarker] PRIMARY KEY CLUSTERED 
(
	[MarkerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CarsModel]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CarsModel]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CarsModel](
	[ModelID] [bigint] IDENTITY(1,1) NOT NULL,
	[Marker_ID] [int] NOT NULL,
	[TypeNameEn] [nvarchar](100) NULL,
	[TypeNameAr] [nvarchar](100) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_CarType] PRIMARY KEY CLUSTERED 
(
	[ModelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CarsStatus]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CarsStatus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CarsStatus](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusEn] [nvarchar](100) NULL,
	[StatusAr] [nvarchar](100) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_CarsStatus] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ClearanceCompanies]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClearanceCompanies]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ClearanceCompanies](
	[ClearanceID] [bigint] IDENTITY(1,1) NOT NULL,
	[ClearanceName] [nvarchar](100) NOT NULL,
	[ClearanceEmail] [nvarchar](100) NULL,
	[ClearancePhone] [nvarchar](100) NULL,
	[ClearanceAddress] [nvarchar](500) NULL,
	[ClearanceDesc] [nvarchar](2000) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[OpeningBalance] [money] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_ClearanceCompanies] PRIMARY KEY CLUSTERED 
(
	[ClearanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ClientInvoicesPayments]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientInvoicesPayments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ClientInvoicesPayments](
	[ClientInvoicesPaymentsID] [bigint] IDENTITY(1,1) NOT NULL,
	[ClientPayments_ID] [bigint] NULL,
	[CarInvoice_ID] [bigint] NULL,
	[ClientInvoicesPaymentsValue] [money] NULL,
	[Active] [bit] NULL,
	[RegisterDate] [datetime] NULL,
	[Notes] [nvarchar](1000) NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_ClientInvoicesPayments] PRIMARY KEY CLUSTERED 
(
	[ClientInvoicesPaymentsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ClientPayments]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientPayments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ClientPayments](
	[PaymentID] [bigint] IDENTITY(1,1) NOT NULL,
	[Invoice_ID] [bigint] NULL,
	[Client_ID] [bigint] NOT NULL,
	[ExchangeCompany_ID] [bigint] NULL,
	[Currency_ID] [int] NULL,
	[PaymentValue] [money] NULL,
	[CloseOut] [money] NULL,
	[PaymentDate] [datetime] NULL,
	[ReceiverName] [nvarchar](100) NULL,
	[Notes] [nvarchar](2000) NULL,
	[Active] [bit] NULL,
	[Other] [nvarchar](50) NULL,
	[Timestamp] [timestamp] NULL,
	[RegisterDate] [datetime] NULL,
	[Store_ID] [bigint] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_ClientPayments] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Clients](
	[ClientID] [bigint] IDENTITY(1,1) NOT NULL,
	[ClientName] [nvarchar](100) NOT NULL,
	[ClientEmail] [nvarchar](100) NULL,
	[ClientPhone] [nvarchar](100) NULL,
	[ClientFax] [nvarchar](100) NULL,
	[ClientAddress] [nvarchar](500) NULL,
	[ClientUsername] [nvarchar](100) NULL,
	[ClientPassword] [nvarchar](100) NULL,
	[ClientDesc] [nvarchar](2000) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[SMSActive] [bit] NULL,
	[OpeningBalance] [money] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Colors]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Colors](
	[ColorID] [int] IDENTITY(1,1) NOT NULL,
	[ColorNameEn] [nvarchar](100) NULL,
	[ColorNameAr] [nvarchar](100) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_CarColor] PRIMARY KEY CLUSTERED 
(
	[ColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Currencies]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Currencies]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Currencies](
	[CurrencyID] [int] NOT NULL,
	[CurrencyName] [nvarchar](50) NULL,
	[CurrencySymbol] [nvarchar](20) NULL,
	[ExchangeRate] [money] NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_CarCurrency] PRIMARY KEY CLUSTERED 
(
	[CurrencyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Drives]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Drives]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Drives](
	[DriveID] [int] IDENTITY(1,1) NOT NULL,
	[DriveNameEn] [nvarchar](100) NULL,
	[DriveNameAr] [nvarchar](100) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_CarDrive] PRIMARY KEY CLUSTERED 
(
	[DriveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Engines]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Engines]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Engines](
	[EngineID] [int] IDENTITY(1,1) NOT NULL,
	[EngineNameEn] [nvarchar](100) NULL,
	[EngineNameAr] [nvarchar](100) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_CarEngine] PRIMARY KEY CLUSTERED 
(
	[EngineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ExchangeCompanies]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExchangeCompanies]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ExchangeCompanies](
	[ExchangeCompanyID] [bigint] IDENTITY(1,1) NOT NULL,
	[ExchangeCompanyName] [nvarchar](100) NOT NULL,
	[ExchangeCompanyEmail] [nvarchar](100) NULL,
	[ExchangeCompanyPhone] [nvarchar](100) NULL,
	[ExchangeCompanyAddress] [nvarchar](500) NULL,
	[ExchangeCompanyDesc] [nvarchar](2000) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[OpeningBalance] [money] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_ExchangeCompanies] PRIMARY KEY CLUSTERED 
(
	[ExchangeCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ExpenseTypes]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ExpenseTypes](
	[ExpenseTypeID] [int] IDENTITY(1,1) NOT NULL,
	[ExpenseTypeName] [nvarchar](150) NULL,
	[ExpenseTypeDetails] [nvarchar](3000) NULL,
	[CurrencyUsed] [nvarchar](20) NULL,
	[GroupName] [nvarchar](50) NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_ExpenseTypes] PRIMARY KEY CLUSTERED 
(
	[ExpenseTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[MainSafeDebitCredit]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MainSafeDebitCredit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MainSafeDebitCredit](
	[SafeID] [bigint] IDENTITY(1,1) NOT NULL,
	[Employee_ID] [bigint] NULL,
	[Store_ID] [bigint] NULL,
	[SafeDebitValue] [nvarchar](100) NULL,
	[SafeDebitDate] [datetime] NULL,
	[SafeCreditValue] [nvarchar](100) NULL,
	[SafeCreditDate] [datetime] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_Ket_MainSafeDebitCredit] PRIMARY KEY CLUSTERED 
(
	[SafeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Pictures]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pictures]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Pictures](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[LanguageID] [int] NULL,
	[CategoryType] [nvarchar](20) NULL,
	[MasterID] [bigint] NULL,
	[Title] [nvarchar](50) NULL,
	[Details] [nvarchar](1000) NULL,
	[URL] [nvarchar](150) NULL,
	[MainImage] [bit] NULL,
	[Active] [bit] NULL,
	[Priority] [int] NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PortShipping]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PortShipping]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PortShipping](
	[PortShipID] [int] IDENTITY(1,1) NOT NULL,
	[PortShipEn] [nvarchar](100) NULL,
	[PortShipAr] [nvarchar](100) NULL,
	[PortShipDescEn] [nvarchar](2000) NULL,
	[PortShipDescAr] [nvarchar](2000) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_PortShipping_1] PRIMARY KEY CLUSTERED 
(
	[PortShipID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Regions]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Regions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Regions](
	[RegionID] [bigint] IDENTITY(1,1) NOT NULL,
	[Auction_ID] [int] NULL,
	[RegionEn] [nvarchar](100) NULL,
	[RegionAr] [nvarchar](100) NULL,
	[CostforRegion] [decimal](18, 0) NULL,
	[RegionDescEn] [nvarchar](2000) NULL,
	[RegionDescAr] [nvarchar](2000) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_Regions] PRIMARY KEY CLUSTERED 
(
	[RegionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ShippingCompanies]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ShippingCompanies]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ShippingCompanies](
	[ShipCompanyID] [bigint] IDENTITY(1,1) NOT NULL,
	[ShipCompanyName] [nvarchar](100) NOT NULL,
	[ShipCompanyEmail] [nvarchar](100) NULL,
	[ShipCompanyPhone] [nvarchar](100) NULL,
	[ShipCompanyAddress] [nvarchar](500) NULL,
	[ShipCompanyDesc] [nvarchar](2000) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[OpeningBalance] [money] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_ShippingCompanies] PRIMARY KEY CLUSTERED 
(
	[ShipCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Ships]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ships]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Ships](
	[ShipID] [int] IDENTITY(1,1) NOT NULL,
	[ShipEn] [nvarchar](100) NULL,
	[ShipAr] [nvarchar](100) NULL,
	[ShipDescEn] [nvarchar](2000) NULL,
	[ShipDescAr] [nvarchar](2000) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_PortShipping] PRIMARY KEY CLUSTERED 
(
	[ShipID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SiteCompanies]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SiteCompanies]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SiteCompanies](
	[CompID] [int] NOT NULL,
	[CompName] [nvarchar](100) NULL,
	[CompEmail] [nvarchar](100) NULL,
	[CmopWebsite] [nvarchar](100) NULL,
	[CompPhone] [nvarchar](100) NULL,
	[CompFax] [nvarchar](100) NULL,
	[CompAddress] [nvarchar](150) NULL,
	[SecretCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_SiteCompanies] PRIMARY KEY CLUSTERED 
(
	[CompID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SiteLanguages]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SiteLanguages]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SiteLanguages](
	[id] [int] NOT NULL,
	[lang_name] [nvarchar](75) NULL,
	[lang_word] [nvarchar](75) NULL,
	[lang_code] [nvarchar](50) NULL,
 CONSTRAINT [PK_SiteLanguages] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SiteLinks]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SiteLinks]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SiteLinks](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[link_order] [int] NULL,
	[link_lang_id] [int] NULL,
	[link_place] [nvarchar](50) NULL,
	[link_name] [nvarchar](300) NULL,
	[link_details] [ntext] NULL,
	[main_picture] [nvarchar](200) NULL,
	[ViewHome] [bit] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_SiteLinks] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[States]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[States]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[States](
	[StateID] [int] IDENTITY(1,1) NOT NULL,
	[StateEn] [nvarchar](100) NULL,
	[StateAr] [nvarchar](100) NULL,
	[StateDescEn] [nvarchar](2000) NULL,
	[StateDescAr] [nvarchar](2000) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Stores]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Stores]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Stores](
	[StoreID] [bigint] IDENTITY(1,1) NOT NULL,
	[StoreName] [nvarchar](100) NOT NULL,
	[StoreEmail] [nvarchar](100) NULL,
	[StorePhone] [nvarchar](100) NULL,
	[StoreFax] [nvarchar](100) NULL,
	[StoreAddress] [nvarchar](500) NULL,
	[StoreDesc] [nvarchar](2000) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_Stores] PRIMARY KEY CLUSTERED 
(
	[StoreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Styles]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Styles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Styles](
	[CarStyleID] [int] IDENTITY(1,1) NOT NULL,
	[CarStyleNameEn] [nvarchar](100) NULL,
	[CarStyleNameAr] [nvarchar](100) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_CarCarStyle] PRIMARY KEY CLUSTERED 
(
	[CarStyleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbl_admin_n]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_admin_n]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_admin_n](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[LanguageID] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[user_password] [nvarchar](100) NULL,
	[user_type] [nvarchar](50) NULL,
	[user_level] [nvarchar](50) NULL,
	[Store_ID] [bigint] NULL,
	[name] [nvarchar](150) NULL,
	[city] [char](10) NULL,
	[address] [nvarchar](300) NULL,
	[mobile] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[fax] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_admin_n] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TowingCompanies]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TowingCompanies]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TowingCompanies](
	[TowingCompanyID] [bigint] IDENTITY(1,1) NOT NULL,
	[TowingCompanyName] [nvarchar](100) NOT NULL,
	[TowingCompanyEmail] [nvarchar](100) NULL,
	[TowingCompanyPhone] [nvarchar](100) NULL,
	[TowingCompanyAddress] [nvarchar](500) NULL,
	[TowingCompanyDesc] [nvarchar](2000) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[OpeningBalance] [money] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_TowingCompanies] PRIMARY KEY CLUSTERED 
(
	[TowingCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Transmissions]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transmissions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Transmissions](
	[TransmissionID] [int] IDENTITY(1,1) NOT NULL,
	[TransmissionNameEn] [nvarchar](100) NULL,
	[TransmissionNameAr] [nvarchar](100) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_CarTransmission] PRIMARY KEY CLUSTERED 
(
	[TransmissionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TransportCompanies]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransportCompanies]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TransportCompanies](
	[TransportID] [bigint] IDENTITY(1,1) NOT NULL,
	[TransportName] [nvarchar](100) NOT NULL,
	[TransportEmail] [nvarchar](100) NULL,
	[TransportPhone] [nvarchar](100) NULL,
	[TransportAddress] [nvarchar](500) NULL,
	[TransportDesc] [nvarchar](2000) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[OpeningBalance] [money] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_TransportCompanies] PRIMARY KEY CLUSTERED 
(
	[TransportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[WorkingStatus]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WorkingStatus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[WorkingStatus](
	[WorkingStatusID] [int] IDENTITY(1,1) NOT NULL,
	[WorkingStatusNameEn] [nvarchar](100) NULL,
	[WorkingStatusNameAr] [nvarchar](100) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_CarWorkingStatus] PRIMARY KEY CLUSTERED 
(
	[WorkingStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Workshops]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Workshops]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Workshops](
	[WorkshopID] [bigint] IDENTITY(1,1) NOT NULL,
	[WorkshopName] [nvarchar](100) NOT NULL,
	[WorkshopEmail] [nvarchar](100) NULL,
	[WorkshopPhone] [nvarchar](100) NULL,
	[WorkshopAddress] [nvarchar](500) NULL,
	[WorkshopDesc] [nvarchar](2000) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[OpeningBalance] [money] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_Workshops] PRIMARY KEY CLUSTERED 
(
	[WorkshopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Years]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Years]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Years](
	[YearID] [int] IDENTITY(1,1) NOT NULL,
	[YearNameEn] [nvarchar](100) NULL,
 CONSTRAINT [PK_Years] PRIMARY KEY CLUSTERED 
(
	[YearID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  View [dbo].[View_ClientInvoicesTemp]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_ClientInvoicesTemp]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_ClientInvoicesTemp]
AS
SELECT DISTINCT dbo.CarInvoices.Car_ID, dbo.CarInvoices.Client_ID, dbo.Clients.ClientName
FROM         dbo.Clients INNER JOIN
                      dbo.CarInvoices ON dbo.Clients.ClientID = dbo.CarInvoices.Client_ID
' 
GO
/****** Object:  View [dbo].[View_CarInformation]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_CarInformation]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_CarInformation]
AS
SELECT        dbo.Auctions.AuctionName, dbo.Buyers.BuyerName, dbo.CarsMarker.MarkerNameEn, dbo.CarsMarker.MarkerNameAr, dbo.CarsModel.TypeNameEn, dbo.CarsModel.TypeNameAr, dbo.CarsStatus.StatusEn, 
                         dbo.CarsStatus.StatusAr, dbo.Colors.ColorNameEn, dbo.Colors.ColorNameAr, Colors_1.ColorNameEn AS ExtColorEn, Colors_1.ColorNameAr AS ExtColorAr, dbo.Capacities.CapacityNameEn, 
                         dbo.Capacities.CapacityNameAr, dbo.WorkingStatus.WorkingStatusNameEn, dbo.WorkingStatus.WorkingStatusNameAr, dbo.PortShipping.PortShipEn, dbo.PortShipping.PortShipAr, dbo.Drives.DriveNameEn, 
                         dbo.Drives.DriveNameAr, dbo.Engines.EngineNameEn, dbo.Engines.EngineNameAr, dbo.ShippingCompanies.ShipCompanyName, dbo.Ships.ShipEn, dbo.Ships.ShipAr, dbo.Styles.CarStyleNameEn, 
                         dbo.Styles.CarStyleNameAr, dbo.Regions.RegionEn, dbo.Regions.RegionAr, dbo.States.StateEn, dbo.States.StateAr, dbo.Workshops.WorkshopName, dbo.Years.YearNameEn, 
                         dbo.Transmissions.TransmissionNameEn, dbo.Transmissions.TransmissionNameAr, dbo.CarsData.CarID, dbo.CarsData.car_code, dbo.CarsData.view_home, dbo.CarsData.active, dbo.CarsData.featured_car, 
                         dbo.CarsData.Auction_ID, dbo.CarsData.Buyer_ID, dbo.CarsData.Marker_ID, dbo.CarsData.Model_ID, dbo.CarsData.WorkingStatus_ID, dbo.CarsData.TransferStatus_ID, dbo.CarsData.Year_ID, 
                         dbo.CarsData.PortShipping_ID, dbo.CarsData.TowingCompsny_ID, dbo.CarsData.ShippingCompany_ID, dbo.CarsData.Ship_ID, dbo.CarsData.State_ID, dbo.CarsData.Region_ID, dbo.CarsData.Workshop_ID, 
                         dbo.CarsData.chassis_no, dbo.CarsData.container_no, dbo.CarsData.container_code, dbo.CarsData.booking_no, dbo.CarsData.poly_fielding, dbo.CarsData.lot_no, dbo.CarsData.engine_no, dbo.CarsData.sold, 
                         dbo.CarsData.exterior_color, dbo.CarsData.interior_color, dbo.CarsData.body_style, dbo.CarsData.car_transmission, dbo.CarsData.mileage, dbo.CarsData.car_drive, dbo.CarsData.car_engine, 
                         dbo.CarsData.car_capacity, dbo.CarsData.car_options, dbo.CarsData.car_remarks, dbo.CarsData.Customs_No, dbo.CarsData.purchase_date, dbo.CarsData.checkout_date, dbo.CarsData.Shipping_date, 
                         dbo.CarsData.expected_arrive_date, dbo.CarsData.dubia_arrive_date, dbo.CarsData.sharjah_arrive_date, dbo.CarsData.arrive_date, dbo.CarsData.WorkshopEntryDate, dbo.CarsData.WorkshopExitDate, 
                         dbo.CarsData.price_currency, dbo.CarsData.real_price, dbo.CarsData.sale_price, dbo.CarsData.cost, dbo.CarsData.CurrencyExchange_ID, dbo.CarsData.payement_to_who, dbo.CarsData.sale_to, 
                         dbo.CarsData.show_sale, dbo.CarsData.sale_date, dbo.CarsData.visitors, dbo.CarsData.main_picture, dbo.CarsData.Timestamp, dbo.CarsData.System_Who_Add, dbo.CarsData.System_Add_Date, 
                         dbo.CarsData.System_Modify_Date, dbo.CarsData.System_Delete_Status, dbo.CarsData.System_Who_Delete, dbo.CarsData.System_Delete_Date, dbo.CarsData.System_LastAction_IP, 
                         dbo.TowingCompanies.TowingCompanyName, dbo.CarsData.Transport_ID, dbo.CarsData.Clearance_ID, dbo.CarsData.Store_ID, dbo.Stores.StoreName, dbo.View_ClientInvoicesTemp.Client_ID, 
                         dbo.View_ClientInvoicesTemp.ClientName, ISNULL
                             ((SELECT        TOP (1) SalePrice
                                 FROM            dbo.CarInvoices
                                 WHERE        (Car_ID = dbo.CarsData.CarID)), 0) AS SalePrice
FROM            dbo.Auctions RIGHT OUTER JOIN
                         dbo.CarsMarker INNER JOIN
                         dbo.CarsData ON dbo.CarsMarker.MarkerID = dbo.CarsData.Marker_ID INNER JOIN
                         dbo.CarsModel ON dbo.CarsData.Model_ID = dbo.CarsModel.ModelID INNER JOIN
                         dbo.CarsStatus ON dbo.CarsData.TransferStatus_ID = dbo.CarsStatus.StatusID INNER JOIN
                         dbo.WorkingStatus ON dbo.CarsData.WorkingStatus_ID = dbo.WorkingStatus.WorkingStatusID LEFT OUTER JOIN
                         dbo.Buyers ON dbo.CarsData.Buyer_ID = dbo.Buyers.BuyerID ON dbo.Auctions.AuctionID = dbo.CarsData.Auction_ID LEFT OUTER JOIN
                         dbo.View_ClientInvoicesTemp ON dbo.CarsData.CarID = dbo.View_ClientInvoicesTemp.Car_ID LEFT OUTER JOIN
                         dbo.Stores ON dbo.CarsData.Store_ID = dbo.Stores.StoreID LEFT OUTER JOIN
                         dbo.TowingCompanies ON dbo.CarsData.TowingCompsny_ID = dbo.TowingCompanies.TowingCompanyID LEFT OUTER JOIN
                         dbo.Transmissions ON dbo.CarsData.car_transmission = dbo.Transmissions.TransmissionID LEFT OUTER JOIN
                         dbo.Years ON dbo.CarsData.Year_ID = dbo.Years.YearID LEFT OUTER JOIN
                         dbo.Workshops ON dbo.CarsData.Workshop_ID = dbo.Workshops.WorkshopID LEFT OUTER JOIN
                         dbo.States ON dbo.CarsData.State_ID = dbo.States.StateID LEFT OUTER JOIN
                         dbo.Regions ON dbo.CarsData.Region_ID = dbo.Regions.RegionID LEFT OUTER JOIN
                         dbo.Styles ON dbo.CarsData.body_style = dbo.Styles.CarStyleID LEFT OUTER JOIN
                         dbo.Ships ON dbo.CarsData.Ship_ID = dbo.Ships.ShipID LEFT OUTER JOIN
                         dbo.ShippingCompanies ON dbo.CarsData.ShippingCompany_ID = dbo.ShippingCompanies.ShipCompanyID LEFT OUTER JOIN
                         dbo.Engines ON dbo.CarsData.car_engine = dbo.Engines.EngineID LEFT OUTER JOIN
                         dbo.Drives ON dbo.CarsData.car_drive = dbo.Drives.DriveID LEFT OUTER JOIN
                         dbo.PortShipping ON dbo.CarsData.PortShipping_ID = dbo.PortShipping.PortShipID LEFT OUTER JOIN
                         dbo.Capacities ON dbo.CarsData.car_capacity = dbo.Capacities.CapacityID LEFT OUTER JOIN
                         dbo.Colors AS Colors_1 ON dbo.CarsData.exterior_color = Colors_1.ColorID LEFT OUTER JOIN
                         dbo.Colors ON dbo.CarsData.interior_color = dbo.Colors.ColorID
WHERE        (dbo.CarsData.System_Delete_Status = 0)
' 
GO
/****** Object:  View [dbo].[View_CarSalesInvoices]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_CarSalesInvoices]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_CarSalesInvoices]
AS
SELECT     dbo.CarInvoices.InvoiceID, dbo.CarInvoices.SiteCompany_ID, dbo.CarInvoices.Car_ID, dbo.CarInvoices.Client_ID, dbo.CarInvoices.Currency_ID, 
                      dbo.CarInvoices.SalePrice, dbo.CarInvoices.FirstAmount,
                          (SELECT     SUM(ClientInvoicesPaymentsValue) AS Expr1
                            FROM          dbo.ClientInvoicesPayments
                            WHERE      (Active = 1) AND (CarInvoice_ID = dbo.CarInvoices.InvoiceID)) AS TotalSubPaymentsForThis,
                          (SELECT     SUM(PaymentValue) AS Expr2
                            FROM          dbo.ClientPayments
                            WHERE      (Active = 1) AND (Invoice_ID = dbo.CarInvoices.InvoiceID)) AS TotalPaymentsForThis, dbo.CarInvoices.InvoiceDate, dbo.CarInvoices.Notes, 
                      dbo.CarInvoices.Timestamp, dbo.View_CarInformation.car_code, dbo.View_CarInformation.MarkerNameEn, dbo.View_CarInformation.MarkerNameAr, 
                      dbo.View_CarInformation.TypeNameEn, dbo.View_CarInformation.TypeNameAr, dbo.View_CarInformation.ExtColorEn, dbo.View_CarInformation.ExtColorAr, 
                      dbo.View_CarInformation.EngineNameEn, dbo.View_CarInformation.EngineNameAr, dbo.View_CarInformation.WorkingStatusNameEn, 
                      dbo.View_CarInformation.WorkingStatusNameAr, dbo.View_CarInformation.chassis_no, dbo.View_CarInformation.container_no, 
                      dbo.View_CarInformation.container_code, dbo.View_CarInformation.lot_no, dbo.View_CarInformation.engine_no, dbo.View_CarInformation.arrive_date, 
                      dbo.View_CarInformation.main_picture, dbo.Clients.ClientName, dbo.Clients.ClientEmail, dbo.Clients.ClientPhone, dbo.Currencies.CurrencyName, 
                      dbo.Currencies.CurrencySymbol, dbo.Currencies.ExchangeRate, dbo.SiteCompanies.CompName, dbo.SiteCompanies.CompEmail, dbo.SiteCompanies.CmopWebsite, 
                      dbo.SiteCompanies.CompPhone, dbo.SiteCompanies.CompFax, dbo.SiteCompanies.CompAddress, dbo.SiteCompanies.SecretCode, 
                      dbo.View_CarInformation.YearNameEn, dbo.CarInvoices.Active, dbo.Clients.OpeningBalance, dbo.View_CarInformation.Store_ID, 
                      dbo.View_CarInformation.StoreName
FROM         dbo.CarInvoices INNER JOIN
                      dbo.Clients ON dbo.CarInvoices.Client_ID = dbo.Clients.ClientID INNER JOIN
                      dbo.Currencies ON dbo.CarInvoices.Currency_ID = dbo.Currencies.CurrencyID INNER JOIN
                      dbo.SiteCompanies ON dbo.CarInvoices.SiteCompany_ID = dbo.SiteCompanies.CompID INNER JOIN
                      dbo.View_CarInformation ON dbo.CarInvoices.Car_ID = dbo.View_CarInformation.CarID
' 
GO
/****** Object:  View [dbo].[View_ClientPayments]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_ClientPayments]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_ClientPayments]
AS
SELECT     dbo.ClientPayments.PaymentID, dbo.ClientPayments.Invoice_ID, dbo.ClientPayments.Client_ID, dbo.ClientPayments.ExchangeCompany_ID, 
                      dbo.ClientPayments.Currency_ID, dbo.ClientPayments.PaymentValue, dbo.ClientPayments.CloseOut, dbo.ClientPayments.PaymentDate, 
                      dbo.ClientPayments.ReceiverName, dbo.ClientPayments.Notes, dbo.ClientPayments.Active, dbo.ClientPayments.Other, dbo.ClientPayments.Timestamp, 
                      dbo.ClientPayments.RegisterDate, dbo.Clients.ClientName, dbo.Clients.ClientEmail, dbo.Clients.ClientPhone, dbo.Clients.OpeningBalance, 
                      dbo.ExchangeCompanies.ExchangeCompanyName, dbo.Currencies.CurrencyName, dbo.Currencies.CurrencySymbol, dbo.Currencies.ExchangeRate, 
                      ISNULL(dbo.ClientPayments.PaymentValue, 0) - ISNULL(dbo.ClientPayments.CloseOut, 0) AS ReceiptRest, dbo.ClientPayments.Store_ID, dbo.Stores.StoreName
FROM         dbo.ClientPayments INNER JOIN
                      dbo.Clients ON dbo.ClientPayments.Client_ID = dbo.Clients.ClientID INNER JOIN
                      dbo.Currencies ON dbo.ClientPayments.Currency_ID = dbo.Currencies.CurrencyID INNER JOIN
                      dbo.Stores ON dbo.ClientPayments.Store_ID = dbo.Stores.StoreID LEFT OUTER JOIN
                      dbo.ExchangeCompanies ON dbo.ClientPayments.ExchangeCompany_ID = dbo.ExchangeCompanies.ExchangeCompanyID
UNION ALL
SELECT     0 AS PaymentID, dbo.CarInvoices.InvoiceID, dbo.CarInvoices.Client_ID, NULL AS ExchangeCompany_ID, dbo.CarInvoices.Currency_ID, dbo.CarInvoices.FirstAmount, 
                      0.00 AS CloseOut, dbo.CarInvoices.InvoiceDate, ''First Amount'' AS ReceiverName, dbo.CarInvoices.Notes, dbo.CarInvoices.Active, NULL AS Other, 
                      dbo.CarInvoices.Timestamp, NULL AS RegisterDate, Clients_1.ClientName, Clients_1.ClientEmail, Clients_1.ClientPhone, Clients_1.OpeningBalance, 
                      ''First Amount'' AS ExchangeCompanyName, Currencies_1.CurrencyName, Currencies_1.CurrencySymbol, Currencies_1.ExchangeRate, 0.00 AS ReceiptRest, 
                      dbo.CarInvoices.Store_ID, Stores_1.StoreName
FROM         dbo.CarInvoices INNER JOIN
                      dbo.Clients AS Clients_1 ON dbo.CarInvoices.Client_ID = Clients_1.ClientID INNER JOIN
                      dbo.Currencies AS Currencies_1 ON dbo.CarInvoices.Currency_ID = Currencies_1.CurrencyID INNER JOIN
                      dbo.Stores AS Stores_1 ON dbo.CarInvoices.Store_ID = Stores_1.StoreID
WHERE     (dbo.CarInvoices.FirstAmount > 0) AND (dbo.CarInvoices.Active = 1)
' 
GO
/****** Object:  View [dbo].[View_InvoicesSubPayments]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_InvoicesSubPayments]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_InvoicesSubPayments]
AS
SELECT     dbo.View_CarSalesInvoices.MarkerNameEn, dbo.View_CarSalesInvoices.TypeNameEn, dbo.View_CarSalesInvoices.SalePrice, 
                      dbo.View_CarSalesInvoices.FirstAmount, dbo.View_CarSalesInvoices.TotalSubPaymentsForThis, dbo.View_CarSalesInvoices.TotalPaymentsForThis, 
                      dbo.View_CarSalesInvoices.InvoiceDate, dbo.View_CarSalesInvoices.InvoiceID, dbo.View_ClientPayments.PaymentID, 
                      dbo.ClientInvoicesPayments.ClientInvoicesPaymentsValue, dbo.ClientInvoicesPayments.Active, dbo.ClientInvoicesPayments.RegisterDate, 
                      dbo.ClientInvoicesPayments.Notes, dbo.View_ClientPayments.ClientName, dbo.ClientInvoicesPayments.ClientInvoicesPaymentsID, 
                      dbo.View_ClientPayments.Client_ID, dbo.View_CarSalesInvoices.main_picture
FROM         dbo.View_CarSalesInvoices INNER JOIN
                      dbo.ClientInvoicesPayments ON dbo.View_CarSalesInvoices.InvoiceID = dbo.ClientInvoicesPayments.CarInvoice_ID INNER JOIN
                      dbo.View_ClientPayments ON dbo.ClientInvoicesPayments.ClientPayments_ID = dbo.View_ClientPayments.PaymentID
' 
GO
/****** Object:  View [dbo].[View_ExpensesBuyers]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_ExpensesBuyers]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_ExpensesBuyers]
AS
SELECT     dbo.CarExpenses.ExpenseID, dbo.CarExpenses.Car_ID, dbo.CarExpenses.Currency_ID, dbo.CarExpenses.ExpenseType_ID, dbo.CarExpenses.CompanyType, 
                      dbo.CarExpenses.Company_ID, dbo.CarExpenses.InvoiceCode, dbo.CarExpenses.DueDate, dbo.CarExpenses.PaymentDate, dbo.CarExpenses.Notes, 
                      dbo.CarExpenses.ExpenseValue, dbo.CarExpenses.InOutType, dbo.CarExpenses.Active, dbo.CarExpenses.AddDate, dbo.CarExpenses.WhoAdd, 
                      dbo.CarExpenses.AddIP, dbo.CarExpenses.EditDate, dbo.CarExpenses.WhoEdit, dbo.CarExpenses.EditIP, dbo.CarExpenses.Deleted, dbo.CarExpenses.DeleteDate, 
                      dbo.CarExpenses.WhoDelete, dbo.CarExpenses.DeleteIP, dbo.CarExpenses.Timestamp, dbo.CarsData.car_code, dbo.Currencies.CurrencySymbol, 
                      dbo.Currencies.ExchangeRate, dbo.ExpenseTypes.ExpenseTypeName, dbo.Buyers.BuyerName COLLATE SQL_Latin1_General_CP1_CI_AI AS CompanyName, 
                      dbo.Buyers.OpeningBalance, dbo.ExchangeCompanies.ExchangeCompanyID, dbo.ExchangeCompanies.ExchangeCompanyName, dbo.CarExpenses.PaymentValue, 
                      dbo.CarExpenses.Store_ID, dbo.Stores.StoreName, dbo.ExpenseTypes.GroupName
FROM         dbo.Currencies INNER JOIN
                      dbo.CarExpenses ON dbo.Currencies.CurrencyID = dbo.CarExpenses.Currency_ID INNER JOIN
                      dbo.Buyers ON dbo.CarExpenses.Company_ID = dbo.Buyers.BuyerID INNER JOIN
                      dbo.Stores ON dbo.CarExpenses.Store_ID = dbo.Stores.StoreID LEFT OUTER JOIN
                      dbo.ExchangeCompanies ON dbo.CarExpenses.ExchangeCompany_ID = dbo.ExchangeCompanies.ExchangeCompanyID LEFT OUTER JOIN
                      dbo.CarsData ON dbo.CarExpenses.Car_ID = dbo.CarsData.CarID LEFT OUTER JOIN
                      dbo.ExpenseTypes ON dbo.CarExpenses.ExpenseType_ID = dbo.ExpenseTypes.ExpenseTypeID
WHERE     (dbo.CarExpenses.CompanyType = ''buyer'') AND (dbo.CarExpenses.Deleted = 0)
' 
GO
/****** Object:  View [dbo].[View_ExpensesClearances]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_ExpensesClearances]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_ExpensesClearances]
AS
SELECT     dbo.CarExpenses.ExpenseID, dbo.CarExpenses.Car_ID, dbo.CarExpenses.Currency_ID, dbo.CarExpenses.ExpenseType_ID, dbo.CarExpenses.CompanyType, 
                      dbo.CarExpenses.Company_ID, dbo.CarExpenses.InvoiceCode, dbo.CarExpenses.DueDate, dbo.CarExpenses.PaymentDate, dbo.CarExpenses.Notes, 
                      dbo.CarExpenses.ExpenseValue, dbo.CarExpenses.InOutType, dbo.CarExpenses.Active, dbo.CarExpenses.AddDate, dbo.CarExpenses.WhoAdd, 
                      dbo.CarExpenses.AddIP, dbo.CarExpenses.EditDate, dbo.CarExpenses.WhoEdit, dbo.CarExpenses.EditIP, dbo.CarExpenses.Deleted, dbo.CarExpenses.DeleteDate, 
                      dbo.CarExpenses.WhoDelete, dbo.CarExpenses.DeleteIP, dbo.CarExpenses.Timestamp, dbo.CarsData.car_code, dbo.Currencies.CurrencySymbol, 
                      dbo.Currencies.ExchangeRate, dbo.ExpenseTypes.ExpenseTypeName, 
                      dbo.ClearanceCompanies.ClearanceName COLLATE SQL_Latin1_General_CP1_CI_AI AS CompanyName, dbo.ClearanceCompanies.OpeningBalance, 
                      dbo.ExchangeCompanies.ExchangeCompanyID, dbo.ExchangeCompanies.ExchangeCompanyName, dbo.CarExpenses.PaymentValue, dbo.CarExpenses.Store_ID, 
                      dbo.Stores.StoreName, dbo.ExpenseTypes.GroupName
FROM         dbo.Currencies INNER JOIN
                      dbo.CarExpenses ON dbo.Currencies.CurrencyID = dbo.CarExpenses.Currency_ID INNER JOIN
                      dbo.ClearanceCompanies ON dbo.CarExpenses.Company_ID = dbo.ClearanceCompanies.ClearanceID INNER JOIN
                      dbo.Stores ON dbo.CarExpenses.Store_ID = dbo.Stores.StoreID LEFT OUTER JOIN
                      dbo.ExchangeCompanies ON dbo.CarExpenses.ExchangeCompany_ID = dbo.ExchangeCompanies.ExchangeCompanyID LEFT OUTER JOIN
                      dbo.ExpenseTypes ON dbo.CarExpenses.ExpenseType_ID = dbo.ExpenseTypes.ExpenseTypeID LEFT OUTER JOIN
                      dbo.CarsData ON dbo.CarExpenses.Car_ID = dbo.CarsData.CarID
WHERE     (dbo.CarExpenses.CompanyType = N''clearance'') AND (dbo.CarExpenses.Deleted = 0)
' 
GO
/****** Object:  View [dbo].[View_ExpensesShipping]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_ExpensesShipping]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_ExpensesShipping]
AS
SELECT     dbo.CarExpenses.ExpenseID, dbo.CarExpenses.Car_ID, dbo.CarExpenses.Currency_ID, dbo.CarExpenses.ExpenseType_ID, dbo.CarExpenses.CompanyType, 
                      dbo.CarExpenses.Company_ID, dbo.CarExpenses.InvoiceCode, dbo.CarExpenses.DueDate, dbo.CarExpenses.PaymentDate, dbo.CarExpenses.Notes, 
                      dbo.CarExpenses.ExpenseValue, dbo.CarExpenses.InOutType, dbo.CarExpenses.Active, dbo.CarExpenses.AddDate, dbo.CarExpenses.WhoAdd, 
                      dbo.CarExpenses.AddIP, dbo.CarExpenses.EditDate, dbo.CarExpenses.WhoEdit, dbo.CarExpenses.EditIP, dbo.CarExpenses.Deleted, dbo.CarExpenses.DeleteDate, 
                      dbo.CarExpenses.WhoDelete, dbo.CarExpenses.DeleteIP, dbo.CarExpenses.Timestamp, dbo.CarsData.car_code, dbo.Currencies.CurrencySymbol, 
                      dbo.Currencies.ExchangeRate, dbo.ExpenseTypes.ExpenseTypeName, 
                      dbo.ShippingCompanies.ShipCompanyName COLLATE SQL_Latin1_General_CP1_CI_AI AS CompanyName, dbo.ShippingCompanies.OpeningBalance, 
                      dbo.ExchangeCompanies.ExchangeCompanyID, dbo.ExchangeCompanies.ExchangeCompanyName, dbo.CarExpenses.PaymentValue, dbo.CarExpenses.Store_ID, 
                      dbo.Stores.StoreName, dbo.ExpenseTypes.GroupName
FROM         dbo.Currencies INNER JOIN
                      dbo.CarExpenses ON dbo.Currencies.CurrencyID = dbo.CarExpenses.Currency_ID INNER JOIN
                      dbo.ShippingCompanies ON dbo.CarExpenses.Company_ID = dbo.ShippingCompanies.ShipCompanyID INNER JOIN
                      dbo.Stores ON dbo.CarExpenses.Store_ID = dbo.Stores.StoreID LEFT OUTER JOIN
                      dbo.ExchangeCompanies ON dbo.CarExpenses.ExchangeCompany_ID = dbo.ExchangeCompanies.ExchangeCompanyID LEFT OUTER JOIN
                      dbo.ExpenseTypes ON dbo.CarExpenses.ExpenseType_ID = dbo.ExpenseTypes.ExpenseTypeID LEFT OUTER JOIN
                      dbo.CarsData ON dbo.CarExpenses.Car_ID = dbo.CarsData.CarID
WHERE     (dbo.CarExpenses.CompanyType = N''shipping'') AND (dbo.CarExpenses.Deleted = 0)
' 
GO
/****** Object:  View [dbo].[View_ExpensesTowing]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_ExpensesTowing]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_ExpensesTowing]
AS
SELECT     dbo.CarExpenses.ExpenseID, dbo.CarExpenses.Car_ID, dbo.CarExpenses.Currency_ID, dbo.CarExpenses.ExpenseType_ID, dbo.CarExpenses.CompanyType, 
                      dbo.CarExpenses.Company_ID, dbo.CarExpenses.InvoiceCode, dbo.CarExpenses.DueDate, dbo.CarExpenses.PaymentDate, dbo.CarExpenses.Notes, 
                      dbo.CarExpenses.ExpenseValue, dbo.CarExpenses.InOutType, dbo.CarExpenses.Active, dbo.CarExpenses.AddDate, dbo.CarExpenses.WhoAdd, 
                      dbo.CarExpenses.AddIP, dbo.CarExpenses.EditDate, dbo.CarExpenses.WhoEdit, dbo.CarExpenses.EditIP, dbo.CarExpenses.Deleted, dbo.CarExpenses.DeleteDate, 
                      dbo.CarExpenses.WhoDelete, dbo.CarExpenses.DeleteIP, dbo.CarExpenses.Timestamp, dbo.CarsData.car_code, dbo.Currencies.CurrencySymbol, 
                      dbo.Currencies.ExchangeRate, dbo.ExpenseTypes.ExpenseTypeName, 
                      dbo.TowingCompanies.TowingCompanyName COLLATE SQL_Latin1_General_CP1_CI_AI AS CompanyName, dbo.TowingCompanies.OpeningBalance, 
                      dbo.ExchangeCompanies.ExchangeCompanyID, dbo.ExchangeCompanies.ExchangeCompanyName, dbo.CarExpenses.PaymentValue, dbo.CarExpenses.Store_ID, 
                      dbo.Stores.StoreName, dbo.ExpenseTypes.GroupName
FROM         dbo.Currencies INNER JOIN
                      dbo.CarExpenses ON dbo.Currencies.CurrencyID = dbo.CarExpenses.Currency_ID INNER JOIN
                      dbo.TowingCompanies ON dbo.CarExpenses.Company_ID = dbo.TowingCompanies.TowingCompanyID INNER JOIN
                      dbo.Stores ON dbo.CarExpenses.Store_ID = dbo.Stores.StoreID LEFT OUTER JOIN
                      dbo.ExchangeCompanies ON dbo.CarExpenses.ExchangeCompany_ID = dbo.ExchangeCompanies.ExchangeCompanyID LEFT OUTER JOIN
                      dbo.ExpenseTypes ON dbo.CarExpenses.ExpenseType_ID = dbo.ExpenseTypes.ExpenseTypeID LEFT OUTER JOIN
                      dbo.CarsData ON dbo.CarExpenses.Car_ID = dbo.CarsData.CarID
WHERE     (dbo.CarExpenses.CompanyType = N''towing'') AND (dbo.CarExpenses.Deleted = 0)
' 
GO
/****** Object:  View [dbo].[View_ExpensesTransports]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_ExpensesTransports]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_ExpensesTransports]
AS
SELECT     dbo.CarExpenses.ExpenseID, dbo.CarExpenses.Car_ID, dbo.CarExpenses.Currency_ID, dbo.CarExpenses.ExpenseType_ID, dbo.CarExpenses.CompanyType, 
                      dbo.CarExpenses.Company_ID, dbo.CarExpenses.InvoiceCode, dbo.CarExpenses.DueDate, dbo.CarExpenses.PaymentDate, dbo.CarExpenses.Notes, 
                      dbo.CarExpenses.ExpenseValue, dbo.CarExpenses.InOutType, dbo.CarExpenses.Active, dbo.CarExpenses.AddDate, dbo.CarExpenses.WhoAdd, 
                      dbo.CarExpenses.AddIP, dbo.CarExpenses.EditDate, dbo.CarExpenses.WhoEdit, dbo.CarExpenses.EditIP, dbo.CarExpenses.Deleted, dbo.CarExpenses.DeleteDate, 
                      dbo.CarExpenses.WhoDelete, dbo.CarExpenses.DeleteIP, dbo.CarExpenses.Timestamp, dbo.CarsData.car_code, dbo.Currencies.CurrencySymbol, 
                      dbo.Currencies.ExchangeRate, dbo.ExpenseTypes.ExpenseTypeName, 
                      dbo.TransportCompanies.TransportName COLLATE SQL_Latin1_General_CP1_CI_AI AS CompanyName, dbo.TransportCompanies.OpeningBalance, 
                      dbo.ExchangeCompanies.ExchangeCompanyID, dbo.ExchangeCompanies.ExchangeCompanyName, dbo.CarExpenses.PaymentValue, dbo.CarExpenses.Store_ID, 
                      dbo.Stores.StoreName, dbo.ExpenseTypes.GroupName
FROM         dbo.Currencies INNER JOIN
                      dbo.CarExpenses ON dbo.Currencies.CurrencyID = dbo.CarExpenses.Currency_ID INNER JOIN
                      dbo.Stores ON dbo.CarExpenses.Store_ID = dbo.Stores.StoreID LEFT OUTER JOIN
                      dbo.TransportCompanies ON dbo.CarExpenses.Company_ID = dbo.TransportCompanies.TransportID LEFT OUTER JOIN
                      dbo.ExchangeCompanies ON dbo.CarExpenses.ExchangeCompany_ID = dbo.ExchangeCompanies.ExchangeCompanyID LEFT OUTER JOIN
                      dbo.ExpenseTypes ON dbo.CarExpenses.ExpenseType_ID = dbo.ExpenseTypes.ExpenseTypeID LEFT OUTER JOIN
                      dbo.CarsData ON dbo.CarExpenses.Car_ID = dbo.CarsData.CarID
WHERE     (dbo.CarExpenses.CompanyType = N''transport'') AND (dbo.CarExpenses.Deleted = 0) OR
                      (dbo.CarExpenses.CompanyType = N''cash'')
' 
GO
/****** Object:  View [dbo].[View_ExpensesWorkshop]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_ExpensesWorkshop]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_ExpensesWorkshop]
AS
SELECT     dbo.CarExpenses.ExpenseID, dbo.CarExpenses.Car_ID, dbo.CarExpenses.Currency_ID, dbo.CarExpenses.ExpenseType_ID, dbo.CarExpenses.CompanyType, 
                      dbo.CarExpenses.Company_ID, dbo.CarExpenses.InvoiceCode, dbo.CarExpenses.DueDate, dbo.CarExpenses.PaymentDate, dbo.CarExpenses.Notes, 
                      dbo.CarExpenses.ExpenseValue, dbo.CarExpenses.InOutType, dbo.CarExpenses.Active, dbo.CarExpenses.AddDate, dbo.CarExpenses.WhoAdd, 
                      dbo.CarExpenses.AddIP, dbo.CarExpenses.EditDate, dbo.CarExpenses.WhoEdit, dbo.CarExpenses.EditIP, dbo.CarExpenses.Deleted, dbo.CarExpenses.DeleteDate, 
                      dbo.CarExpenses.WhoDelete, dbo.CarExpenses.DeleteIP, dbo.CarExpenses.Timestamp, dbo.CarsData.car_code, dbo.Currencies.CurrencySymbol, 
                      dbo.Currencies.ExchangeRate, dbo.ExpenseTypes.ExpenseTypeName, dbo.Workshops.WorkshopName COLLATE SQL_Latin1_General_CP1_CI_AI AS CompanyName,
                       dbo.Workshops.OpeningBalance, dbo.ExchangeCompanies.ExchangeCompanyID, dbo.ExchangeCompanies.ExchangeCompanyName, 
                      dbo.CarExpenses.PaymentValue, dbo.CarExpenses.Store_ID, dbo.Stores.StoreName, dbo.ExpenseTypes.GroupName
FROM         dbo.Currencies INNER JOIN
                      dbo.CarExpenses ON dbo.Currencies.CurrencyID = dbo.CarExpenses.Currency_ID INNER JOIN
                      dbo.Workshops ON dbo.CarExpenses.Company_ID = dbo.Workshops.WorkshopID INNER JOIN
                      dbo.Stores ON dbo.CarExpenses.Store_ID = dbo.Stores.StoreID LEFT OUTER JOIN
                      dbo.ExchangeCompanies ON dbo.CarExpenses.ExchangeCompany_ID = dbo.ExchangeCompanies.ExchangeCompanyID LEFT OUTER JOIN
                      dbo.ExpenseTypes ON dbo.CarExpenses.ExpenseType_ID = dbo.ExpenseTypes.ExpenseTypeID LEFT OUTER JOIN
                      dbo.CarsData ON dbo.CarExpenses.Car_ID = dbo.CarsData.CarID
WHERE     (dbo.CarExpenses.CompanyType = N''workshop'') AND (dbo.CarExpenses.Deleted = 0)
' 
GO
/****** Object:  View [dbo].[View_ExpensesList]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_ExpensesList]'))
EXEC dbo.sp_executesql @statement = N'/*UNION ALL
SELECT     ExpenseID, Car_ID, Currency_ID, ExpenseType_ID, CompanyType, Company_ID, InvoiceCode, DueDate, PaymentDate, Notes, ExpenseValue, InOutType, Active, 
                      AddDate, WhoAdd, AddIP, EditDate, WhoEdit, EditIP, Deleted, DeleteDate, WhoDelete, DeleteIP, Timestamp, car_code, CurrencySymbol, ExchangeRate, 
                      ExpenseTypeName, CompanyName, OpeningBalance, ExchangeCompanyID, ExchangeCompanyName
FROM         dbo.View_Clearances
UNION ALL
SELECT     ExpenseID, Car_ID, Currency_ID, ExpenseType_ID, CompanyType, Company_ID, InvoiceCode, DueDate, PaymentDate, Notes, ExpenseValue, InOutType, Active, 
                      AddDate, WhoAdd, AddIP, EditDate, WhoEdit, EditIP, Deleted, DeleteDate, WhoDelete, DeleteIP, Timestamp, car_code, CurrencySymbol, ExchangeRate, 
                      ExpenseTypeName, CompanyName, OpeningBalance, ExchangeCompanyID, ExchangeCompanyName
FROM         dbo.View_Transports*/
CREATE VIEW [dbo].[View_ExpensesList]
AS
SELECT     ExpenseID, Car_ID, Currency_ID, ExpenseType_ID, CompanyType, Company_ID, InvoiceCode, DueDate, PaymentDate, Notes, ExpenseValue, InOutType, Active, 
                      AddDate, WhoAdd, AddIP, EditDate, WhoEdit, EditIP, Deleted, DeleteDate, WhoDelete, DeleteIP, Timestamp, car_code, CurrencySymbol, ExchangeRate, 
                      ExpenseTypeName, CompanyName, OpeningBalance, ExchangeCompanyID, ExchangeCompanyName, PaymentValue, Store_ID, StoreName, GroupName
FROM         dbo.View_ExpensesBuyers
UNION ALL
SELECT     ExpenseID, Car_ID, Currency_ID, ExpenseType_ID, CompanyType, Company_ID, InvoiceCode, DueDate, PaymentDate, Notes, ExpenseValue, InOutType, Active, 
                      AddDate, WhoAdd, AddIP, EditDate, WhoEdit, EditIP, Deleted, DeleteDate, WhoDelete, DeleteIP, Timestamp, car_code, CurrencySymbol, ExchangeRate, 
                      ExpenseTypeName, CompanyName, OpeningBalance, ExchangeCompanyID, ExchangeCompanyName, PaymentValue, Store_ID, StoreName, GroupName
FROM         dbo.View_ExpensesShipping
UNION ALL
SELECT     ExpenseID, Car_ID, Currency_ID, ExpenseType_ID, CompanyType, Company_ID, InvoiceCode, DueDate, PaymentDate, Notes, ExpenseValue, InOutType, Active, 
                      AddDate, WhoAdd, AddIP, EditDate, WhoEdit, EditIP, Deleted, DeleteDate, WhoDelete, DeleteIP, Timestamp, car_code, CurrencySymbol, ExchangeRate, 
                      ExpenseTypeName, CompanyName, OpeningBalance, ExchangeCompanyID, ExchangeCompanyName, PaymentValue, Store_ID, StoreName, GroupName
FROM         dbo.View_ExpensesTowing
UNION ALL
SELECT     ExpenseID, Car_ID, Currency_ID, ExpenseType_ID, CompanyType, Company_ID, InvoiceCode, DueDate, PaymentDate, Notes, ExpenseValue, InOutType, Active, 
                      AddDate, WhoAdd, AddIP, EditDate, WhoEdit, EditIP, Deleted, DeleteDate, WhoDelete, DeleteIP, Timestamp, car_code, CurrencySymbol, ExchangeRate, 
                      ExpenseTypeName, CompanyName, OpeningBalance, ExchangeCompanyID, ExchangeCompanyName, PaymentValue, Store_ID, StoreName, GroupName
FROM         dbo.View_ExpensesClearances
UNION ALL
SELECT     ExpenseID, Car_ID, Currency_ID, ExpenseType_ID, CompanyType, Company_ID, InvoiceCode, DueDate, PaymentDate, Notes, ExpenseValue, InOutType, Active, 
                      AddDate, WhoAdd, AddIP, EditDate, WhoEdit, EditIP, Deleted, DeleteDate, WhoDelete, DeleteIP, Timestamp, car_code, CurrencySymbol, ExchangeRate, 
                      ExpenseTypeName, CompanyName, OpeningBalance, ExchangeCompanyID, ExchangeCompanyName, PaymentValue, Store_ID, StoreName, GroupName
FROM         dbo.View_ExpensesTransports
UNION ALL
SELECT     ExpenseID, Car_ID, Currency_ID, ExpenseType_ID, CompanyType, Company_ID, InvoiceCode, DueDate, PaymentDate, Notes, ExpenseValue, InOutType, Active, 
                      AddDate, WhoAdd, AddIP, EditDate, WhoEdit, EditIP, Deleted, DeleteDate, WhoDelete, DeleteIP, Timestamp, car_code, CurrencySymbol, ExchangeRate, 
                      ExpenseTypeName, CompanyName, OpeningBalance, ExchangeCompanyID, ExchangeCompanyName, PaymentValue, Store_ID, StoreName, GroupName
FROM         dbo.View_ExpensesWorkshop
' 
GO
/****** Object:  View [dbo].[View_CarInformation.temp]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_CarInformation.temp]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_CarInformation.temp]
AS
SELECT     dbo.Auctions.AuctionName, dbo.Buyers.BuyerName, dbo.CarsMarker.MarkerNameEn, dbo.CarsMarker.MarkerNameAr, dbo.CarsModel.TypeNameEn, 
                      dbo.CarsModel.TypeNameAr, dbo.CarsStatus.StatusEn, dbo.CarsStatus.StatusAr, dbo.Colors.ColorNameEn, dbo.Colors.ColorNameAr, 
                      Colors_1.ColorNameEn AS ExtColorEn, Colors_1.ColorNameAr AS ExtColorAr, dbo.Capacities.CapacityNameEn, dbo.Capacities.CapacityNameAr, 
                      dbo.WorkingStatus.WorkingStatusNameEn, dbo.WorkingStatus.WorkingStatusNameAr, dbo.PortShipping.PortShipEn, dbo.PortShipping.PortShipAr, 
                      dbo.Drives.DriveNameEn, dbo.Drives.DriveNameAr, dbo.Engines.EngineNameEn, dbo.Engines.EngineNameAr, dbo.ShippingCompanies.ShipCompanyName, 
                      dbo.Ships.ShipEn, dbo.Ships.ShipAr, dbo.Styles.CarStyleNameEn, dbo.Styles.CarStyleNameAr, dbo.Regions.RegionEn, dbo.Regions.RegionAr, dbo.States.StateEn, 
                      dbo.States.StateAr, dbo.Workshops.WorkshopName, dbo.Years.YearNameEn, dbo.Transmissions.TransmissionNameEn, dbo.Transmissions.TransmissionNameAr, 
                      dbo.CarsData.CarID, dbo.CarsData.car_code, dbo.CarsData.view_home, dbo.CarsData.active, dbo.CarsData.featured_car, dbo.CarsData.Auction_ID, 
                      dbo.CarsData.Buyer_ID, dbo.CarsData.Marker_ID, dbo.CarsData.Model_ID, dbo.CarsData.WorkingStatus_ID, dbo.CarsData.TransferStatus_ID, dbo.CarsData.Year_ID, 
                      dbo.CarsData.PortShipping_ID, dbo.CarsData.TowingCompsny_ID, dbo.CarsData.ShippingCompany_ID, dbo.CarsData.Ship_ID, dbo.CarsData.State_ID, 
                      dbo.CarsData.Region_ID, dbo.CarsData.Workshop_ID, dbo.CarsData.chassis_no, dbo.CarsData.container_no, dbo.CarsData.container_code, 
                      dbo.CarsData.booking_no, dbo.CarsData.poly_fielding, dbo.CarsData.lot_no, dbo.CarsData.engine_no, dbo.CarsData.sold, dbo.CarsData.exterior_color, 
                      dbo.CarsData.interior_color, dbo.CarsData.body_style, dbo.CarsData.car_transmission, dbo.CarsData.mileage, dbo.CarsData.car_drive, dbo.CarsData.car_engine, 
                      dbo.CarsData.car_capacity, dbo.CarsData.car_options, dbo.CarsData.car_remarks, dbo.CarsData.Customs_No, dbo.CarsData.purchase_date, 
                      dbo.CarsData.checkout_date, dbo.CarsData.Shipping_date, dbo.CarsData.expected_arrive_date, dbo.CarsData.dubia_arrive_date, dbo.CarsData.sharjah_arrive_date, 
                      dbo.CarsData.arrive_date, dbo.CarsData.WorkshopEntryDate, dbo.CarsData.WorkshopExitDate, dbo.CarsData.price_currency, dbo.CarsData.real_price, 
                      dbo.CarsData.sale_price, dbo.CarsData.cost, dbo.CarsData.CurrencyExchange_ID, dbo.CarsData.payement_to_who, dbo.CarsData.sale_to, dbo.CarsData.show_sale, 
                      dbo.CarsData.sale_date, dbo.CarsData.visitors, dbo.CarsData.main_picture, dbo.CarsData.Timestamp, dbo.CarsData.System_Who_Add, 
                      dbo.CarsData.System_Add_Date, dbo.CarsData.System_Modify_Date, dbo.CarsData.System_Delete_Status, dbo.CarsData.System_Who_Delete, 
                      dbo.CarsData.System_Delete_Date, dbo.CarsData.System_LastAction_IP, dbo.TowingCompanies.TowingCompanyName, dbo.CarsData.Transport_ID, 
                      dbo.CarsData.Clearance_ID, dbo.CarsData.Store_ID, dbo.Stores.StoreName, dbo.View_ClientInvoicesTemp.Client_ID, dbo.View_ClientInvoicesTemp.ClientName
FROM         dbo.WorkingStatus INNER JOIN
                      dbo.Auctions INNER JOIN
                      dbo.CarsData ON dbo.Auctions.AuctionID = dbo.CarsData.Auction_ID INNER JOIN
                      dbo.Buyers ON dbo.CarsData.Buyer_ID = dbo.Buyers.BuyerID INNER JOIN
                      dbo.CarsMarker ON dbo.CarsData.Marker_ID = dbo.CarsMarker.MarkerID INNER JOIN
                      dbo.CarsModel ON dbo.CarsData.Model_ID = dbo.CarsModel.ModelID INNER JOIN
                      dbo.CarsStatus ON dbo.CarsData.TransferStatus_ID = dbo.CarsStatus.StatusID ON 
                      dbo.WorkingStatus.WorkingStatusID = dbo.CarsData.WorkingStatus_ID LEFT OUTER JOIN
                      dbo.View_ClientInvoicesTemp ON dbo.CarsData.CarID = dbo.View_ClientInvoicesTemp.Car_ID LEFT OUTER JOIN
                      dbo.Stores ON dbo.CarsData.Store_ID = dbo.Stores.StoreID LEFT OUTER JOIN
                      dbo.TowingCompanies ON dbo.CarsData.TowingCompsny_ID = dbo.TowingCompanies.TowingCompanyID LEFT OUTER JOIN
                      dbo.Transmissions ON dbo.CarsData.car_transmission = dbo.Transmissions.TransmissionID LEFT OUTER JOIN
                      dbo.Years ON dbo.CarsData.Year_ID = dbo.Years.YearID LEFT OUTER JOIN
                      dbo.Workshops ON dbo.CarsData.Workshop_ID = dbo.Workshops.WorkshopID LEFT OUTER JOIN
                      dbo.States ON dbo.CarsData.State_ID = dbo.States.StateID LEFT OUTER JOIN
                      dbo.Regions ON dbo.CarsData.Region_ID = dbo.Regions.RegionID LEFT OUTER JOIN
                      dbo.Styles ON dbo.CarsData.body_style = dbo.Styles.CarStyleID LEFT OUTER JOIN
                      dbo.Ships ON dbo.CarsData.Ship_ID = dbo.Ships.ShipID LEFT OUTER JOIN
                      dbo.ShippingCompanies ON dbo.CarsData.ShippingCompany_ID = dbo.ShippingCompanies.ShipCompanyID LEFT OUTER JOIN
                      dbo.Engines ON dbo.CarsData.car_engine = dbo.Engines.EngineID LEFT OUTER JOIN
                      dbo.Drives ON dbo.CarsData.car_drive = dbo.Drives.DriveID LEFT OUTER JOIN
                      dbo.PortShipping ON dbo.CarsData.PortShipping_ID = dbo.PortShipping.PortShipID LEFT OUTER JOIN
                      dbo.Capacities ON dbo.CarsData.car_capacity = dbo.Capacities.CapacityID LEFT OUTER JOIN
                      dbo.Colors AS Colors_1 ON dbo.CarsData.exterior_color = Colors_1.ColorID LEFT OUTER JOIN
                      dbo.Colors ON dbo.CarsData.interior_color = dbo.Colors.ColorID
WHERE     (dbo.CarsData.System_Delete_Status = 0)
' 
GO
/****** Object:  View [dbo].[View_CarMakerMode.temp]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_CarMakerMode.temp]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_CarMakerMode.temp]
AS
SELECT     dbo.CarsData.CarID, dbo.CarsData.car_code, dbo.CarsData.view_home, dbo.CarsData.active, dbo.CarsData.featured_car, dbo.CarsData.Auction_ID, 
                      dbo.CarsData.Buyer_ID, dbo.CarsData.Marker_ID, dbo.CarsData.Model_ID, dbo.CarsData.WorkingStatus_ID, dbo.CarsData.TransferStatus_ID, dbo.CarsData.Year_ID, 
                      dbo.CarsData.PortShipping_ID, dbo.CarsData.TowingCompsny_ID, dbo.CarsData.ShippingCompany_ID, dbo.CarsData.Ship_ID, dbo.CarsData.State_ID, 
                      dbo.CarsData.Region_ID, dbo.CarsData.Workshop_ID, dbo.CarsData.Transport_ID, dbo.CarsData.Clearance_ID, dbo.CarsData.Store_ID, dbo.CarsData.chassis_no, 
                      dbo.CarsData.container_no, dbo.CarsData.container_code, dbo.CarsData.booking_no, dbo.CarsData.poly_fielding, dbo.CarsData.lot_no, dbo.CarsData.engine_no, 
                      dbo.CarsData.sold, dbo.CarsData.exterior_color, dbo.CarsData.interior_color, dbo.CarsData.body_style, dbo.CarsData.car_transmission, dbo.CarsData.mileage, 
                      dbo.CarsData.car_drive, dbo.CarsData.car_engine, dbo.CarsData.car_capacity, dbo.CarsData.car_options, dbo.CarsData.car_remarks, dbo.CarsData.Customs_No, 
                      dbo.CarsData.purchase_date, dbo.CarsData.checkout_date, dbo.CarsData.Shipping_date, dbo.CarsData.expected_arrive_date, dbo.CarsData.dubia_arrive_date, 
                      dbo.CarsData.sharjah_arrive_date, dbo.CarsData.arrive_date, dbo.CarsData.WorkshopEntryDate, dbo.CarsData.WorkshopExitDate, dbo.CarsData.price_currency, 
                      dbo.CarsData.real_price, dbo.CarsData.sale_price, dbo.CarsData.cost, dbo.CarsData.CurrencyExchange_ID, dbo.CarsData.payement_to_who, dbo.CarsData.sale_to, 
                      dbo.CarsData.show_sale, dbo.CarsData.sale_date, dbo.CarsData.visitors, dbo.CarsData.main_picture, dbo.CarsData.Timestamp, dbo.CarsData.System_Who_Add, 
                      dbo.CarsData.System_Add_Date, dbo.CarsData.System_Modify_Date, dbo.CarsData.System_Delete_Status, dbo.CarsData.System_Who_Delete, 
                      dbo.CarsData.System_Delete_Date, dbo.CarsData.System_LastAction_IP, dbo.CarsMarker.MarkerNameEn, dbo.CarsMarker.MarkerNameAr, 
                      dbo.CarsModel.TypeNameEn, dbo.CarsModel.TypeNameAr
FROM         dbo.CarsData INNER JOIN
                      dbo.CarsModel ON dbo.CarsData.Model_ID = dbo.CarsModel.ModelID INNER JOIN
                      dbo.CarsMarker ON dbo.CarsModel.Marker_ID = dbo.CarsMarker.MarkerID
' 
GO
/****** Object:  View [dbo].[View_ClientPayments.temp]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_ClientPayments.temp]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_ClientPayments.temp]
AS
SELECT     dbo.ClientPayments.PaymentID, dbo.ClientPayments.Invoice_ID, dbo.ClientPayments.Client_ID, dbo.ClientPayments.ExchangeCompany_ID, 
                      dbo.ClientPayments.Currency_ID, dbo.ClientPayments.PaymentValue, dbo.ClientPayments.CloseOut, dbo.ClientPayments.PaymentDate, 
                      dbo.ClientPayments.ReceiverName, dbo.ClientPayments.Notes, dbo.ClientPayments.Active, dbo.ClientPayments.Other, dbo.ClientPayments.Timestamp, 
                      dbo.ClientPayments.RegisterDate, dbo.Clients.ClientName, dbo.Clients.ClientEmail, dbo.Clients.ClientPhone, dbo.Clients.OpeningBalance, 
                      dbo.ExchangeCompanies.ExchangeCompanyName, dbo.Currencies.CurrencyName, dbo.Currencies.CurrencySymbol, dbo.Currencies.ExchangeRate, 
                      ISNULL(dbo.ClientPayments.PaymentValue, 0) - ISNULL(dbo.ClientPayments.CloseOut, 0) AS ReceiptRest
FROM         dbo.ClientPayments INNER JOIN
                      dbo.Clients ON dbo.ClientPayments.Client_ID = dbo.Clients.ClientID INNER JOIN
                      dbo.Currencies ON dbo.ClientPayments.Currency_ID = dbo.Currencies.CurrencyID LEFT OUTER JOIN
                      dbo.ExchangeCompanies ON dbo.ClientPayments.ExchangeCompany_ID = dbo.ExchangeCompanies.ExchangeCompanyID
' 
GO
/****** Object:  View [dbo].[View_FirstAmountsForClientPaymentsTemp]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_FirstAmountsForClientPaymentsTemp]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_FirstAmountsForClientPaymentsTemp]
AS
SELECT     NULL AS PaymentID, dbo.CarInvoices.InvoiceID, dbo.CarInvoices.Client_ID, NULL AS ExchangeCompany_ID, dbo.CarInvoices.Currency_ID, 
                      dbo.CarInvoices.FirstAmount, 0.00 AS CloseOut, dbo.CarInvoices.InvoiceDate, NULL AS ReceiverName, dbo.CarInvoices.Notes, dbo.CarInvoices.Active, NULL 
                      AS Other, dbo.CarInvoices.Timestamp, NULL AS RegisterDate, dbo.Clients.ClientName, dbo.Clients.ClientEmail, dbo.Clients.ClientPhone, 
                      dbo.Clients.OpeningBalance, NULL AS ExchangeCompanyName, dbo.Currencies.CurrencyName, dbo.Currencies.CurrencySymbol, dbo.Currencies.ExchangeRate, 
                      0.00 AS ReceiptRest
FROM         dbo.CarInvoices INNER JOIN
                      dbo.Clients ON dbo.CarInvoices.Client_ID = dbo.Clients.ClientID INNER JOIN
                      dbo.Currencies ON dbo.CarInvoices.Currency_ID = dbo.Currencies.CurrencyID
WHERE     (dbo.CarInvoices.Active = 1)
' 
GO
/****** Object:  View [dbo].[View_SafeValuesList]    Script Date: 2/2/2018 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_SafeValuesList]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_SafeValuesList]
AS
SELECT     TOP (100) PERCENT dbo.MainSafeDebitCredit.SafeID, dbo.MainSafeDebitCredit.Employee_ID, dbo.MainSafeDebitCredit.Store_ID, 
                      dbo.MainSafeDebitCredit.SafeDebitValue, dbo.MainSafeDebitCredit.SafeDebitDate, dbo.MainSafeDebitCredit.SafeCreditValue, dbo.MainSafeDebitCredit.SafeCreditDate, 
                      dbo.MainSafeDebitCredit.System_Who_Add, dbo.MainSafeDebitCredit.System_Add_Date, dbo.MainSafeDebitCredit.System_Modify_Date, 
                      dbo.MainSafeDebitCredit.System_Delete_Status, dbo.MainSafeDebitCredit.System_Who_Delete, dbo.MainSafeDebitCredit.System_Delete_Date, 
                      dbo.MainSafeDebitCredit.System_LastAction_IP, dbo.tbl_admin_n.name, dbo.Stores.StoreName
FROM         dbo.MainSafeDebitCredit INNER JOIN
                      dbo.tbl_admin_n ON dbo.MainSafeDebitCredit.Employee_ID = dbo.tbl_admin_n.id INNER JOIN
                      dbo.Stores ON dbo.MainSafeDebitCredit.Store_ID = dbo.Stores.StoreID
WHERE     (dbo.MainSafeDebitCredit.System_Delete_Status = 0)
' 
GO
SET IDENTITY_INSERT [dbo].[Auctions] ON 
GO
INSERT [dbo].[Auctions] ([AuctionID], [AuctionName], [AuctionEmail], [AuctionPhone], [AuctionAddress], [AuctionDesc], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (1, N'IAAI', N'atr@ealaf.com', N'000000000000', NULL, N'notes ...', 1, 1, NULL, CAST(N'2011-09-05T14:08:01.720' AS DateTime), CAST(N'2011-09-05T15:08:12.190' AS DateTime), 0, NULL, NULL, N'192.168.1.150')
GO
INSERT [dbo].[Auctions] ([AuctionID], [AuctionName], [AuctionEmail], [AuctionPhone], [AuctionAddress], [AuctionDesc], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (2, N'COPART', N'COPART@elaf.com', N'', NULL, N'', 1, 1, NULL, CAST(N'2011-09-19T09:23:24.440' AS DateTime), NULL, 0, NULL, NULL, N'192.168.1.150')
GO
INSERT [dbo].[Auctions] ([AuctionID], [AuctionName], [AuctionEmail], [AuctionPhone], [AuctionAddress], [AuctionDesc], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (3, N'ATR', N'', N'', NULL, N'', 1, 1, NULL, CAST(N'2011-09-19T09:24:48.770' AS DateTime), CAST(N'2011-10-22T16:08:28.793' AS DateTime), 0, NULL, NULL, N'::1')
GO
INSERT [dbo].[Auctions] ([AuctionID], [AuctionName], [AuctionEmail], [AuctionPhone], [AuctionAddress], [AuctionDesc], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (4, N'IAAI', N'atr@ealaf.com', N'1111111', NULL, N'notes ...', 1, 1, NULL, CAST(N'2011-09-05T14:08:01.720' AS DateTime), CAST(N'2011-10-23T13:25:22.843' AS DateTime), 0, NULL, NULL, N'94.201.228.31')
GO
INSERT [dbo].[Auctions] ([AuctionID], [AuctionName], [AuctionEmail], [AuctionPhone], [AuctionAddress], [AuctionDesc], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (5, N'COPART', N'COPART@elaf.com', N'', NULL, N'', 1, 1, NULL, CAST(N'2011-09-19T09:23:24.440' AS DateTime), NULL, 0, NULL, NULL, N'192.168.1.150')
GO
INSERT [dbo].[Auctions] ([AuctionID], [AuctionName], [AuctionEmail], [AuctionPhone], [AuctionAddress], [AuctionDesc], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (6, N'ATR', N'', N'', NULL, N'', 2, 1, NULL, CAST(N'2011-09-19T09:24:48.770' AS DateTime), CAST(N'2011-10-03T09:49:26.333' AS DateTime), 1, NULL, CAST(N'2011-10-04T17:42:32.880' AS DateTime), N'94.201.228.178')
GO
INSERT [dbo].[Auctions] ([AuctionID], [AuctionName], [AuctionEmail], [AuctionPhone], [AuctionAddress], [AuctionDesc], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (7, N'AAAAA', N'', N'', NULL, N'', 1, 1, NULL, CAST(N'2011-10-03T09:48:48.037' AS DateTime), NULL, 1, NULL, CAST(N'2011-10-03T22:35:04.050' AS DateTime), N'94.201.228.178')
GO
INSERT [dbo].[Auctions] ([AuctionID], [AuctionName], [AuctionEmail], [AuctionPhone], [AuctionAddress], [AuctionDesc], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (8, N'MANHEIM', N'', N'', NULL, N'', 1, 1, NULL, CAST(N'2011-10-03T22:34:50.677' AS DateTime), NULL, 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[Auctions] ([AuctionID], [AuctionName], [AuctionEmail], [AuctionPhone], [AuctionAddress], [AuctionDesc], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (9, N'qcs', N'', N'', NULL, N'', 1, 1, NULL, CAST(N'2011-11-15T10:25:53.713' AS DateTime), NULL, 0, NULL, NULL, N'31.218.72.160')
GO
INSERT [dbo].[Auctions] ([AuctionID], [AuctionName], [AuctionEmail], [AuctionPhone], [AuctionAddress], [AuctionDesc], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (10, N'COPART', N'', N'', NULL, N'', 1, 1, NULL, CAST(N'2011-12-15T15:46:12.390' AS DateTime), CAST(N'2011-12-15T15:46:31.577' AS DateTime), 1, NULL, CAST(N'2011-12-15T15:47:21.827' AS DateTime), N'41.35.48.133')
GO
SET IDENTITY_INSERT [dbo].[Auctions] OFF
GO
SET IDENTITY_INSERT [dbo].[Buyers] ON 
GO
INSERT [dbo].[Buyers] ([BuyerID], [Auction_ID], [BuyerName], [BuyerEmail], [BuyerPhone], [BuyerAddress], [BuyerDesc], [Priority], [Active], [OpeningBalance], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (1, 1, N'EAGLE501', N'EAGLE501@ealaf.com', N'000000000000', NULL, N'notes', 1, 1, NULL, NULL, CAST(N'2011-09-05T14:41:49.497' AS DateTime), CAST(N'2011-09-05T15:07:52.087' AS DateTime), 0, NULL, NULL, N'192.168.1.150')
GO
INSERT [dbo].[Buyers] ([BuyerID], [Auction_ID], [BuyerName], [BuyerEmail], [BuyerPhone], [BuyerAddress], [BuyerDesc], [Priority], [Active], [OpeningBalance], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (2, 2, N'COPART274', N'COPART274@elaf.com', N'', NULL, N'', 1, 1, NULL, NULL, CAST(N'2011-09-19T09:25:25.340' AS DateTime), NULL, 0, NULL, NULL, N'192.168.1.150')
GO
INSERT [dbo].[Buyers] ([BuyerID], [Auction_ID], [BuyerName], [BuyerEmail], [BuyerPhone], [BuyerAddress], [BuyerDesc], [Priority], [Active], [OpeningBalance], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (3, 2, N'C470294', N'', N'', NULL, N'', 1, 1, NULL, NULL, CAST(N'2011-09-19T09:25:51.770' AS DateTime), NULL, 0, NULL, NULL, N'192.168.1.150')
GO
INSERT [dbo].[Buyers] ([BuyerID], [Auction_ID], [BuyerName], [BuyerEmail], [BuyerPhone], [BuyerAddress], [BuyerDesc], [Priority], [Active], [OpeningBalance], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (4, 1, N'CANCHOLA', N'', N'', NULL, N'', 1, 1, 0.0000, NULL, CAST(N'2011-09-19T09:26:23.603' AS DateTime), CAST(N'2011-10-23T11:41:04.253' AS DateTime), 0, NULL, NULL, N'::1')
GO
INSERT [dbo].[Buyers] ([BuyerID], [Auction_ID], [BuyerName], [BuyerEmail], [BuyerPhone], [BuyerAddress], [BuyerDesc], [Priority], [Active], [OpeningBalance], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (5, 1, N'canchola', N'', N'', NULL, N'', 1, 1, 0.0000, NULL, CAST(N'2011-12-14T15:39:55.093' AS DateTime), NULL, 0, NULL, NULL, N'31.218.202.227')
GO
INSERT [dbo].[Buyers] ([BuyerID], [Auction_ID], [BuyerName], [BuyerEmail], [BuyerPhone], [BuyerAddress], [BuyerDesc], [Priority], [Active], [OpeningBalance], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (6, 2, N'274582', N'', N'', NULL, N'', 1, 1, 0.0000, NULL, CAST(N'2011-12-14T15:40:16.750' AS DateTime), NULL, 0, NULL, NULL, N'31.218.202.227')
GO
INSERT [dbo].[Buyers] ([BuyerID], [Auction_ID], [BuyerName], [BuyerEmail], [BuyerPhone], [BuyerAddress], [BuyerDesc], [Priority], [Active], [OpeningBalance], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (7, 2, N'704874', N'', N'', NULL, N'', 1, 1, 0.0000, NULL, CAST(N'2011-12-14T15:40:58.467' AS DateTime), NULL, 0, NULL, NULL, N'31.218.202.227')
GO
INSERT [dbo].[Buyers] ([BuyerID], [Auction_ID], [BuyerName], [BuyerEmail], [BuyerPhone], [BuyerAddress], [BuyerDesc], [Priority], [Active], [OpeningBalance], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (8, 1, N'BUCAS', N'', N'', NULL, N'', 1, 1, 0.0000, NULL, CAST(N'2011-12-14T15:42:07.293' AS DateTime), NULL, 0, NULL, NULL, N'31.218.202.227')
GO
SET IDENTITY_INSERT [dbo].[Buyers] OFF
GO
SET IDENTITY_INSERT [dbo].[Capacities] ON 
GO
INSERT [dbo].[Capacities] ([CapacityID], [CapacityNameEn], [CapacityNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (1, N'1000 cc', N'1000 cc', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Capacities] ([CapacityID], [CapacityNameEn], [CapacityNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (2, N'1200 cc', N'1200 cc', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Capacities] ([CapacityID], [CapacityNameEn], [CapacityNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (3, N'1300 cc', N'1300 cc', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Capacities] ([CapacityID], [CapacityNameEn], [CapacityNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (4, N'1500 cc', N'1500 cc', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Capacities] ([CapacityID], [CapacityNameEn], [CapacityNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (5, N'1600 cc', N'1600 cc', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Capacities] ([CapacityID], [CapacityNameEn], [CapacityNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (6, N'1700 cc', N'1700 cc', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Capacities] ([CapacityID], [CapacityNameEn], [CapacityNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (7, N'1800 cc', N'1800 cc', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Capacities] ([CapacityID], [CapacityNameEn], [CapacityNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (8, N'2000 cc', N'2000 cc', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Capacities] ([CapacityID], [CapacityNameEn], [CapacityNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (9, N'2300 cc', N'2300 cc', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Capacities] ([CapacityID], [CapacityNameEn], [CapacityNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (10, N'2500 cc', N'2500 cc', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Capacities] ([CapacityID], [CapacityNameEn], [CapacityNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (11, N'2800 cc', N'2800 cc', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Capacities] ([CapacityID], [CapacityNameEn], [CapacityNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (12, N'3000 cc', N'3000 cc', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Capacities] ([CapacityID], [CapacityNameEn], [CapacityNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (13, N'3500 cc', N'3500 cc', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Capacities] ([CapacityID], [CapacityNameEn], [CapacityNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (14, N'1000 cc', N'1000 cc', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Capacities] ([CapacityID], [CapacityNameEn], [CapacityNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (15, N'1200 cc', N'1200 cc', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Capacities] ([CapacityID], [CapacityNameEn], [CapacityNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (16, N'1300 cc', N'1300 cc', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Capacities] ([CapacityID], [CapacityNameEn], [CapacityNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (17, N'1500 cc', N'1500 cc', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Capacities] ([CapacityID], [CapacityNameEn], [CapacityNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (18, N'1600 cc', N'1600 cc', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Capacities] ([CapacityID], [CapacityNameEn], [CapacityNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (19, N'1700 cc', N'1700 cc', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Capacities] ([CapacityID], [CapacityNameEn], [CapacityNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (20, N'1800 cc', N'1800 cc', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Capacities] ([CapacityID], [CapacityNameEn], [CapacityNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (21, N'2000 cc', N'2000 cc', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Capacities] ([CapacityID], [CapacityNameEn], [CapacityNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (22, N'2300 cc', N'2300 cc', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Capacities] ([CapacityID], [CapacityNameEn], [CapacityNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (23, N'2500 cc', N'2500 cc', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Capacities] ([CapacityID], [CapacityNameEn], [CapacityNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (24, N'2800 cc', N'2800 cc', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Capacities] ([CapacityID], [CapacityNameEn], [CapacityNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (25, N'3000 cc', N'3000 cc', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Capacities] ([CapacityID], [CapacityNameEn], [CapacityNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (26, N'3500 cc', N'3500 cc', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Capacities] ([CapacityID], [CapacityNameEn], [CapacityNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (27, N'5000 cc', N'5000 cc', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Capacities] ([CapacityID], [CapacityNameEn], [CapacityNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (28, N'5300 cc', N'5300 cc', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Capacities] ([CapacityID], [CapacityNameEn], [CapacityNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (29, N'5500 cc', N'5500 cc', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Capacities] OFF
GO
SET IDENTITY_INSERT [dbo].[CarExpenses] ON 
GO
INSERT [dbo].[CarExpenses] ([ExpenseID], [Car_ID], [Currency_ID], [ExpenseType_ID], [CompanyType], [Company_ID], [ExchangeCompany_ID], [InvoiceCode], [DueDate], [PaymentDate], [Notes], [ExpenseValue], [PaymentValue], [InOutType], [Active], [Store_ID], [AddDate], [WhoAdd], [AddIP], [EditDate], [WhoEdit], [EditIP], [Deleted], [DeleteDate], [WhoDelete], [DeleteIP]) VALUES (29, 24, 2, 8, N'cash', NULL, NULL, N'1', CAST(N'2011-12-28T00:00:00.000' AS DateTime), NULL, N'200 مصروف على سيارة بالدرهم', 200.0000, 0.2722, N'expense', 1, 1, CAST(N'2011-12-28T13:05:35.297' AS DateTime), 1, N'::1', NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarExpenses] ([ExpenseID], [Car_ID], [Currency_ID], [ExpenseType_ID], [CompanyType], [Company_ID], [ExchangeCompany_ID], [InvoiceCode], [DueDate], [PaymentDate], [Notes], [ExpenseValue], [PaymentValue], [InOutType], [Active], [Store_ID], [AddDate], [WhoAdd], [AddIP], [EditDate], [WhoEdit], [EditIP], [Deleted], [DeleteDate], [WhoDelete], [DeleteIP]) VALUES (30, 24, 1, 1, N'buyer', 2, NULL, N'2', CAST(N'2011-12-28T00:00:00.000' AS DateTime), NULL, N'200مصروف بالدولار على سيارة للعميل كوبرت', 200.0000, 1.0000, N'expense', 1, 1, CAST(N'2011-12-28T13:09:26.590' AS DateTime), 1, N'::1', NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarExpenses] ([ExpenseID], [Car_ID], [Currency_ID], [ExpenseType_ID], [CompanyType], [Company_ID], [ExchangeCompany_ID], [InvoiceCode], [DueDate], [PaymentDate], [Notes], [ExpenseValue], [PaymentValue], [InOutType], [Active], [Store_ID], [AddDate], [WhoAdd], [AddIP], [EditDate], [WhoEdit], [EditIP], [Deleted], [DeleteDate], [WhoDelete], [DeleteIP]) VALUES (31, NULL, 2, 9, N'cash', NULL, NULL, N'41967', NULL, CAST(N'2011-12-28T13:14:57.337' AS DateTime), N'مصروفا شاى لمدة اسبوع', 50.0000, 0.2722, N'payment', 1, 1, CAST(N'2011-12-28T13:14:57.340' AS DateTime), 1, N'::1', NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarExpenses] ([ExpenseID], [Car_ID], [Currency_ID], [ExpenseType_ID], [CompanyType], [Company_ID], [ExchangeCompany_ID], [InvoiceCode], [DueDate], [PaymentDate], [Notes], [ExpenseValue], [PaymentValue], [InOutType], [Active], [Store_ID], [AddDate], [WhoAdd], [AddIP], [EditDate], [WhoEdit], [EditIP], [Deleted], [DeleteDate], [WhoDelete], [DeleteIP]) VALUES (32, NULL, 1, NULL, N'towing', 1, 1, N'3', NULL, CAST(N'2011-12-28T00:00:00.000' AS DateTime), N'وصل لشركة السحب 100 دولار من الخزنة 1', 100.0000, 1.0000, N'payment', 1, 1, CAST(N'2011-12-28T13:58:49.423' AS DateTime), 1, N'::1', NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarExpenses] ([ExpenseID], [Car_ID], [Currency_ID], [ExpenseType_ID], [CompanyType], [Company_ID], [ExchangeCompany_ID], [InvoiceCode], [DueDate], [PaymentDate], [Notes], [ExpenseValue], [PaymentValue], [InOutType], [Active], [Store_ID], [AddDate], [WhoAdd], [AddIP], [EditDate], [WhoEdit], [EditIP], [Deleted], [DeleteDate], [WhoDelete], [DeleteIP]) VALUES (33, NULL, 2, NULL, N'clearance', 1, 1, N'4', NULL, CAST(N'2011-12-28T00:00:00.000' AS DateTime), N'فلوس راحت لشركة التخليص الجمركى1 بالدرهم', 100.0000, 0.2722, N'payment', 1, 1, CAST(N'2011-12-28T14:05:45.420' AS DateTime), 1, N'::1', NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[CarExpenses] OFF
GO
SET IDENTITY_INSERT [dbo].[CarInvoices] ON 
GO
INSERT [dbo].[CarInvoices] ([InvoiceID], [SiteCompany_ID], [Car_ID], [Client_ID], [Currency_ID], [SalePrice], [FirstAmount], [InvoiceDate], [Notes], [Active], [Store_ID], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (9, 1, 24, 1, 2, 1000.0000, 500.0000, CAST(N'2011-12-26T19:44:02.317' AS DateTime), N'sale this car', 1, 1, 1, CAST(N'2011-12-26T19:44:02.507' AS DateTime), NULL, 0, NULL, NULL, N'::1')
GO
SET IDENTITY_INSERT [dbo].[CarInvoices] OFF
GO
SET IDENTITY_INSERT [dbo].[CarOptions] ON 
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (1, N'Full Options', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (2, N'Anti-Lock Brakes/ABS', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (3, N'Alloy Wheels', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (4, N'Airbag: Driver', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (5, N'Anti-Lock Brakes', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (6, N'Bucket Seats', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (7, N'Fully Auto', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (8, N'Power Locks', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (9, N'CD Changer', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (10, N'Power Windows', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (11, N'Fog Lights', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (12, N'Sunroof/Moon roof', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (13, N'Airbag: Passenger', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (14, N'Cruise Control', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (15, N'Leather Interior', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (16, N'Rear Window Defroster', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (17, N'Power Steering', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (18, N'CD Player', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (19, N'Fully Loaded', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (20, N'A/C: Front', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (21, N'Third Row Seats', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (22, N'Airbag: Side', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (23, N'Navigation System', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (24, N'Memory Seats', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (25, N'Rear Window Wiper', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (26, N'Keyless Entry', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (27, N'DVD Player', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (28, N'Dealer warranty', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (29, N'A/C: Rear', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (30, N'Tow Package', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (31, N'Alarm', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (32, N'TV/VCR/DVD', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (33, N'Power Seats', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (34, N'Tinted Glass', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (35, N'Fabric Seats', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (36, N'Premium Sound', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (37, N'FSH', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (38, N'Cassette Radio', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (39, N'Warranty', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (40, N'Full Options', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (41, N'Anti-Lock Brakes/ABS', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (42, N'Alloy Wheels', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (43, N'Airbag: Driver', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (44, N'Anti-Lock Brakes', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (45, N'Bucket Seats', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (46, N'Fully Auto', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (47, N'Power Locks', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (48, N'CD Changer', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (49, N'Power Windows', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (50, N'Fog Lights', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (51, N'Sunroof/Moon roof', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (52, N'Airbag: Passenger', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (53, N'Cruise Control', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (54, N'Leather Interior', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (55, N'Rear Window Defroster', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (56, N'Power Steering', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (57, N'CD Player', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (58, N'Fully Loaded', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (59, N'A/C: Front', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (60, N'Third Row Seats', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (61, N'Airbag: Side', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (62, N'Navigation System', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (63, N'Memory Seats', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (64, N'Rear Window Wiper', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (65, N'Keyless Entry', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (66, N'DVD Player', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (67, N'Dealer warranty', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (68, N'A/C: Rear', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (69, N'Tow Package', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (70, N'Alarm', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (71, N'TV/VCR/DVD', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (72, N'Power Seats', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (73, N'Tinted Glass', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (74, N'Fabric Seats', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (75, N'Premium Sound', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (76, N'FSH', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (77, N'Cassette Radio', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarOptions] ([CarOptionID], [CarOptionNameEn], [CarOptionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (78, N'Warranty', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[CarOptions] OFF
GO
SET IDENTITY_INSERT [dbo].[CarParts] ON 
GO
INSERT [dbo].[CarParts] ([Id], [Description], [Price], [IsActive], [IsDeleted], [YearId], [MakerId], [ModelId], [TypeId], [CreatedDate], [Periority]) VALUES (20, N'New Seat', 5000.0000, 1, 0, 36, 1, 1, 3, CAST(N'2018-01-25T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[CarParts] ([Id], [Description], [Price], [IsActive], [IsDeleted], [YearId], [MakerId], [ModelId], [TypeId], [CreatedDate], [Periority]) VALUES (21, N'newseat', NULL, 1, 0, 31, 1, 1, 3, CAST(N'2018-01-25T00:00:00.000' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[CarParts] OFF
GO
SET IDENTITY_INSERT [dbo].[CarPartsImages] ON 
GO
INSERT [dbo].[CarPartsImages] ([Id], [Url], [PartId], [IsMain], [IsActive], [Priority]) VALUES (13, N'20_LkBJKOf7.jpg', 20, 0, NULL, NULL)
GO
INSERT [dbo].[CarPartsImages] ([Id], [Url], [PartId], [IsMain], [IsActive], [Priority]) VALUES (14, N'20_bQT1WmUM.jpg', 20, 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[CarPartsImages] OFF
GO
SET IDENTITY_INSERT [dbo].[CarPartTypes] ON 
GO
INSERT [dbo].[CarPartTypes] ([ID], [Name_En], [Name_Ar], [IsDeleted]) VALUES (1, N'Body', N'هيكل', 0)
GO
INSERT [dbo].[CarPartTypes] ([ID], [Name_En], [Name_Ar], [IsDeleted]) VALUES (2, N'Electronics', N'الكترونك', 0)
GO
INSERT [dbo].[CarPartTypes] ([ID], [Name_En], [Name_Ar], [IsDeleted]) VALUES (3, N'Interior', N'داخلى', 0)
GO
SET IDENTITY_INSERT [dbo].[CarPartTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[CarsData] ON 
GO
INSERT [dbo].[CarsData] ([CarID], [car_code], [view_home], [active], [featured_car], [Auction_ID], [Buyer_ID], [Marker_ID], [Model_ID], [WorkingStatus_ID], [TransferStatus_ID], [Year_ID], [PortShipping_ID], [TowingCompsny_ID], [ShippingCompany_ID], [Ship_ID], [State_ID], [Region_ID], [Workshop_ID], [Transport_ID], [Clearance_ID], [Store_ID], [chassis_no], [container_no], [container_code], [booking_no], [poly_fielding], [lot_no], [engine_no], [sold], [exterior_color], [interior_color], [body_style], [car_transmission], [mileage], [car_drive], [car_engine], [car_capacity], [car_options], [car_remarks], [Customs_No], [purchase_date], [checkout_date], [Shipping_date], [expected_arrive_date], [dubia_arrive_date], [sharjah_arrive_date], [arrive_date], [WorkshopEntryDate], [WorkshopExitDate], [price_currency], [real_price], [sale_price], [cost], [CurrencyExchange_ID], [payement_to_who], [sale_to], [show_sale], [sale_date], [visitors], [main_picture], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (19, 100, NULL, 1, 0, NULL, NULL, 1, 1, 3, 3, 1, 1, NULL, 1, 1, NULL, NULL, 1, NULL, NULL, 1, N'852sdfljlaodeoq8e47123', N'2563', N'', N'', N'', N'100', N'989565', 0, 1, 1, 1, 1, N'100253', NULL, 1, 1, N'Full Options|Airbag: Driver|Airbag: Side|Keyless Entry|A/C: Rear|TV/VCR/DVD|Fabric Seats|Memory Seats|DVD Player|Tow Package|Warranty', N'remarks', N'', CAST(N'2017-08-26T00:00:00.000' AS DateTime), CAST(N'2011-09-05T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, CAST(N'2011-09-29T00:00:00.000' AS DateTime), NULL, CAST(N'2011-09-30T00:00:00.000' AS DateTime), NULL, CAST(45 AS Numeric(18, 0)), CAST(1500000 AS Numeric(18, 0)), CAST(120 AS Numeric(18, 0)), 1, N'', N'', NULL, CAST(N'2011-12-22T00:00:00.000' AS DateTime), 0, N'19_APDoRWns.jpg', 1, NULL, CAST(N'2017-08-26T10:57:43.767' AS DateTime), 0, NULL, NULL, N'::1')
GO
INSERT [dbo].[CarsData] ([CarID], [car_code], [view_home], [active], [featured_car], [Auction_ID], [Buyer_ID], [Marker_ID], [Model_ID], [WorkingStatus_ID], [TransferStatus_ID], [Year_ID], [PortShipping_ID], [TowingCompsny_ID], [ShippingCompany_ID], [Ship_ID], [State_ID], [Region_ID], [Workshop_ID], [Transport_ID], [Clearance_ID], [Store_ID], [chassis_no], [container_no], [container_code], [booking_no], [poly_fielding], [lot_no], [engine_no], [sold], [exterior_color], [interior_color], [body_style], [car_transmission], [mileage], [car_drive], [car_engine], [car_capacity], [car_options], [car_remarks], [Customs_No], [purchase_date], [checkout_date], [Shipping_date], [expected_arrive_date], [dubia_arrive_date], [sharjah_arrive_date], [arrive_date], [WorkshopEntryDate], [WorkshopExitDate], [price_currency], [real_price], [sale_price], [cost], [CurrencyExchange_ID], [payement_to_who], [sale_to], [show_sale], [sale_date], [visitors], [main_picture], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (20, 1002, NULL, 1, NULL, 1, 1, 1, 1, 3, 1, 2, 1, NULL, 1, 1, 1, 1, 1, NULL, NULL, 1, N'125693', N'dfdfasdfgsdfsd', NULL, NULL, NULL, N'fsdfsdfsd', N'as5as45as', 0, 18, 18, 1, 1, N'1500', 1, 1, 1, N'Full Options|Airbag: Passenger|Rear Window Defroster|Fully Loaded|Airbag: Side|Rear Window Wiper|Dealer warranty|Anti-Lock Brakes/ABS|Anti-Lock Brakes|Power Locks|Fog Lights|Cruise Control|Power Steering|A/C: Front|Navigation System|DVD Player|Tow Package', N'dsdsds', N'2323', NULL, CAST(N'2011-09-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, CAST(N'2011-09-05T00:00:00.000' AS DateTime), CAST(N'2011-09-20T00:00:00.000' AS DateTime), CAST(N'2011-09-30T00:00:00.000' AS DateTime), NULL, CAST(150 AS Numeric(18, 0)), CAST(1500000 AS Numeric(18, 0)), CAST(500 AS Numeric(18, 0)), 1, N'', NULL, NULL, CAST(N'2011-12-22T11:17:25.543' AS DateTime), 0, N'20_wQH4AoOC.jpg', 1, CAST(N'2011-09-11T12:44:00.263' AS DateTime), CAST(N'2011-09-11T16:36:24.023' AS DateTime), 1, 1, CAST(N'2017-08-26T10:45:33.083' AS DateTime), N'::1')
GO
INSERT [dbo].[CarsData] ([CarID], [car_code], [view_home], [active], [featured_car], [Auction_ID], [Buyer_ID], [Marker_ID], [Model_ID], [WorkingStatus_ID], [TransferStatus_ID], [Year_ID], [PortShipping_ID], [TowingCompsny_ID], [ShippingCompany_ID], [Ship_ID], [State_ID], [Region_ID], [Workshop_ID], [Transport_ID], [Clearance_ID], [Store_ID], [chassis_no], [container_no], [container_code], [booking_no], [poly_fielding], [lot_no], [engine_no], [sold], [exterior_color], [interior_color], [body_style], [car_transmission], [mileage], [car_drive], [car_engine], [car_capacity], [car_options], [car_remarks], [Customs_No], [purchase_date], [checkout_date], [Shipping_date], [expected_arrive_date], [dubia_arrive_date], [sharjah_arrive_date], [arrive_date], [WorkshopEntryDate], [WorkshopExitDate], [price_currency], [real_price], [sale_price], [cost], [CurrencyExchange_ID], [payement_to_who], [sale_to], [show_sale], [sale_date], [visitors], [main_picture], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (21, 1003, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 34, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, N'56989826', N'', NULL, NULL, NULL, N'22601', N'22601', 0, 18, 18, 1, 2, N'21598', 1, 1, 2, N'Full Options', N'', N'', NULL, CAST(N'2011-09-12T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, CAST(N'2011-08-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, CAST(1500000 AS Numeric(18, 0)), NULL, NULL, N'', NULL, NULL, CAST(N'2011-12-22T11:17:25.543' AS DateTime), 0, N'21_3NTioFVf.jpg', 1, CAST(N'2011-09-12T10:25:50.080' AS DateTime), CAST(N'2011-09-12T15:09:36.307' AS DateTime), 0, NULL, NULL, N'192.168.1.150')
GO
INSERT [dbo].[CarsData] ([CarID], [car_code], [view_home], [active], [featured_car], [Auction_ID], [Buyer_ID], [Marker_ID], [Model_ID], [WorkingStatus_ID], [TransferStatus_ID], [Year_ID], [PortShipping_ID], [TowingCompsny_ID], [ShippingCompany_ID], [Ship_ID], [State_ID], [Region_ID], [Workshop_ID], [Transport_ID], [Clearance_ID], [Store_ID], [chassis_no], [container_no], [container_code], [booking_no], [poly_fielding], [lot_no], [engine_no], [sold], [exterior_color], [interior_color], [body_style], [car_transmission], [mileage], [car_drive], [car_engine], [car_capacity], [car_options], [car_remarks], [Customs_No], [purchase_date], [checkout_date], [Shipping_date], [expected_arrive_date], [dubia_arrive_date], [sharjah_arrive_date], [arrive_date], [WorkshopEntryDate], [WorkshopExitDate], [price_currency], [real_price], [sale_price], [cost], [CurrencyExchange_ID], [payement_to_who], [sale_to], [show_sale], [sale_date], [visitors], [main_picture], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (22, 1004, NULL, 1, NULL, 2, 2, 17, 8, 1, 3, 31, 3, NULL, 2, 2, NULL, 4, 4, NULL, NULL, 1, N'69565263266', N'', N'', N'', N'', N'22602', N'zxczx343432czxc', 0, 3, 3, 1, 2, N'21598', 1, 3, 4, N'Full Options', N'', N'', NULL, CAST(N'2011-09-01T00:00:00.000' AS DateTime), CAST(N'2011-09-08T00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(N'2011-09-10T00:00:00.000' AS DateTime), CAST(N'2011-09-13T00:00:00.000' AS DateTime), CAST(N'2011-09-16T00:00:00.000' AS DateTime), NULL, CAST(692 AS Numeric(18, 0)), CAST(1500000 AS Numeric(18, 0)), CAST(100 AS Numeric(18, 0)), 1, N'Mahmoud', NULL, NULL, CAST(N'2011-12-22T11:17:25.543' AS DateTime), 0, N'22_cMW6EpNV.jpg', 1, CAST(N'2011-09-19T09:41:05.440' AS DateTime), CAST(N'2011-10-25T17:56:29.530' AS DateTime), 0, NULL, NULL, N'::1')
GO
INSERT [dbo].[CarsData] ([CarID], [car_code], [view_home], [active], [featured_car], [Auction_ID], [Buyer_ID], [Marker_ID], [Model_ID], [WorkingStatus_ID], [TransferStatus_ID], [Year_ID], [PortShipping_ID], [TowingCompsny_ID], [ShippingCompany_ID], [Ship_ID], [State_ID], [Region_ID], [Workshop_ID], [Transport_ID], [Clearance_ID], [Store_ID], [chassis_no], [container_no], [container_code], [booking_no], [poly_fielding], [lot_no], [engine_no], [sold], [exterior_color], [interior_color], [body_style], [car_transmission], [mileage], [car_drive], [car_engine], [car_capacity], [car_options], [car_remarks], [Customs_No], [purchase_date], [checkout_date], [Shipping_date], [expected_arrive_date], [dubia_arrive_date], [sharjah_arrive_date], [arrive_date], [WorkshopEntryDate], [WorkshopExitDate], [price_currency], [real_price], [sale_price], [cost], [CurrencyExchange_ID], [payement_to_who], [sale_to], [show_sale], [sale_date], [visitors], [main_picture], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (23, 1005, NULL, 1, 0, NULL, NULL, 1, 1, NULL, 1, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, N'1699849', N'', N'', N'', N'', N'22603', N'22603', 0, 5, 6, 1, 2, N'21598', 2, 2, 27, N'Full Options', N'', N'', CAST(N'2017-08-26T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(1500000 AS Numeric(18, 0)), NULL, NULL, N'', N'', NULL, CAST(N'2011-12-22T00:00:00.000' AS DateTime), 0, N'23_wRXWv5bt.jpg', 1, CAST(N'2011-10-25T17:46:52.067' AS DateTime), CAST(N'2017-08-26T09:15:39.820' AS DateTime), 0, NULL, NULL, N'::1')
GO
INSERT [dbo].[CarsData] ([CarID], [car_code], [view_home], [active], [featured_car], [Auction_ID], [Buyer_ID], [Marker_ID], [Model_ID], [WorkingStatus_ID], [TransferStatus_ID], [Year_ID], [PortShipping_ID], [TowingCompsny_ID], [ShippingCompany_ID], [Ship_ID], [State_ID], [Region_ID], [Workshop_ID], [Transport_ID], [Clearance_ID], [Store_ID], [chassis_no], [container_no], [container_code], [booking_no], [poly_fielding], [lot_no], [engine_no], [sold], [exterior_color], [interior_color], [body_style], [car_transmission], [mileage], [car_drive], [car_engine], [car_capacity], [car_options], [car_remarks], [Customs_No], [purchase_date], [checkout_date], [Shipping_date], [expected_arrive_date], [dubia_arrive_date], [sharjah_arrive_date], [arrive_date], [WorkshopEntryDate], [WorkshopExitDate], [price_currency], [real_price], [sale_price], [cost], [CurrencyExchange_ID], [payement_to_who], [sale_to], [show_sale], [sale_date], [visitors], [main_picture], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (24, 1006, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 34, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 1, N'9632587ا', N'', N'', N'', N'', N'1265487', N'22604', 1, 2, 6, 1, 2, N'21598', 2, 2, 27, N'Full Options', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(1500000 AS Numeric(18, 0)), NULL, NULL, N'', N'', NULL, CAST(N'2011-12-26T19:44:02.520' AS DateTime), 0, N'24_pxd9ZWJK.jpg', 1, CAST(N'2011-11-13T09:37:54.180' AS DateTime), CAST(N'2011-11-13T09:38:51.100' AS DateTime), 0, NULL, NULL, N'::1')
GO
INSERT [dbo].[CarsData] ([CarID], [car_code], [view_home], [active], [featured_car], [Auction_ID], [Buyer_ID], [Marker_ID], [Model_ID], [WorkingStatus_ID], [TransferStatus_ID], [Year_ID], [PortShipping_ID], [TowingCompsny_ID], [ShippingCompany_ID], [Ship_ID], [State_ID], [Region_ID], [Workshop_ID], [Transport_ID], [Clearance_ID], [Store_ID], [chassis_no], [container_no], [container_code], [booking_no], [poly_fielding], [lot_no], [engine_no], [sold], [exterior_color], [interior_color], [body_style], [car_transmission], [mileage], [car_drive], [car_engine], [car_capacity], [car_options], [car_remarks], [Customs_No], [purchase_date], [checkout_date], [Shipping_date], [expected_arrive_date], [dubia_arrive_date], [sharjah_arrive_date], [arrive_date], [WorkshopEntryDate], [WorkshopExitDate], [price_currency], [real_price], [sale_price], [cost], [CurrencyExchange_ID], [payement_to_who], [sale_to], [show_sale], [sale_date], [visitors], [main_picture], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (25, 10, NULL, 1, NULL, 1, 1, 19, 13, 2, 1, 34, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, 1, N'123456789', N'', N'', N'', N'', N'21608', N'21608', 0, 5, 6, 1, 2, N'21598', 2, 2, 27, N'Full Options', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(3000 AS Numeric(18, 0)), CAST(1500000 AS Numeric(18, 0)), NULL, NULL, N'', N'', NULL, NULL, 0, N'25_xhHyiWCE.jpg', 1, CAST(N'2011-12-15T11:58:40.607' AS DateTime), CAST(N'2011-12-25T03:25:37.730' AS DateTime), 0, NULL, NULL, N'41.35.47.229')
GO
INSERT [dbo].[CarsData] ([CarID], [car_code], [view_home], [active], [featured_car], [Auction_ID], [Buyer_ID], [Marker_ID], [Model_ID], [WorkingStatus_ID], [TransferStatus_ID], [Year_ID], [PortShipping_ID], [TowingCompsny_ID], [ShippingCompany_ID], [Ship_ID], [State_ID], [Region_ID], [Workshop_ID], [Transport_ID], [Clearance_ID], [Store_ID], [chassis_no], [container_no], [container_code], [booking_no], [poly_fielding], [lot_no], [engine_no], [sold], [exterior_color], [interior_color], [body_style], [car_transmission], [mileage], [car_drive], [car_engine], [car_capacity], [car_options], [car_remarks], [Customs_No], [purchase_date], [checkout_date], [Shipping_date], [expected_arrive_date], [dubia_arrive_date], [sharjah_arrive_date], [arrive_date], [WorkshopEntryDate], [WorkshopExitDate], [price_currency], [real_price], [sale_price], [cost], [CurrencyExchange_ID], [payement_to_who], [sale_to], [show_sale], [sale_date], [visitors], [main_picture], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (26, 11, NULL, 1, NULL, 1, 1, 23, 90, 2, 1, 29, NULL, NULL, NULL, NULL, NULL, 256, NULL, NULL, NULL, 1, N'3D7KR26D87G784461', N'', N'', N'', N'', N'16909981', N'21609', 0, 18, 6, 8, 2, N'21598', 2, 2, 27, N'Full Options', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(1500000 AS Numeric(18, 0)), NULL, NULL, N'', N'', NULL, NULL, 0, N'26_QSXEiDoA.jpg', 1, CAST(N'2011-12-15T13:23:07.857' AS DateTime), NULL, 0, NULL, NULL, N'41.35.48.133')
GO
INSERT [dbo].[CarsData] ([CarID], [car_code], [view_home], [active], [featured_car], [Auction_ID], [Buyer_ID], [Marker_ID], [Model_ID], [WorkingStatus_ID], [TransferStatus_ID], [Year_ID], [PortShipping_ID], [TowingCompsny_ID], [ShippingCompany_ID], [Ship_ID], [State_ID], [Region_ID], [Workshop_ID], [Transport_ID], [Clearance_ID], [Store_ID], [chassis_no], [container_no], [container_code], [booking_no], [poly_fielding], [lot_no], [engine_no], [sold], [exterior_color], [interior_color], [body_style], [car_transmission], [mileage], [car_drive], [car_engine], [car_capacity], [car_options], [car_remarks], [Customs_No], [purchase_date], [checkout_date], [Shipping_date], [expected_arrive_date], [dubia_arrive_date], [sharjah_arrive_date], [arrive_date], [WorkshopEntryDate], [WorkshopExitDate], [price_currency], [real_price], [sale_price], [cost], [CurrencyExchange_ID], [payement_to_who], [sale_to], [show_sale], [sale_date], [visitors], [main_picture], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (27, 12, NULL, 1, NULL, 2, 2, 24, 40, 2, 1, 28, NULL, NULL, NULL, NULL, NULL, 132, NULL, NULL, NULL, 1, N'1FMEU758X6UB49661', N'', N'', N'', N'', N'21540401', N'21610', 0, 18, 1, 6, 2, N'21598', 2, 7, 27, N'Full Options', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(1500000 AS Numeric(18, 0)), NULL, NULL, N'', N'', NULL, NULL, 0, N'27_fIsb2iDy.jpg', 1, CAST(N'2011-12-15T13:58:03.513' AS DateTime), NULL, 0, NULL, NULL, N'41.35.48.133')
GO
INSERT [dbo].[CarsData] ([CarID], [car_code], [view_home], [active], [featured_car], [Auction_ID], [Buyer_ID], [Marker_ID], [Model_ID], [WorkingStatus_ID], [TransferStatus_ID], [Year_ID], [PortShipping_ID], [TowingCompsny_ID], [ShippingCompany_ID], [Ship_ID], [State_ID], [Region_ID], [Workshop_ID], [Transport_ID], [Clearance_ID], [Store_ID], [chassis_no], [container_no], [container_code], [booking_no], [poly_fielding], [lot_no], [engine_no], [sold], [exterior_color], [interior_color], [body_style], [car_transmission], [mileage], [car_drive], [car_engine], [car_capacity], [car_options], [car_remarks], [Customs_No], [purchase_date], [checkout_date], [Shipping_date], [expected_arrive_date], [dubia_arrive_date], [sharjah_arrive_date], [arrive_date], [WorkshopEntryDate], [WorkshopExitDate], [price_currency], [real_price], [sale_price], [cost], [CurrencyExchange_ID], [payement_to_who], [sale_to], [show_sale], [sale_date], [visitors], [main_picture], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (28, 13, NULL, 1, 0, NULL, NULL, 1, 2, 3, 3, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, N'5LMFU27538LJ07106', N'', N'', N'', N'', N'24096301', N'21611', 0, 18, 6, 6, 2, N'21598', 2, 2, 27, N'Full Options', N'', N'', NULL, NULL, CAST(N'2017-01-24T00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(N'2017-01-27T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, CAST(1500000 AS Numeric(18, 0)), NULL, NULL, N'', N'', NULL, CAST(N'2017-01-27T00:00:00.000' AS DateTime), 0, N'28_ApTwUCpB.JPG', 1, CAST(N'2011-12-19T00:32:03.497' AS DateTime), CAST(N'2017-08-26T09:22:03.107' AS DateTime), 1, 1, CAST(N'2017-08-26T10:45:02.717' AS DateTime), N'::1')
GO
INSERT [dbo].[CarsData] ([CarID], [car_code], [view_home], [active], [featured_car], [Auction_ID], [Buyer_ID], [Marker_ID], [Model_ID], [WorkingStatus_ID], [TransferStatus_ID], [Year_ID], [PortShipping_ID], [TowingCompsny_ID], [ShippingCompany_ID], [Ship_ID], [State_ID], [Region_ID], [Workshop_ID], [Transport_ID], [Clearance_ID], [Store_ID], [chassis_no], [container_no], [container_code], [booking_no], [poly_fielding], [lot_no], [engine_no], [sold], [exterior_color], [interior_color], [body_style], [car_transmission], [mileage], [car_drive], [car_engine], [car_capacity], [car_options], [car_remarks], [Customs_No], [purchase_date], [checkout_date], [Shipping_date], [expected_arrive_date], [dubia_arrive_date], [sharjah_arrive_date], [arrive_date], [WorkshopEntryDate], [WorkshopExitDate], [price_currency], [real_price], [sale_price], [cost], [CurrencyExchange_ID], [payement_to_who], [sale_to], [show_sale], [sale_date], [visitors], [main_picture], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (29, 1007, NULL, 1, 0, NULL, NULL, 1, 1, 4, 1, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, N'501256488', N'', N'', N'', N'', N'14546236', N'85545sd45s', 0, 17, 3, 2, 2, N'45652', NULL, 1, 1, N'Full Options', N'', N'', CAST(N'2017-08-26T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(1500000 AS Numeric(18, 0)), NULL, NULL, N'', N'', NULL, NULL, 0, N'29_B976zlgM.jpg', 1, CAST(N'2015-08-17T10:04:04.257' AS DateTime), CAST(N'2017-08-26T10:58:09.753' AS DateTime), 0, NULL, NULL, N'::1')
GO
INSERT [dbo].[CarsData] ([CarID], [car_code], [view_home], [active], [featured_car], [Auction_ID], [Buyer_ID], [Marker_ID], [Model_ID], [WorkingStatus_ID], [TransferStatus_ID], [Year_ID], [PortShipping_ID], [TowingCompsny_ID], [ShippingCompany_ID], [Ship_ID], [State_ID], [Region_ID], [Workshop_ID], [Transport_ID], [Clearance_ID], [Store_ID], [chassis_no], [container_no], [container_code], [booking_no], [poly_fielding], [lot_no], [engine_no], [sold], [exterior_color], [interior_color], [body_style], [car_transmission], [mileage], [car_drive], [car_engine], [car_capacity], [car_options], [car_remarks], [Customs_No], [purchase_date], [checkout_date], [Shipping_date], [expected_arrive_date], [dubia_arrive_date], [sharjah_arrive_date], [arrive_date], [WorkshopEntryDate], [WorkshopExitDate], [price_currency], [real_price], [sale_price], [cost], [CurrencyExchange_ID], [payement_to_who], [sale_to], [show_sale], [sale_date], [visitors], [main_picture], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (30, 1008, NULL, 1, 0, NULL, NULL, 1, 2, 4, 1, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, N'124587', N'', N'', N'', N'', N'124578', N'124578', 0, 1, 6, 1, 2, N'4578', 2, 5, 10, N'Full Options', N'', N'', CAST(N'2017-01-25T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(1500000 AS Numeric(18, 0)), NULL, NULL, N'', N'', NULL, NULL, 0, N'30_XdYiTfg5.jpg', 1, CAST(N'2015-08-17T10:11:02.710' AS DateTime), CAST(N'2017-01-19T09:20:14.733' AS DateTime), 0, NULL, NULL, N'::1')
GO
INSERT [dbo].[CarsData] ([CarID], [car_code], [view_home], [active], [featured_car], [Auction_ID], [Buyer_ID], [Marker_ID], [Model_ID], [WorkingStatus_ID], [TransferStatus_ID], [Year_ID], [PortShipping_ID], [TowingCompsny_ID], [ShippingCompany_ID], [Ship_ID], [State_ID], [Region_ID], [Workshop_ID], [Transport_ID], [Clearance_ID], [Store_ID], [chassis_no], [container_no], [container_code], [booking_no], [poly_fielding], [lot_no], [engine_no], [sold], [exterior_color], [interior_color], [body_style], [car_transmission], [mileage], [car_drive], [car_engine], [car_capacity], [car_options], [car_remarks], [Customs_No], [purchase_date], [checkout_date], [Shipping_date], [expected_arrive_date], [dubia_arrive_date], [sharjah_arrive_date], [arrive_date], [WorkshopEntryDate], [WorkshopExitDate], [price_currency], [real_price], [sale_price], [cost], [CurrencyExchange_ID], [payement_to_who], [sale_to], [show_sale], [sale_date], [visitors], [main_picture], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (31, 1009, NULL, 1, 0, NULL, NULL, 1, 2, NULL, 1, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, N'z4sad4s5d4s5d45s5d', N'', N'', N'', N'', N'sas4a5s4a5s45a4s', N'', 0, 2, NULL, 8, 2, N'', 2, 7, NULL, N'Full Options', N'', N'', CAST(N'2017-08-17T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, NULL, 0, N'31_osAA9RDL.jpg', 1, CAST(N'2017-08-17T13:05:41.907' AS DateTime), NULL, 0, NULL, NULL, N'::1')
GO
INSERT [dbo].[CarsData] ([CarID], [car_code], [view_home], [active], [featured_car], [Auction_ID], [Buyer_ID], [Marker_ID], [Model_ID], [WorkingStatus_ID], [TransferStatus_ID], [Year_ID], [PortShipping_ID], [TowingCompsny_ID], [ShippingCompany_ID], [Ship_ID], [State_ID], [Region_ID], [Workshop_ID], [Transport_ID], [Clearance_ID], [Store_ID], [chassis_no], [container_no], [container_code], [booking_no], [poly_fielding], [lot_no], [engine_no], [sold], [exterior_color], [interior_color], [body_style], [car_transmission], [mileage], [car_drive], [car_engine], [car_capacity], [car_options], [car_remarks], [Customs_No], [purchase_date], [checkout_date], [Shipping_date], [expected_arrive_date], [dubia_arrive_date], [sharjah_arrive_date], [arrive_date], [WorkshopEntryDate], [WorkshopExitDate], [price_currency], [real_price], [sale_price], [cost], [CurrencyExchange_ID], [payement_to_who], [sale_to], [show_sale], [sale_date], [visitors], [main_picture], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (32, 1010, NULL, 1, 0, NULL, NULL, 1, 2, NULL, 1, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, N'erfsd4f4sdfsd4f5sd45f', N'', N'', N'', N'', N'545554434235', N'', 0, 3, NULL, 8, 2, N'', 2, 7, 2, N'Full Options', N'', N'', CAST(N'2017-08-26T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, NULL, 0, N'32_ibUa6D4x.jpg', 1, CAST(N'2017-08-26T09:14:40.997' AS DateTime), NULL, 0, NULL, NULL, N'::1')
GO
INSERT [dbo].[CarsData] ([CarID], [car_code], [view_home], [active], [featured_car], [Auction_ID], [Buyer_ID], [Marker_ID], [Model_ID], [WorkingStatus_ID], [TransferStatus_ID], [Year_ID], [PortShipping_ID], [TowingCompsny_ID], [ShippingCompany_ID], [Ship_ID], [State_ID], [Region_ID], [Workshop_ID], [Transport_ID], [Clearance_ID], [Store_ID], [chassis_no], [container_no], [container_code], [booking_no], [poly_fielding], [lot_no], [engine_no], [sold], [exterior_color], [interior_color], [body_style], [car_transmission], [mileage], [car_drive], [car_engine], [car_capacity], [car_options], [car_remarks], [Customs_No], [purchase_date], [checkout_date], [Shipping_date], [expected_arrive_date], [dubia_arrive_date], [sharjah_arrive_date], [arrive_date], [WorkshopEntryDate], [WorkshopExitDate], [price_currency], [real_price], [sale_price], [cost], [CurrencyExchange_ID], [payement_to_who], [sale_to], [show_sale], [sale_date], [visitors], [main_picture], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (33, 1011, NULL, 1, 0, NULL, NULL, 1, 2, 1, 1, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, N'23232fdfdfdfdfdsfsfsdfsdf', N'', N'', N'', N'', N'sasasa32323', N'', 0, 6, NULL, 8, 2, N'', 3, 7, NULL, N'Full Options', N'', N'', CAST(N'2017-08-26T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, NULL, 0, N'33_dOCgMUJk.jpg', 1, CAST(N'2017-08-26T10:58:44.020' AS DateTime), NULL, 0, NULL, NULL, N'::1')
GO
INSERT [dbo].[CarsData] ([CarID], [car_code], [view_home], [active], [featured_car], [Auction_ID], [Buyer_ID], [Marker_ID], [Model_ID], [WorkingStatus_ID], [TransferStatus_ID], [Year_ID], [PortShipping_ID], [TowingCompsny_ID], [ShippingCompany_ID], [Ship_ID], [State_ID], [Region_ID], [Workshop_ID], [Transport_ID], [Clearance_ID], [Store_ID], [chassis_no], [container_no], [container_code], [booking_no], [poly_fielding], [lot_no], [engine_no], [sold], [exterior_color], [interior_color], [body_style], [car_transmission], [mileage], [car_drive], [car_engine], [car_capacity], [car_options], [car_remarks], [Customs_No], [purchase_date], [checkout_date], [Shipping_date], [expected_arrive_date], [dubia_arrive_date], [sharjah_arrive_date], [arrive_date], [WorkshopEntryDate], [WorkshopExitDate], [price_currency], [real_price], [sale_price], [cost], [CurrencyExchange_ID], [payement_to_who], [sale_to], [show_sale], [sale_date], [visitors], [main_picture], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (34, 1012, NULL, 1, 0, NULL, NULL, 1, 2, 1, 1, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, N'11', N'', N'', N'', N'', N'', N'', 0, NULL, NULL, 1, 2, N'', 2, 7, NULL, N'Full Options', N'', N'', CAST(N'2018-01-18T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', NULL, NULL, 0, NULL, 1, CAST(N'2018-01-18T10:41:50.773' AS DateTime), NULL, 0, NULL, NULL, N'::1')
GO
SET IDENTITY_INSERT [dbo].[CarsData] OFF
GO
SET IDENTITY_INSERT [dbo].[CarsMarker] ON 
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (1, N'TOYOTA', N'تيوتا', 1, 1, NULL, NULL, CAST(N'2011-09-07T16:12:45.850' AS DateTime), 0, 0, NULL, N'192.168.1.150')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (2, N'LANCER', N'لانسر', 2, 1, NULL, NULL, CAST(N'2011-09-06T11:26:10.387' AS DateTime), 0, 0, NULL, N'192.168.1.150')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (3, N'HONDA', N'<p>Honda</p>', 6, 1, NULL, NULL, NULL, 0, 0, NULL, N'::1')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (4, N'Ferrari', N'', 4, 1, NULL, NULL, NULL, 0, 0, NULL, N'::1')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (5, N'MERCEDES', N'', 4, 1, NULL, NULL, NULL, 0, 0, NULL, N'::1')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (7, N'BMW', N'BMW', 1, 1, NULL, NULL, NULL, 0, 0, NULL, N'::1')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (8, N'HYUNDAI', N'HYUNDAI', 1, 1, NULL, NULL, NULL, 0, 0, NULL, N'::1')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (9, N'KIA', N'KIA', 1, 1, NULL, NULL, NULL, 0, 0, NULL, N'::1')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (10, N'GMC', N'GMC', 1, 1, NULL, NULL, NULL, 0, 0, NULL, N'::1')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (12, N'HONDA', N'<p>Hoda</p>', 10, 1, NULL, NULL, NULL, 0, 0, NULL, N'::1')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (13, N'mido marker', N'عربي', 5, 1, NULL, NULL, CAST(N'2011-10-23T11:38:55.533' AS DateTime), 0, 0, NULL, N'::1')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (14, N'dssdss', N'dsdss', 1, 1, NULL, CAST(N'2011-09-06T11:12:35.180' AS DateTime), CAST(N'2011-09-07T14:24:40.783' AS DateTime), 0, 1, NULL, N'192.168.1.150')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (17, N'CHEVROLET', N'شيفورليه', 2, 1, NULL, CAST(N'2011-09-19T09:20:09.457' AS DateTime), CAST(N'2011-10-22T16:39:44.523' AS DateTime), 0, NULL, NULL, N'::1')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (18, N'TOYOTA', N'تيوتا', 1, 1, NULL, NULL, CAST(N'2011-09-07T16:12:45.850' AS DateTime), 1, 0, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (19, N'LANCER', N'لانسر', 2, 1, NULL, NULL, CAST(N'2011-09-06T11:26:10.387' AS DateTime), 1, 0, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (20, N'HONDA', N'<p>Honda</p>', 6, 1, NULL, NULL, NULL, 1, 0, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (21, N'Ferrari', N'', 4, 1, NULL, NULL, NULL, 1, 0, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (22, N'MERCEDES', N'', 4, 1, NULL, NULL, NULL, 1, 0, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (23, N'BMW', N'BMW', 1, 1, NULL, NULL, NULL, 1, 0, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (24, N'HYUNDAI', N'HYUNDAI', 1, 1, NULL, NULL, NULL, 1, 0, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (25, N'KIA', N'KIA', 1, 1, NULL, NULL, NULL, 1, 0, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (26, N'GMC', N'GMC', 1, 1, NULL, NULL, NULL, 1, 0, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (27, N'HONDA', N'<p>Hoda</p>', 10, 1, NULL, NULL, NULL, 1, 0, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (28, N'mido marker', N'<p>mido marker</p>', 5, 1, NULL, NULL, NULL, 1, 0, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (29, N'dssdss', N'dsdss', 1, 1, NULL, CAST(N'2011-09-06T11:12:35.180' AS DateTime), CAST(N'2011-09-07T14:24:40.783' AS DateTime), 1, 1, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (30, N'CHEVROLET', N'شيفورليه', 2, 1, NULL, CAST(N'2011-09-19T09:20:09.457' AS DateTime), NULL, 1, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (31, N'Priority ', N'', 1, 1, NULL, CAST(N'2011-10-03T17:35:07.910' AS DateTime), NULL, 1, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (32, N'KIA', N'', 1, 1, NULL, CAST(N'2011-10-03T22:36:16.693' AS DateTime), CAST(N'2011-10-03T23:02:32.160' AS DateTime), 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (33, N'CHEVORLET', N'', 1, 1, NULL, CAST(N'2011-10-03T22:37:18.567' AS DateTime), NULL, 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (34, N'HONDA', N'', 1, 1, NULL, CAST(N'2011-10-03T22:58:10.927' AS DateTime), CAST(N'2011-10-03T22:58:25.723' AS DateTime), 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (35, N'CADILAC', N'', 1, 1, NULL, CAST(N'2011-10-03T23:01:51.007' AS DateTime), NULL, 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (36, N'DODGE', N'', 1, 1, NULL, CAST(N'2011-10-03T23:04:28.943' AS DateTime), CAST(N'2011-10-03T23:05:04.050' AS DateTime), 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (37, N'FORD', N'', 1, 1, NULL, CAST(N'2011-10-03T23:08:46.647' AS DateTime), NULL, 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (38, N'JEEP', N'', 1, 1, NULL, CAST(N'2011-10-03T23:09:36.927' AS DateTime), NULL, 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (39, N'LINCOLN', N'', 1, 1, NULL, CAST(N'2011-10-03T23:10:07.973' AS DateTime), NULL, 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (40, N'HYUNDAI', N'', 1, 1, NULL, CAST(N'2011-10-03T23:13:55.160' AS DateTime), CAST(N'2011-10-03T23:14:08.177' AS DateTime), 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (41, N'MITSUBISHI', N'', 1, 1, NULL, CAST(N'2011-10-03T23:14:42.613' AS DateTime), NULL, 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (42, N'PONTIAC', N'', 1, 1, NULL, CAST(N'2011-10-03T23:15:12.473' AS DateTime), NULL, 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (43, N'BMW', N'', 1, 1, NULL, CAST(N'2011-10-03T23:16:02.410' AS DateTime), CAST(N'2011-10-03T23:33:46.567' AS DateTime), 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (44, N'CHRYSLER', N'', 1, 1, NULL, CAST(N'2011-10-03T23:16:32.427' AS DateTime), NULL, 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (45, N'LEXUS', N'', 1, 1, NULL, CAST(N'2011-10-03T23:17:05.787' AS DateTime), NULL, 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (46, N'MERCURY', N'', 1, 1, NULL, CAST(N'2011-10-03T23:17:34.380' AS DateTime), NULL, 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (47, N'GMC', N'', 1, 1, NULL, CAST(N'2011-10-03T23:18:19.020' AS DateTime), CAST(N'2011-10-03T23:33:24.223' AS DateTime), 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (48, N'LAND ROVER', N'', 1, 1, NULL, CAST(N'2011-10-03T23:28:34.160' AS DateTime), NULL, 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (49, N'MERCEDES', N'', 1, 1, NULL, CAST(N'2011-10-03T23:29:17.943' AS DateTime), CAST(N'2011-10-03T23:33:06.443' AS DateTime), 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (50, N'TOYOTA', N'', 1, 1, NULL, CAST(N'2011-10-03T23:29:50.723' AS DateTime), CAST(N'2011-10-03T23:32:50.647' AS DateTime), 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (51, N'INFINTI', N'', 1, 1, NULL, CAST(N'2011-10-03T23:30:16.600' AS DateTime), NULL, 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (52, N'MAZDA', N'', 1, 1, NULL, CAST(N'2011-10-03T23:30:47.160' AS DateTime), NULL, 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (53, N'NISSAN', N'', 1, 1, NULL, CAST(N'2011-10-03T23:31:20.193' AS DateTime), NULL, 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (54, N'HUMMER', N'', 1, 1, NULL, CAST(N'2011-10-03T23:31:52.037' AS DateTime), NULL, 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsMarker] ([MarkerID], [MarkerNameEn], [MarkerNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (55, N'SUZUKI', N'', 1, 1, NULL, CAST(N'2011-10-03T23:32:32.943' AS DateTime), NULL, 0, NULL, NULL, N'94.201.228.178')
GO
SET IDENTITY_INSERT [dbo].[CarsMarker] OFF
GO
SET IDENTITY_INSERT [dbo].[CarsModel] ON 
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (1, 1, N'Camry', N'تاندرا', 1, 1, NULL, NULL, CAST(N'2018-01-23T22:16:30.760' AS DateTime), 0, NULL, NULL, N'::1')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (2, 1, N'Tundra', N'تاندرا', 0, 1, NULL, NULL, CAST(N'2017-08-17T17:29:01.187' AS DateTime), 0, NULL, NULL, N'::1')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (3, 3, N'Honda', N'هندا', 6, 1, NULL, NULL, CAST(N'2011-10-23T11:13:49.350' AS DateTime), 0, NULL, NULL, N'::1')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (4, 4, N'any type', N'تاندرا', 45, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (5, 9, N'kIA-type1', N'تاندرا', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (6, 13, N'mido car type', N'تاندرا', 100, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (7, 5, N'Arabi', N'تاندرا', 1, 1, NULL, CAST(N'2011-09-06T12:51:01.627' AS DateTime), CAST(N'2011-10-22T17:05:48.993' AS DateTime), 0, NULL, NULL, N'::1')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (8, 17, N'AVEO', N'أفو', 1, 1, NULL, CAST(N'2011-09-19T09:20:55.377' AS DateTime), CAST(N'2011-10-23T11:39:30.117' AS DateTime), 0, NULL, NULL, N'::1')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (9, 17, N'COBALT', N'تاندرا', 2, 1, NULL, CAST(N'2011-09-19T09:21:32.573' AS DateTime), NULL, 0, NULL, CAST(N'2011-12-30T21:21:07.920' AS DateTime), N'192.168.1.150')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (10, 17, N'EQUINOX', N'تاندرا', 3, 1, NULL, CAST(N'2011-09-19T09:21:51.970' AS DateTime), NULL, 0, NULL, CAST(N'2011-12-30T21:21:10.767' AS DateTime), N'192.168.1.150')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (11, 17, N'TRAILBLAZER', N'تاندرا', 1, 1, NULL, CAST(N'2011-09-19T09:22:18.520' AS DateTime), CAST(N'2011-10-23T08:56:42.227' AS DateTime), 0, NULL, NULL, N'::1')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (12, 1, N'Toyota 2', N'تاندرا', 1, 1, NULL, NULL, CAST(N'2011-09-06T12:48:08.900' AS DateTime), 1, NULL, CAST(N'2011-10-03T23:58:45.147' AS DateTime), N'::1')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (13, 1, N'Toyota 1', N'تاندرا', 0, 1, NULL, NULL, NULL, 1, NULL, CAST(N'2011-10-03T23:58:51.817' AS DateTime), NULL)
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (14, 3, N'Honda', N'تاندرا', 6, 1, NULL, NULL, NULL, 1, NULL, CAST(N'2011-10-03T23:58:59.240' AS DateTime), NULL)
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (15, 4, N'any type', N'تاندرا', 45, 1, NULL, NULL, NULL, 1, NULL, CAST(N'2011-10-03T23:59:08.613' AS DateTime), NULL)
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (16, 9, N'kIA-type1', N'تاندرا', 1, 1, NULL, NULL, NULL, 1, NULL, CAST(N'2011-10-03T23:59:14.710' AS DateTime), NULL)
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (17, 13, N'mido car type', N'تاندرا', 100, 1, NULL, NULL, NULL, 1, NULL, CAST(N'2011-10-03T23:59:20.113' AS DateTime), NULL)
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (18, 5, N'Arabi', N'تاندرا', 1, 1, NULL, CAST(N'2011-09-06T12:51:01.627' AS DateTime), NULL, 1, NULL, CAST(N'2011-10-03T23:59:24.507' AS DateTime), N'::1')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (19, 17, N'AVEO', N'تاندرا', 1, 1, NULL, CAST(N'2011-09-19T09:20:55.377' AS DateTime), NULL, 1, NULL, CAST(N'2011-10-03T23:59:32.770' AS DateTime), N'192.168.1.150')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (20, 17, N'COBALT', N'تاندرا', 2, 1, NULL, CAST(N'2011-09-19T09:21:32.573' AS DateTime), NULL, 1, NULL, CAST(N'2011-10-03T23:59:27.833' AS DateTime), N'192.168.1.150')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (21, 17, N'EQUINOX', N'تاندرا', 3, 1, NULL, CAST(N'2011-09-19T09:21:51.970' AS DateTime), NULL, 1, NULL, CAST(N'2011-10-03T23:59:37.507' AS DateTime), N'192.168.1.150')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (22, 17, N'TRAILBLAZER', N'تاندرا', 1, 1, NULL, CAST(N'2011-09-19T09:22:18.520' AS DateTime), NULL, 1, NULL, CAST(N'2011-10-03T23:59:42.943' AS DateTime), N'192.168.1.150')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (23, 1, N'Corolla', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-03T09:47:35.520' AS DateTime), NULL, 1, NULL, CAST(N'2011-10-03T23:59:47.800' AS DateTime), N'94.201.228.178')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (24, 19, N'RIO', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-03T23:55:09.020' AS DateTime), NULL, 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (25, 19, N'OPTIMA', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T00:00:24.817' AS DateTime), NULL, 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (26, 19, N'RONDO', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T00:00:59.990' AS DateTime), NULL, 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (27, 19, N'SEDONA', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T00:01:49.723' AS DateTime), NULL, 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (28, 19, N'SOUL', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T00:02:47.880' AS DateTime), NULL, 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (29, 19, N'BORREGO', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T00:03:29.223' AS DateTime), NULL, 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (30, 19, N'SORENTO', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T00:04:19.257' AS DateTime), NULL, 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (31, 19, N'FORTE', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T00:05:29.770' AS DateTime), NULL, 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (32, 20, N'SUBURBAN C1500', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T00:07:17.460' AS DateTime), CAST(N'2011-10-04T14:06:28.520' AS DateTime), 0, NULL, NULL, N'94.56.240.90')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (33, 20, N'TRAILBLAZER', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T00:08:33.850' AS DateTime), NULL, 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (34, 20, N'AVEO', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T00:28:50.600' AS DateTime), NULL, 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (35, 20, N'TAHOE C1500', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T00:29:55.787' AS DateTime), NULL, 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (36, 20, N'TAHOE K1500', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T00:30:56.520' AS DateTime), NULL, 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (37, 20, N'SILVERADO', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T00:31:31.317' AS DateTime), NULL, 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (38, 20, N'COBALT', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T00:32:16.397' AS DateTime), NULL, 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (39, 21, N'ACCORD', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T00:34:36.723' AS DateTime), NULL, 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (40, 21, N'CIVIC', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T00:35:15.490' AS DateTime), NULL, 0, NULL, NULL, N'94.201.228.178')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (41, 19, N'SPECTRA', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T14:04:26.520' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.90')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (42, 20, N'SUBURBAN K1500', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T14:07:55.583' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.90')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (43, 22, N'ESCALADE', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T14:11:06.770' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.90')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (44, 22, N'CTS', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T14:12:32.350' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.90')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (45, 23, N'CHARGER', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T14:13:50.473' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.90')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (46, 23, N'AVENGER', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T14:15:18.363' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.90')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (47, 23, N'CALIBER', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T14:16:42.647' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.90')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (48, 23, N'GRAND CARAVAN', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T14:20:19.787' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.90')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (49, 24, N'MUSTANG', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T14:22:16.927' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.90')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (50, 24, N'EXPEDITION', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T15:48:18.350' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (51, 24, N'EXPLORER', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T15:50:09.100' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (52, 24, N'EDGE', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T15:51:51.317' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (53, 24, N'CROWN VICTORIA', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T15:54:33.990' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (54, 24, N'ESCAPE', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T15:56:32.100' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (55, 25, N'PATRIOT', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T15:59:12.083' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (56, 25, N'LIBERTY', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T16:00:57.910' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (57, 25, N'COMMANDER', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T16:02:50.817' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (58, 25, N'GRAND CHEROKEE', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T16:04:36.223' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (59, 26, N'NAVIGATOR', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T16:07:04.600' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (60, 27, N'ACCENT', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T16:09:41.583' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (61, 27, N'SONATA', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T16:11:01.520' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (62, 27, N'ELANTRA', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T16:12:56.240' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (63, 27, N'AZERA', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T16:14:15.910' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (64, 27, N'SANTA FE', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T16:15:34.460' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (65, 27, N'TUCSON', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T16:16:50.800' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (66, 29, N'GTO', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T16:19:26.880' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (67, 31, N'C300', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T16:39:21.177' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (68, 32, N'LS 430', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T16:41:45.817' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (69, 32, N'GS 300', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T16:43:59.660' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (70, 32, N'GS 400', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T16:45:18.240' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (71, 32, N'IS 300', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T16:49:23.380' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (72, 34, N'YUKON', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T16:58:30.677' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (73, 34, N'ENVOY', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T16:59:48.600' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (74, 34, N'SIERRA', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T17:02:12.380' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (75, 34, N'ACADIA', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T17:03:32.490' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (76, 37, N'AVALON', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T17:06:13.287' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (77, 37, N'CAMRY', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T17:07:36.177' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (78, 37, N'COROLLA', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T17:09:25.583' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (79, 37, N'YARIS', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T17:10:43.880' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (80, 37, N'RAV4', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T17:12:48.050' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (81, 37, N'TUNDRA', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T17:14:30.083' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (82, 37, N'LANDCRUISER', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T17:15:53.910' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (83, 37, N'FJ CRUISER', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T17:17:38.083' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (84, 37, N'TACOMA', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T17:20:19.787' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (85, 37, N'SEQUOIA', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T17:21:44.083' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (86, 40, N'ALTIMA', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T17:25:10.193' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (87, 40, N'350Z', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T17:27:03.037' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (88, 40, N'VERSA', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T17:28:47.427' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (89, 40, N'PATHFINDER', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T17:30:24.833' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (90, 40, N'TITAN', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T17:32:04.350' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (91, 40, N'ARMADA', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T17:34:20.300' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (92, 26, N'TOWN CAR', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T17:36:19.193' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (93, 41, N'H2', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T17:38:28.427' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (94, 41, N'H3', N'تاندرا', 1, 1, NULL, CAST(N'2011-10-04T17:39:55.130' AS DateTime), NULL, 0, NULL, NULL, N'94.56.240.92')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (95, 19, N'o', N'تاندرا', 1, 1, NULL, CAST(N'2011-11-15T10:27:10.953' AS DateTime), NULL, 0, NULL, NULL, N'31.218.72.160')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (96, 20, N'HH', N'تاندرا', 1, 1, NULL, CAST(N'2011-11-30T12:24:07.870' AS DateTime), NULL, 0, NULL, NULL, N'31.218.114.175')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (97, 20, N'EQUINOX', N'تاندرا', 1, 1, NULL, CAST(N'2011-12-14T15:31:39.717' AS DateTime), NULL, 0, NULL, NULL, N'31.218.202.227')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (98, 32, N'RX300', N'تاندرا', 1, 1, NULL, CAST(N'2011-12-14T15:32:27.670' AS DateTime), NULL, 0, NULL, NULL, N'31.218.202.227')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (99, 31, N'ASPEN', N'تاندرا', 1, 1, NULL, CAST(N'2011-12-14T15:32:48.500' AS DateTime), NULL, 0, NULL, NULL, N'31.218.202.227')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (100, 34, N'DENALI', N'تاندرا', 1, 1, NULL, CAST(N'2011-12-14T15:33:10.263' AS DateTime), NULL, 0, NULL, NULL, N'31.218.202.227')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (101, 23, N'RAM', N'تاندرا', 1, 1, NULL, CAST(N'2011-12-14T15:35:23.543' AS DateTime), NULL, 0, NULL, NULL, N'31.218.202.227')
GO
INSERT [dbo].[CarsModel] ([ModelID], [Marker_ID], [TypeNameEn], [TypeNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (102, 32, N'SC430', N'تاندرا', 1, 1, NULL, CAST(N'2011-12-14T15:38:26.513' AS DateTime), NULL, 0, NULL, NULL, N'31.218.202.227')
GO
SET IDENTITY_INSERT [dbo].[CarsModel] OFF
GO
SET IDENTITY_INSERT [dbo].[CarsStatus] ON 
GO
INSERT [dbo].[CarsStatus] ([StatusID], [StatusEn], [StatusAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (1, N'On Auction', N'فى المزاد', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarsStatus] ([StatusID], [StatusEn], [StatusAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (2, N'On Shipping', N'مشحونة', 2, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarsStatus] ([StatusID], [StatusEn], [StatusAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (3, N'On UAE', N'فى الإمارات', 3, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarsStatus] ([StatusID], [StatusEn], [StatusAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (4, N'On Auction', N'فى المزاد', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarsStatus] ([StatusID], [StatusEn], [StatusAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (5, N'On Shipping', N'مشحونة', 2, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[CarsStatus] ([StatusID], [StatusEn], [StatusAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (6, N'On UAE', N'فى الإمارات', 3, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[CarsStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[ClearanceCompanies] ON 
GO
INSERT [dbo].[ClearanceCompanies] ([ClearanceID], [ClearanceName], [ClearanceEmail], [ClearancePhone], [ClearanceAddress], [ClearanceDesc], [Priority], [Active], [OpeningBalance], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (1, N'Clearance 1', N'', N'', NULL, N'', 1, 1, 0.0000, NULL, CAST(N'2011-10-23T22:20:28.537' AS DateTime), NULL, 0, NULL, NULL, N'::1')
GO
SET IDENTITY_INSERT [dbo].[ClearanceCompanies] OFF
GO
SET IDENTITY_INSERT [dbo].[ClientPayments] ON 
GO
INSERT [dbo].[ClientPayments] ([PaymentID], [Invoice_ID], [Client_ID], [ExchangeCompany_ID], [Currency_ID], [PaymentValue], [CloseOut], [PaymentDate], [ReceiverName], [Notes], [Active], [Other], [RegisterDate], [Store_ID], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (19, NULL, 1, 1, 2, 50.0000, 0.0000, CAST(N'2011-12-28T00:00:00.000' AS DateTime), N'أحمد خميس', N'سداد مبلغ ل', 1, NULL, CAST(N'2011-12-28T13:17:14.713' AS DateTime), 1, 1, CAST(N'2011-12-28T13:17:14.713' AS DateTime), NULL, 0, NULL, NULL, N'::1')
GO
SET IDENTITY_INSERT [dbo].[ClientPayments] OFF
GO
SET IDENTITY_INSERT [dbo].[Clients] ON 
GO
INSERT [dbo].[Clients] ([ClientID], [ClientName], [ClientEmail], [ClientPhone], [ClientFax], [ClientAddress], [ClientUsername], [ClientPassword], [ClientDesc], [Priority], [Active], [SMSActive], [OpeningBalance], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (1, N'Client 1', N'test@test.com', N'00000000000', N'00000000000', NULL, N'test', N'test', N'', 1, 1, 0, 0.0000, NULL, CAST(N'2011-10-28T22:08:13.727' AS DateTime), CAST(N'2011-10-31T22:30:44.053' AS DateTime), 0, NULL, NULL, N'::1')
GO
SET IDENTITY_INSERT [dbo].[Clients] OFF
GO
SET IDENTITY_INSERT [dbo].[Colors] ON 
GO
INSERT [dbo].[Colors] ([ColorID], [ColorNameEn], [ColorNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (1, N'Beige', N'بنى فات اللون', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Colors] ([ColorID], [ColorNameEn], [ColorNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (2, N'Black', N'أسود', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Colors] ([ColorID], [ColorNameEn], [ColorNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (3, N'Blue', N'أزرق', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Colors] ([ColorID], [ColorNameEn], [ColorNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (4, N'Brown', N'بنى', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Colors] ([ColorID], [ColorNameEn], [ColorNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (5, N'Burgundy', N'عنابي', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Colors] ([ColorID], [ColorNameEn], [ColorNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (6, N'Charcoal', N'فحمى', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Colors] ([ColorID], [ColorNameEn], [ColorNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (7, N'Gold', N'ذهبي', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Colors] ([ColorID], [ColorNameEn], [ColorNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (8, N'Gray', N'رمادي', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Colors] ([ColorID], [ColorNameEn], [ColorNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (9, N'Green', N'أخضر', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Colors] ([ColorID], [ColorNameEn], [ColorNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (10, N'Off White', N'أبيض غامق', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Colors] ([ColorID], [ColorNameEn], [ColorNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (11, N'Orange', N'برتقالى', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Colors] ([ColorID], [ColorNameEn], [ColorNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (12, N'Pink', N'وردي', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Colors] ([ColorID], [ColorNameEn], [ColorNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (13, N'Purple', N'أرجوانى', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Colors] ([ColorID], [ColorNameEn], [ColorNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (14, N'Red', N'أحمر', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Colors] ([ColorID], [ColorNameEn], [ColorNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (15, N'Silver', N'فضي', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Colors] ([ColorID], [ColorNameEn], [ColorNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (16, N'Tan', N'أسمر', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Colors] ([ColorID], [ColorNameEn], [ColorNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (17, N'Turquoise', N'فيروزى', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Colors] ([ColorID], [ColorNameEn], [ColorNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (18, N'White', N'أبيض', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Colors] ([ColorID], [ColorNameEn], [ColorNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (19, N'Yellow', N'أصفر', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Colors] OFF
GO
INSERT [dbo].[Currencies] ([CurrencyID], [CurrencyName], [CurrencySymbol], [ExchangeRate], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (1, N'US Dolar', N'USD ($)', 1.0000, 1, 1, NULL, NULL, CAST(N'2011-10-10T15:01:55.350' AS DateTime), 0, NULL, NULL, N'::1')
GO
INSERT [dbo].[Currencies] ([CurrencyID], [CurrencyName], [CurrencySymbol], [ExchangeRate], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (2, N'AE Dirham', N'UAE (AED)', 0.2722, 1, 1, NULL, NULL, CAST(N'2011-12-24T12:54:09.517' AS DateTime), 0, NULL, NULL, N'::1')
GO
SET IDENTITY_INSERT [dbo].[Drives] ON 
GO
INSERT [dbo].[Drives] ([DriveID], [DriveNameEn], [DriveNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (1, N'2 WD', N'2 WD', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Drives] ([DriveID], [DriveNameEn], [DriveNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (2, N'4 WD', N'4 WD', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Drives] ([DriveID], [DriveNameEn], [DriveNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (3, N'Full WD', N'Full WD', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Drives] OFF
GO
SET IDENTITY_INSERT [dbo].[Engines] ON 
GO
INSERT [dbo].[Engines] ([EngineID], [EngineNameEn], [EngineNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (1, N'2 Cylinder', N'2 سلندر', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Engines] ([EngineID], [EngineNameEn], [EngineNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (2, N'3 Cylinder', N'3 سلندر', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Engines] ([EngineID], [EngineNameEn], [EngineNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (3, N'4 Cylinder', N'4 سلندر', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Engines] ([EngineID], [EngineNameEn], [EngineNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (4, N'5 Cylinder', N'5 سلندر', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Engines] ([EngineID], [EngineNameEn], [EngineNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (5, N'6 Cylinder', N'6 سلندر', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Engines] ([EngineID], [EngineNameEn], [EngineNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (6, N'7 Cylinder', N'7 سلندر', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Engines] ([EngineID], [EngineNameEn], [EngineNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (7, N'8 Cylinder', N'8 سلندر', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Engines] ([EngineID], [EngineNameEn], [EngineNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (8, N'9 Cylinder', N'9 سلندر', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Engines] ([EngineID], [EngineNameEn], [EngineNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (9, N'10 Cylinder', N'10 سلندر', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Engines] ([EngineID], [EngineNameEn], [EngineNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (10, N'12 Cylinder', N'12 سلندر', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Engines] OFF
GO
SET IDENTITY_INSERT [dbo].[ExchangeCompanies] ON 
GO
INSERT [dbo].[ExchangeCompanies] ([ExchangeCompanyID], [ExchangeCompanyName], [ExchangeCompanyEmail], [ExchangeCompanyPhone], [ExchangeCompanyAddress], [ExchangeCompanyDesc], [Priority], [Active], [OpeningBalance], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (1, N'Western Union', N'info@westernunion.com', N'000000000000', NULL, N'notes', 1, 1, NULL, NULL, CAST(N'2011-10-12T10:35:41.733' AS DateTime), CAST(N'2011-10-22T16:21:45.773' AS DateTime), 0, NULL, NULL, N'::1')
GO
INSERT [dbo].[ExchangeCompanies] ([ExchangeCompanyID], [ExchangeCompanyName], [ExchangeCompanyEmail], [ExchangeCompanyPhone], [ExchangeCompanyAddress], [ExchangeCompanyDesc], [Priority], [Active], [OpeningBalance], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (2, N'mido', N'', N'', NULL, N'', 1, 0, NULL, NULL, CAST(N'2011-10-22T16:24:40.610' AS DateTime), CAST(N'2011-10-22T16:25:03.260' AS DateTime), 1, NULL, CAST(N'2011-10-22T16:25:10.233' AS DateTime), N'::1')
GO
SET IDENTITY_INSERT [dbo].[ExchangeCompanies] OFF
GO
SET IDENTITY_INSERT [dbo].[ExpenseTypes] ON 
GO
INSERT [dbo].[ExpenseTypes] ([ExpenseTypeID], [ExpenseTypeName], [ExpenseTypeDetails], [CurrencyUsed], [GroupName], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (1, N'رواتب', N'رواتب', N'1', N'Cars', NULL, NULL, CAST(N'2011-05-18T12:06:42.137' AS DateTime), 0, NULL, NULL, N'127.0.0.1')
GO
INSERT [dbo].[ExpenseTypes] ([ExpenseTypeID], [ExpenseTypeName], [ExpenseTypeDetails], [CurrencyUsed], [GroupName], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (2, N'ضيافة', N'', N'1', N'Cars', NULL, NULL, CAST(N'2011-12-25T00:00:00.000' AS DateTime), 0, NULL, NULL, N'::1')
GO
INSERT [dbo].[ExpenseTypes] ([ExpenseTypeID], [ExpenseTypeName], [ExpenseTypeDetails], [CurrencyUsed], [GroupName], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (3, N'أجور', NULL, N'1', N'Cars', NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[ExpenseTypes] ([ExpenseTypeID], [ExpenseTypeName], [ExpenseTypeDetails], [CurrencyUsed], [GroupName], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (4, N'بنزين', NULL, N'1', N'Cars', NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[ExpenseTypes] ([ExpenseTypeID], [ExpenseTypeName], [ExpenseTypeDetails], [CurrencyUsed], [GroupName], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (5, N'مواصلات', NULL, N'1', N'Cars', NULL, NULL, NULL, 0, 0, CAST(N'2011-05-16T14:57:43.727' AS DateTime), N'127.0.0.1')
GO
INSERT [dbo].[ExpenseTypes] ([ExpenseTypeID], [ExpenseTypeName], [ExpenseTypeDetails], [CurrencyUsed], [GroupName], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (6, N'غيار زيت', N'', N'1', N'Cars', 0, NULL, NULL, 0, NULL, NULL, N'127.0.0.1')
GO
INSERT [dbo].[ExpenseTypes] ([ExpenseTypeID], [ExpenseTypeName], [ExpenseTypeDetails], [CurrencyUsed], [GroupName], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (7, N'fdfd', N'dfd', N'1', N'Cars', 1, NULL, NULL, 1, 1, CAST(N'2011-10-09T00:00:00.000' AS DateTime), N'::1')
GO
INSERT [dbo].[ExpenseTypes] ([ExpenseTypeID], [ExpenseTypeName], [ExpenseTypeDetails], [CurrencyUsed], [GroupName], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (8, N'dasdasd dfdfd', N'fasdfsdf', N'2', N'Cars', 1, NULL, CAST(N'2011-10-09T00:00:00.000' AS DateTime), 0, NULL, NULL, N'::1')
GO
INSERT [dbo].[ExpenseTypes] ([ExpenseTypeID], [ExpenseTypeName], [ExpenseTypeDetails], [CurrencyUsed], [GroupName], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (9, N'شاى', N'', N'2', N'General', 1, NULL, NULL, 0, NULL, NULL, N'::1')
GO
SET IDENTITY_INSERT [dbo].[ExpenseTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[MainSafeDebitCredit] ON 
GO
INSERT [dbo].[MainSafeDebitCredit] ([SafeID], [Employee_ID], [Store_ID], [SafeDebitValue], [SafeDebitDate], [SafeCreditValue], [SafeCreditDate], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (1, 1, 1, N'50000', CAST(N'2011-12-24T00:00:00.000' AS DateTime), NULL, NULL, 1, CAST(N'2011-12-24T15:55:49.867' AS DateTime), CAST(N'2011-12-24T16:11:21.270' AS DateTime), 0, NULL, NULL, N'::1')
GO
INSERT [dbo].[MainSafeDebitCredit] ([SafeID], [Employee_ID], [Store_ID], [SafeDebitValue], [SafeDebitDate], [SafeCreditValue], [SafeCreditDate], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (2, 1, 1, N'1000', CAST(N'2011-12-27T00:00:00.000' AS DateTime), NULL, NULL, 1, CAST(N'2011-12-24T16:33:13.513' AS DateTime), CAST(N'2011-12-24T16:41:57.430' AS DateTime), 0, NULL, NULL, N'::1')
GO
SET IDENTITY_INSERT [dbo].[MainSafeDebitCredit] OFF
GO
SET IDENTITY_INSERT [dbo].[Pictures] ON 
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (2, 1, N'product', 1, NULL, NULL, N'~/Public/estate6Winter.jpg', 1, 1, 1)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (3, 1, N'product', 1, NULL, NULL, N'~/Public/estate6Winter.jpg', 0, 1, 2)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (4, 1, N'product', 1, NULL, NULL, N'~/Public/estate6Winter.jpg', 0, 1, 3)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (9, 1, N'product', 1, NULL, NULL, N'~/Public/estate6Winter.jpg', 0, 1, 4)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (11, 1, N'product', 1, NULL, NULL, N'~/Public/estate6Water lilies.jpg', 0, 1, 5)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (12, 1, N'product', 1, NULL, NULL, N'~/Public/estate6Winter.jpg', 0, 1, 6)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (13, 1, N'product', 3, NULL, NULL, N'~/Public/estate6Water lilies.jpg', 0, 1, 7)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (14, 1, N'product', 3, NULL, NULL, N'~/Public/estate6Sunset.jpg', 1, 1, 8)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (28, NULL, N'cars', 11, NULL, NULL, N'~/Public/11_product_Lighthouse.jpg', 0, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (30, NULL, N'cars', 11, NULL, NULL, N'~/Public/11_product_flickr-017.gif', 0, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (31, NULL, N'cars', 11, NULL, NULL, N'~/Public/11_product_Tulips.jpg', 1, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (32, NULL, N'cars', 11, NULL, NULL, N'~/Public/12_product_flickr-017.gif', NULL, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (34, NULL, N'cars', 11, NULL, NULL, N'~/Public/18_product_Koala.jpg', 1, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (71, NULL, N'links', 11, NULL, NULL, N'~/Public/car_pic/11_links_udhia.png', NULL, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (87, NULL, N'cars', 37, NULL, NULL, N'37_cars_preview.jpg', 1, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (88, NULL, N'cars', 41, NULL, NULL, N'41_cars_21080_1600x1200-wallpaper-cb1276291832.jpg', 1, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (89, NULL, N'cars', 41, NULL, NULL, N'41_cars_0816wallpaperys-8_1600.jpg', 0, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (100, NULL, N'cars', 29, NULL, NULL, N'29_OfAjpIqu.jpg', 0, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (102, NULL, N'cars', 30, NULL, NULL, N'30_N285Lnbs.jpg', 0, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (103, NULL, N'cars', 30, NULL, NULL, N'30_jncgumwf.jpg', 0, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (104, NULL, N'cars', 28, NULL, NULL, N'28_qHj8wszi.jpg', 0, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (105, NULL, N'cars', 27, NULL, NULL, N'27_VWmZhITt.jpg', 0, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (106, NULL, N'cars', 26, NULL, NULL, N'26_QSXEiDoA.jpg', 1, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (107, NULL, N'cars', 25, NULL, NULL, N'25_xhHyiWCE.jpg', 1, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (108, NULL, N'cars', 24, NULL, NULL, N'24_pxd9ZWJK.jpg', 1, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (109, NULL, N'cars', 23, NULL, NULL, N'23_wRXWv5bt.jpg', 1, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (110, NULL, N'cars', 22, NULL, NULL, N'22_cMW6EpNV.jpg', 1, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (111, NULL, N'cars', 21, NULL, NULL, N'21_3NTioFVf.jpg', 1, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (112, NULL, N'cars', 20, NULL, NULL, N'20_wQH4AoOC.jpg', 1, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (114, NULL, N'cars', 19, NULL, NULL, N'19_ma1zmPcB.jpg', 0, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (115, NULL, N'cars', 19, NULL, NULL, N'19_APDoRWns.jpg', 1, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (116, NULL, N'cars', 19, NULL, NULL, N'19_bdGvVGZB.jpg', 0, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (117, NULL, N'cars', 30, NULL, NULL, N'30_XdYiTfg5.jpg', 1, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (118, NULL, N'cars', 27, NULL, NULL, N'27_fIsb2iDy.jpg', 1, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (119, NULL, N'cars', 20, NULL, NULL, N'20_knvonfal.jpg', 0, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (120, NULL, N'cars', 29, NULL, NULL, N'29_B976zlgM.jpg', 1, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (121, NULL, N'cars', 28, NULL, NULL, N'28_bXOodWKu.jpg', 0, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (122, NULL, N'cars', 26, NULL, NULL, N'26_pOs7ty4n.jpg', NULL, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (123, NULL, N'cars', 25, NULL, NULL, N'25_YNznVOAn.jpg', NULL, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (124, NULL, N'cars', 24, NULL, NULL, N'24_L6fG5FUj.jpg', NULL, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (125, NULL, N'cars', 23, NULL, NULL, N'23_rjsUqVjO.jpg', NULL, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (126, NULL, N'cars', 22, NULL, NULL, N'22_rtaktZeC.jpg', NULL, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (127, NULL, N'cars', 21, NULL, NULL, N'21_VSrDY3SJ.jpg', NULL, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (128, NULL, N'cars', 28, NULL, NULL, N'28_sFHFgobB.jpg', 0, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (10128, NULL, N'cars', 31, NULL, NULL, N'31_osAA9RDL.jpg', 1, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (10130, NULL, N'cars', 31, NULL, NULL, N'31_nhBkGv9z.jpg', 0, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (10142, NULL, N'cars', 28, NULL, NULL, N'28_smCdagu4.jpg', 0, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (10168, NULL, N'cars', 28, NULL, NULL, N'28_dw1NrVAu.jpg', 0, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (10169, NULL, N'cars', 28, NULL, NULL, N'28_ApTwUCpB.JPG', 1, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (10170, NULL, N'cars', 32, NULL, NULL, N'32_ibUa6D4x.jpg', 1, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (10171, NULL, N'cars', 33, NULL, NULL, N'33_dOCgMUJk.jpg', 1, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (10172, NULL, N'carParts', 3, NULL, NULL, N'3_g4fc6xoV.jpg', NULL, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (10173, NULL, N'carParts', 5, NULL, NULL, N'5_CERS2SeX.jpg', NULL, NULL, NULL)
GO
INSERT [dbo].[Pictures] ([ID], [LanguageID], [CategoryType], [MasterID], [Title], [Details], [URL], [MainImage], [Active], [Priority]) VALUES (10174, NULL, N'carParts', 1, NULL, NULL, N'1_fO2LQzpy.jpg', NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Pictures] OFF
GO
SET IDENTITY_INSERT [dbo].[PortShipping] ON 
GO
INSERT [dbo].[PortShipping] ([PortShipID], [PortShipEn], [PortShipAr], [PortShipDescEn], [PortShipDescAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (1, N'port 1', N'ميناء 1', N'f', N'f', 1, 1, NULL, CAST(N'2011-09-06T14:48:46.013' AS DateTime), NULL, 0, NULL, NULL, N'::1')
GO
INSERT [dbo].[PortShipping] ([PortShipID], [PortShipEn], [PortShipAr], [PortShipDescEn], [PortShipDescAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (2, N'port 1', N'ميناء 1', N'f', N'f', 1, 1, NULL, CAST(N'2011-09-06T14:53:27.610' AS DateTime), NULL, 1, NULL, CAST(N'2011-09-06T14:53:51.770' AS DateTime), N'::1')
GO
INSERT [dbo].[PortShipping] ([PortShipID], [PortShipEn], [PortShipAr], [PortShipDescEn], [PortShipDescAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (3, N'port 2', N'بورت 2', NULL, NULL, 1, 1, NULL, CAST(N'2011-09-19T09:29:39.547' AS DateTime), CAST(N'2011-11-12T14:26:12.700' AS DateTime), 0, NULL, NULL, N'::1')
GO
SET IDENTITY_INSERT [dbo].[PortShipping] OFF
GO
SET IDENTITY_INSERT [dbo].[Regions] ON 
GO
INSERT [dbo].[Regions] ([RegionID], [Auction_ID], [RegionEn], [RegionAr], [CostforRegion], [RegionDescEn], [RegionDescAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (1, 1, N'Cairo', N'القاهرة', NULL, NULL, NULL, 1, 1, NULL, CAST(N'2011-09-07T09:16:21.697' AS DateTime), NULL, 0, NULL, NULL, N'192.168.1.150')
GO
INSERT [dbo].[Regions] ([RegionID], [Auction_ID], [RegionEn], [RegionAr], [CostforRegion], [RegionDescEn], [RegionDescAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (2, 1, N'Giza', N'', NULL, NULL, NULL, 1, 1, NULL, CAST(N'2011-09-19T09:33:01.047' AS DateTime), NULL, 0, NULL, NULL, N'192.168.1.150')
GO
INSERT [dbo].[Regions] ([RegionID], [Auction_ID], [RegionEn], [RegionAr], [CostforRegion], [RegionDescEn], [RegionDescAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (3, 2, N'Sharjah', N'الشارقة', CAST(1 AS Decimal(18, 0)), NULL, NULL, 1, 1, NULL, CAST(N'2011-09-19T09:33:17.933' AS DateTime), CAST(N'2011-10-23T09:47:11.330' AS DateTime), 0, NULL, NULL, N'::1')
GO
INSERT [dbo].[Regions] ([RegionID], [Auction_ID], [RegionEn], [RegionAr], [CostforRegion], [RegionDescEn], [RegionDescAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (4, 2, N'Dubai', N'دبي', CAST(1 AS Decimal(18, 0)), NULL, NULL, 1, 1, NULL, CAST(N'2011-09-19T09:33:40.737' AS DateTime), CAST(N'2011-10-23T09:46:43.553' AS DateTime), 0, NULL, NULL, N'::1')
GO
INSERT [dbo].[Regions] ([RegionID], [Auction_ID], [RegionEn], [RegionAr], [CostforRegion], [RegionDescEn], [RegionDescAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (5, 3, N'yard 1', N'يارد1', CAST(0 AS Decimal(18, 0)), NULL, NULL, 1, 1, NULL, CAST(N'2011-10-09T13:19:34.830' AS DateTime), CAST(N'2011-10-23T11:40:38.637' AS DateTime), 0, NULL, NULL, N'::1')
GO
SET IDENTITY_INSERT [dbo].[Regions] OFF
GO
SET IDENTITY_INSERT [dbo].[ShippingCompanies] ON 
GO
INSERT [dbo].[ShippingCompanies] ([ShipCompanyID], [ShipCompanyName], [ShipCompanyEmail], [ShipCompanyPhone], [ShipCompanyAddress], [ShipCompanyDesc], [Priority], [Active], [OpeningBalance], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (1, N'ship co no 11', N'shipco@ealaf.com', N'000000000', NULL, N'notes', 1, 1, 0.0000, NULL, CAST(N'2011-09-05T15:28:17.417' AS DateTime), CAST(N'2011-10-23T10:23:41.850' AS DateTime), 0, NULL, NULL, N'::1')
GO
INSERT [dbo].[ShippingCompanies] ([ShipCompanyID], [ShipCompanyName], [ShipCompanyEmail], [ShipCompanyPhone], [ShipCompanyAddress], [ShipCompanyDesc], [Priority], [Active], [OpeningBalance], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (2, N'shpping co no 12', N'', N'', NULL, N'', 1, 1, 0.0000, NULL, CAST(N'2011-09-19T09:29:21.270' AS DateTime), CAST(N'2011-10-23T10:23:29.750' AS DateTime), 0, NULL, NULL, N'::1')
GO
INSERT [dbo].[ShippingCompanies] ([ShipCompanyID], [ShipCompanyName], [ShipCompanyEmail], [ShipCompanyPhone], [ShipCompanyAddress], [ShipCompanyDesc], [Priority], [Active], [OpeningBalance], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (3, N'shipping co 1', N'', N'', NULL, N'', 1, 1, 0.0000, NULL, CAST(N'2011-10-23T22:22:13.810' AS DateTime), NULL, 0, NULL, NULL, N'::1')
GO
SET IDENTITY_INSERT [dbo].[ShippingCompanies] OFF
GO
SET IDENTITY_INSERT [dbo].[Ships] ON 
GO
INSERT [dbo].[Ships] ([ShipID], [ShipEn], [ShipAr], [ShipDescEn], [ShipDescAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (1, N'Ship no 1', N'الناقلة 1', N'', N'الباخرة', 1, 1, NULL, CAST(N'2011-09-07T09:35:44.687' AS DateTime), CAST(N'2011-09-07T09:35:59.043' AS DateTime), 0, NULL, NULL, N'192.168.1.150')
GO
INSERT [dbo].[Ships] ([ShipID], [ShipEn], [ShipAr], [ShipDescEn], [ShipDescAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (2, N'Salam Ship', N'الناقلة 2', NULL, NULL, 1, 1, NULL, CAST(N'2011-09-19T09:34:00.957' AS DateTime), CAST(N'2011-10-23T10:38:40.163' AS DateTime), 0, NULL, NULL, N'::1')
GO
SET IDENTITY_INSERT [dbo].[Ships] OFF
GO
INSERT [dbo].[SiteCompanies] ([CompID], [CompName], [CompEmail], [CmopWebsite], [CompPhone], [CompFax], [CompAddress], [SecretCode]) VALUES (1, N'Elaf Cars', N'info@elafcars.com', N'www.elafcars.com', N'00000000000', N'0000000000', N'Sharjah, UAE ', N'admin1')
GO
INSERT [dbo].[SiteLanguages] ([id], [lang_name], [lang_word], [lang_code]) VALUES (1, N'English (en)', N'English', N'en')
GO
INSERT [dbo].[SiteLanguages] ([id], [lang_name], [lang_word], [lang_code]) VALUES (2, N'عربي (ar)', N'عربي', N'ar')
GO
SET IDENTITY_INSERT [dbo].[SiteLinks] ON 
GO
INSERT [dbo].[SiteLinks] ([id], [link_order], [link_lang_id], [link_place], [link_name], [link_details], [main_picture], [ViewHome], [Active]) VALUES (1, 1, 2, NULL, N'مرحبا بكم فى موقع تاندرا', N'<div class="col-md-6 wow fadeInRight rtl" data-wow-offset="200" data-wow-delay="100ms">
<h2 class="section-title text-right">&nbsp;<span>من نحـــن؟</span></h2>
<p>تويوتا تندرا هي إحدي طرازات سيارات النقل التي تنتجها شركة تويوتا للسيارات. بدأ إنتاج تندرا عام 1999م كطراز 2000 وهي سيارة نقل متوسطة في جيلها الأول حتى عام 2006م وسيارة نقل كبيرة في جيلها الثاني حتى الآن. يشترك الجيل الأول منها في كثير من الخصائص مع سابقتها طراز تي100 وفي الطراز الأصغر تاكوما، إلا أن طراز تندرا يتميز بأهم ميزة وهي المحرك V8 الأمر الذي جعل منها سيارة منافسة جداً لمثيلاتها من الطرازات الأمريكية كطراز جي إم سي سيرا التي تغلبت عليه في المبيعات الشهرية إلا أنها ما زالت خلف طراز فورد إف-150 المحتل الصدارة في هذه الفئة. للسيارة جيلان وتزود بمحركين أحدهما V6 والآخر V8.</p>
<ul class="list-icons">
    <li>تاندرا إم. كـ للسيارات الجديدة والمستعملة.</li>
    <li>تاندرا إم. كـ للسيارات المصدومة وقطع الغيار.</li>
</ul>
</div>', NULL, NULL, 0)
GO
INSERT [dbo].[SiteLinks] ([id], [link_order], [link_lang_id], [link_place], [link_name], [link_details], [main_picture], [ViewHome], [Active]) VALUES (14, 1, 2, NULL, N'عن الشركة', N'<p>عن الشركة تكتب هنا عن الشركة تكتب هناعن الشركة تكتب هناعن الشركة تكتب هناعن الشركة تكتب هناعن الشركة تكتب هناعن الشركة تكتب هنا</p>
<p>عن الشركة تكتب هناعن الشركة تكتب هناعن الشركة تكتب هناعن الشركة تكتب هناعن الشركة تكتب هناعن الشركة تكتب هناعن الشركة تكتب هناعن الشركة تكتب هناعن الشركة تكتب هناعن الشركة تكتب هناعن الشركة تكتب هناعن الشركة تكتب هناعن الشركة تكتب هناعن الشركة تكتب هناعن الشركة تكتب هناعن الشركة تكتب هناعن الشركة تكتب هناعن الشركة تكتب هناعن الشركة تكتب هناعن الشركة تكتب هنا</p>', NULL, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[SiteLinks] OFF
GO
SET IDENTITY_INSERT [dbo].[States] ON 
GO
INSERT [dbo].[States] ([StateID], [StateEn], [StateAr], [StateDescEn], [StateDescAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (1, N'Egypt', N'مصر', N'Egypt', N'', 1, 1, NULL, CAST(N'2011-09-06T16:37:48.703' AS DateTime), NULL, 0, NULL, NULL, N'::1')
GO
INSERT [dbo].[States] ([StateID], [StateEn], [StateAr], [StateDescEn], [StateDescAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (2, N'UAE', N'', N'', N'', 1, 1, NULL, CAST(N'2011-09-19T09:32:45.733' AS DateTime), NULL, 0, NULL, NULL, N'192.168.1.150')
GO
SET IDENTITY_INSERT [dbo].[States] OFF
GO
SET IDENTITY_INSERT [dbo].[Stores] ON 
GO
INSERT [dbo].[Stores] ([StoreID], [StoreName], [StoreEmail], [StorePhone], [StoreFax], [StoreAddress], [StoreDesc], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (1, N'Store 1', N'', N'', NULL, NULL, N'', 1, 1, NULL, CAST(N'2011-10-28T22:09:14.383' AS DateTime), CAST(N'2011-10-28T22:09:28.507' AS DateTime), 0, NULL, NULL, N'::1')
GO
SET IDENTITY_INSERT [dbo].[Stores] OFF
GO
SET IDENTITY_INSERT [dbo].[Styles] ON 
GO
INSERT [dbo].[Styles] ([CarStyleID], [CarStyleNameEn], [CarStyleNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (1, N'Van', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Styles] ([CarStyleID], [CarStyleNameEn], [CarStyleNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (2, N'Sedan', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Styles] ([CarStyleID], [CarStyleNameEn], [CarStyleNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (3, N'Coupe', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Styles] ([CarStyleID], [CarStyleNameEn], [CarStyleNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (4, N'Conv.', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Styles] ([CarStyleID], [CarStyleNameEn], [CarStyleNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (5, N'SUV', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Styles] ([CarStyleID], [CarStyleNameEn], [CarStyleNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (6, N'Wagon', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Styles] ([CarStyleID], [CarStyleNameEn], [CarStyleNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (7, N'HatchBack', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Styles] ([CarStyleID], [CarStyleNameEn], [CarStyleNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (8, N'Truck', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Styles] ([CarStyleID], [CarStyleNameEn], [CarStyleNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (9, N'Dump', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Styles] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_admin_n] ON 
GO
INSERT [dbo].[tbl_admin_n] ([id], [LanguageID], [user_name], [user_password], [user_type], [user_level], [Store_ID], [name], [city], [address], [mobile], [phone], [fax], [email]) VALUES (1, NULL, N'admin', N'admin', NULL, N'A', 1, N'Suppervisor', N'UAE       ', N'UAE', N'0000000000', N'0000000000', N'0000000000', N'admin@admin.com')
GO
INSERT [dbo].[tbl_admin_n] ([id], [LanguageID], [user_name], [user_password], [user_type], [user_level], [Store_ID], [name], [city], [address], [mobile], [phone], [fax], [email]) VALUES (2, NULL, N'tundra', N'admin', NULL, N'B', 1, N'Tundra MK Co', N'Sharjah   ', N'', N'', N'', N'', N'info@tundra-mk.com')
GO
SET IDENTITY_INSERT [dbo].[tbl_admin_n] OFF
GO
SET IDENTITY_INSERT [dbo].[TowingCompanies] ON 
GO
INSERT [dbo].[TowingCompanies] ([TowingCompanyID], [TowingCompanyName], [TowingCompanyEmail], [TowingCompanyPhone], [TowingCompanyAddress], [TowingCompanyDesc], [Priority], [Active], [OpeningBalance], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (1, N'towing 22', N'', N'', NULL, N'', 1, 1, 0.0000, NULL, CAST(N'2011-10-09T14:15:57.520' AS DateTime), CAST(N'2011-10-23T10:49:55.820' AS DateTime), 0, NULL, NULL, N'::1')
GO
INSERT [dbo].[TowingCompanies] ([TowingCompanyID], [TowingCompanyName], [TowingCompanyEmail], [TowingCompanyPhone], [TowingCompanyAddress], [TowingCompanyDesc], [Priority], [Active], [OpeningBalance], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (2, N'fdfdf', N'', N'', NULL, N'', 1, 1, 0.0000, NULL, CAST(N'2011-10-23T10:50:25.617' AS DateTime), NULL, 0, NULL, NULL, N'::1')
GO
INSERT [dbo].[TowingCompanies] ([TowingCompanyID], [TowingCompanyName], [TowingCompanyEmail], [TowingCompanyPhone], [TowingCompanyAddress], [TowingCompanyDesc], [Priority], [Active], [OpeningBalance], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (3, N'dfdfdfdf', N'', N'', NULL, N'', 1, 1, 0.0000, NULL, CAST(N'2011-10-23T10:50:34.537' AS DateTime), NULL, 0, NULL, NULL, N'::1')
GO
INSERT [dbo].[TowingCompanies] ([TowingCompanyID], [TowingCompanyName], [TowingCompanyEmail], [TowingCompanyPhone], [TowingCompanyAddress], [TowingCompanyDesc], [Priority], [Active], [OpeningBalance], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (4, N'tttt', N'', N'', NULL, N'', 1, 1, 0.0000, NULL, CAST(N'2011-10-23T10:55:09.660' AS DateTime), CAST(N'2011-10-23T10:55:16.413' AS DateTime), 1, NULL, CAST(N'2011-10-23T10:55:19.590' AS DateTime), N'::1')
GO
SET IDENTITY_INSERT [dbo].[TowingCompanies] OFF
GO
SET IDENTITY_INSERT [dbo].[Transmissions] ON 
GO
INSERT [dbo].[Transmissions] ([TransmissionID], [TransmissionNameEn], [TransmissionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (1, N'Manual', N'مانيوال', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Transmissions] ([TransmissionID], [TransmissionNameEn], [TransmissionNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (2, N'Automatic', N'أوتوماتيك', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Transmissions] OFF
GO
SET IDENTITY_INSERT [dbo].[TransportCompanies] ON 
GO
INSERT [dbo].[TransportCompanies] ([TransportID], [TransportName], [TransportEmail], [TransportPhone], [TransportAddress], [TransportDesc], [Priority], [Active], [OpeningBalance], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (1, N'Transport 1', N'', N'', NULL, N'', 1, 1, 0.0000, NULL, CAST(N'2011-10-23T22:15:57.187' AS DateTime), NULL, 0, NULL, NULL, N'::1')
GO
SET IDENTITY_INSERT [dbo].[TransportCompanies] OFF
GO
SET IDENTITY_INSERT [dbo].[WorkingStatus] ON 
GO
INSERT [dbo].[WorkingStatus] ([WorkingStatusID], [WorkingStatusNameEn], [WorkingStatusNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (1, N'Used', N'مستعملة', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[WorkingStatus] ([WorkingStatusID], [WorkingStatusNameEn], [WorkingStatusNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (2, N'Damaged', N'مصدومة', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[WorkingStatus] ([WorkingStatusID], [WorkingStatusNameEn], [WorkingStatusNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (3, N'New', N'جديدة', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[WorkingStatus] ([WorkingStatusID], [WorkingStatusNameEn], [WorkingStatusNameAr], [Priority], [Active], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (4, N'Scrap', N'اسكراب', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[WorkingStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[Workshops] ON 
GO
INSERT [dbo].[Workshops] ([WorkshopID], [WorkshopName], [WorkshopEmail], [WorkshopPhone], [WorkshopAddress], [WorkshopDesc], [Priority], [Active], [OpeningBalance], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (1, N'Workshop 11', N'shop1@elaf.com', N'0000000000000', NULL, N'', 1, 1, NULL, NULL, CAST(N'2011-09-07T13:25:47.707' AS DateTime), CAST(N'2011-09-07T14:19:56.083' AS DateTime), 0, NULL, NULL, N'192.168.1.150')
GO
INSERT [dbo].[Workshops] ([WorkshopID], [WorkshopName], [WorkshopEmail], [WorkshopPhone], [WorkshopAddress], [WorkshopDesc], [Priority], [Active], [OpeningBalance], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (2, N'Workshop 1', N'shop1@elaf.com', N'0000000000000', NULL, N'www', 1, 1, NULL, NULL, CAST(N'2011-09-07T13:51:44.613' AS DateTime), CAST(N'2011-09-07T14:17:53.403' AS DateTime), 1, NULL, CAST(N'2011-09-07T14:17:55.760' AS DateTime), N'192.168.1.150')
GO
INSERT [dbo].[Workshops] ([WorkshopID], [WorkshopName], [WorkshopEmail], [WorkshopPhone], [WorkshopAddress], [WorkshopDesc], [Priority], [Active], [OpeningBalance], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (3, N'Workshop 11', N'shop1@elaf.comm', N'0000000000000', NULL, N'www', 1, 1, NULL, NULL, CAST(N'2011-09-07T14:17:43.097' AS DateTime), NULL, 1, NULL, CAST(N'2011-09-07T14:17:48.887' AS DateTime), N'192.168.1.150')
GO
INSERT [dbo].[Workshops] ([WorkshopID], [WorkshopName], [WorkshopEmail], [WorkshopPhone], [WorkshopAddress], [WorkshopDesc], [Priority], [Active], [OpeningBalance], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (4, N'Sharjah Maintenance Shop ', N'', N'', NULL, N'', 1, 1, NULL, NULL, CAST(N'2011-09-19T09:36:19.470' AS DateTime), CAST(N'2011-10-23T11:27:04.297' AS DateTime), 0, NULL, NULL, N'::1')
GO
INSERT [dbo].[Workshops] ([WorkshopID], [WorkshopName], [WorkshopEmail], [WorkshopPhone], [WorkshopAddress], [WorkshopDesc], [Priority], [Active], [OpeningBalance], [System_Who_Add], [System_Add_Date], [System_Modify_Date], [System_Delete_Status], [System_Who_Delete], [System_Delete_Date], [System_LastAction_IP]) VALUES (5, N'يسيسيسي', N'', N'', NULL, N'', 1, 1, NULL, NULL, CAST(N'2011-10-23T11:24:15.800' AS DateTime), NULL, 1, NULL, CAST(N'2011-10-23T11:24:17.750' AS DateTime), N'::1')
GO
SET IDENTITY_INSERT [dbo].[Workshops] OFF
GO
SET IDENTITY_INSERT [dbo].[Years] ON 
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (1, N'1979')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (2, N'1980')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (3, N'1981')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (4, N'1982')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (5, N'1983')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (6, N'1984')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (7, N'1985')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (8, N'1986')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (9, N'1987')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (10, N'1988')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (11, N'1989')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (12, N'1990')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (13, N'1991')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (14, N'1992')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (15, N'1993')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (16, N'1994')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (17, N'1995')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (18, N'1996')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (19, N'1997')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (20, N'1998')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (21, N'1999')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (22, N'2000')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (23, N'2001')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (24, N'2002')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (25, N'2003')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (26, N'2004')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (27, N'2005')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (28, N'2006')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (29, N'2007')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (30, N'2008')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (31, N'2009')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (32, N'2010')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (33, N'2011')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (34, N'2012')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (35, N'2013')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (36, N'2014')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (37, N'2015')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (38, N'2016')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (39, N'2017')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (40, N'2018')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (41, N'2019')
GO
INSERT [dbo].[Years] ([YearID], [YearNameEn]) VALUES (42, N'2020')
GO
SET IDENTITY_INSERT [dbo].[Years] OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Table_1_IsActice]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CarParts] ADD  CONSTRAINT [DF_Table_1_IsActice]  DEFAULT ((1)) FOR [IsActive]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_CarParts_IsDeleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CarParts] ADD  CONSTRAINT [DF_CarParts_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_CarParts_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CarParts] ADD  CONSTRAINT [DF_CarParts_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_CarPartTypes_IsDeleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CarPartTypes] ADD  CONSTRAINT [DF_CarPartTypes_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ClientPayments_CloseOut]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ClientPayments] ADD  CONSTRAINT [DF_ClientPayments_CloseOut]  DEFAULT ((0)) FOR [CloseOut]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CarPartsImages_CarParts]') AND parent_object_id = OBJECT_ID(N'[dbo].[CarPartsImages]'))
ALTER TABLE [dbo].[CarPartsImages]  WITH CHECK ADD  CONSTRAINT [FK_CarPartsImages_CarParts] FOREIGN KEY([PartId])
REFERENCES [dbo].[CarParts] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CarPartsImages_CarParts]') AND parent_object_id = OBJECT_ID(N'[dbo].[CarPartsImages]'))
ALTER TABLE [dbo].[CarPartsImages] CHECK CONSTRAINT [FK_CarPartsImages_CarParts]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Images_SiteLinks]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pictures]'))
ALTER TABLE [dbo].[Pictures]  WITH NOCHECK ADD  CONSTRAINT [FK_Images_SiteLinks] FOREIGN KEY([MasterID])
REFERENCES [dbo].[SiteLinks] ([id])
NOT FOR REPLICATION 
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Images_SiteLinks]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pictures]'))
ALTER TABLE [dbo].[Pictures] NOCHECK CONSTRAINT [FK_Images_SiteLinks]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SiteLinks_SiteLanguages]') AND parent_object_id = OBJECT_ID(N'[dbo].[SiteLinks]'))
ALTER TABLE [dbo].[SiteLinks]  WITH CHECK ADD  CONSTRAINT [FK_SiteLinks_SiteLanguages] FOREIGN KEY([link_lang_id])
REFERENCES [dbo].[SiteLanguages] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SiteLinks_SiteLanguages]') AND parent_object_id = OBJECT_ID(N'[dbo].[SiteLinks]'))
ALTER TABLE [dbo].[SiteLinks] CHECK CONSTRAINT [FK_SiteLinks_SiteLanguages]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_admin_n_Stores]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_admin_n]'))
ALTER TABLE [dbo].[tbl_admin_n]  WITH CHECK ADD  CONSTRAINT [FK_tbl_admin_n_Stores] FOREIGN KEY([Store_ID])
REFERENCES [dbo].[Stores] ([StoreID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tbl_admin_n_Stores]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_admin_n]'))
ALTER TABLE [dbo].[tbl_admin_n] CHECK CONSTRAINT [FK_tbl_admin_n_Stores]
GO
/****** Object:  StoredProcedure [dbo].[AddinsDeleteAddin]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddinsDeleteAddin]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[AddinsDeleteAddin] AS' 
END
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <...>
-- Description:	<delete addin info.>
-- =============================================
ALTER PROCEDURE [dbo].[AddinsDeleteAddin]
	-- Add the parameters for the stored procedure here
	@id bigint	
	
AS
BEGIN
	
	SET NOCOUNT ON;

--    SELECT COUNT(ID) AS ID FROM Addins WHERE ParentID = @id;
--
--	IF @@ROWCOUNT <= 0
		Delete from  Addins Where ID = @id;
			
END









GO
/****** Object:  StoredProcedure [dbo].[AddinsGetAddinDetailsById]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddinsGetAddinDetailsById]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[AddinsGetAddinDetailsById] AS' 
END
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <24-3-2010>
-- Description:	<Get Addins by link id>
-- =============================================
ALTER PROCEDURE [dbo].[AddinsGetAddinDetailsById]
	-- Add the parameters for the stored procedure here
	@id bigint

	
AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select * from  Addins Where ID = @id 
			
END











GO
/****** Object:  StoredProcedure [dbo].[AddinsGetAddinsByLanguageId]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddinsGetAddinsByLanguageId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[AddinsGetAddinsByLanguageId] AS' 
END
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <24-3-2010>
-- Description:	<Get Addins by language id>
-- =============================================
ALTER PROCEDURE [dbo].[AddinsGetAddinsByLanguageId]
	-- Add the parameters for the stored procedure here
	
	@LanguageID int
		
AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT     Addins.*, SiteLanguages.lang_name 
	FROM         Addins INNER JOIN
                      SiteLanguages ON Addins.LanguageID = SiteLanguages.ID
	WHERE     (Addins.LanguageID = @LanguageID);
			
END













GO
/****** Object:  StoredProcedure [dbo].[AddinsGetAddinsByLanguageIdLimitedCount]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddinsGetAddinsByLanguageIdLimitedCount]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[AddinsGetAddinsByLanguageIdLimitedCount] AS' 
END
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.....>
-- Description:	<Get Addins list>
-- =============================================
ALTER PROCEDURE [dbo].[AddinsGetAddinsByLanguageIdLimitedCount]
	-- Add the parameters for the stored procedure here
		
	@LanguageID int,
	@limit int
	
	
AS
BEGIN
	
	SET NOCOUNT ON;
	

	SET ROWCOUNT @limit
	SELECT * from  Addins WHERE LanguageID = @LanguageID order by id desc

	--EXEC('SELECT TOP 10 * from  Addins Where 1 = 1 AND id IN (' + @IDs + ') order by id desc')

END

















GO
/****** Object:  StoredProcedure [dbo].[AddinsGetAllActiveAddins]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddinsGetAllActiveAddins]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[AddinsGetAllActiveAddins] AS' 
END
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.....>
-- Description:	<Get Addins by language id>
-- =============================================
ALTER PROCEDURE [dbo].[AddinsGetAllActiveAddins]


AS
BEGIN
	
	SET NOCOUNT ON;
    
	Select * from  Addins Where Active = 1;
			
END












GO
/****** Object:  StoredProcedure [dbo].[AddinUpdateAddin]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddinUpdateAddin]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[AddinUpdateAddin] AS' 
END
GO






-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <29-3-2010>
-- Description:	<Update Addin>
-- =============================================
ALTER PROCEDURE [dbo].[AddinUpdateAddin] 
	-- Add the parameters for the stored procedure here
	@ID bigint,
	@LanguageID int,
	@Title nvarchar(100),
	@ShortDesc ntext,
	@Details ntext,
	@Type nvarchar(50),
	@Priority int,
	@ViewHome bit,
	@Active bit,
	@ThisMonth bit,
	@Timestamp datetime,
	@main_picture nvarchar(200)
	

AS
BEGIN

    -- Insert statements for procedure here

	Update Addins  Set LanguageID = @LanguageID, Title = @Title, ShortDesc = @ShortDesc, Details = @Details, [Type] = @Type, 
	Priority = @Priority, ViewHome = @ViewHome, Active = @Active, ThisMonth = @ThisMonth, [Timestamp] = @Timestamp, main_picture = @main_picture
	Where ID = @ID;

END







GO
/****** Object:  StoredProcedure [dbo].[AdminDeleteUser]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AdminDeleteUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[AdminDeleteUser] AS' 
END
GO







-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <30-12-2011>
-- Description:	<Delete one employee>
-- =============================================
ALTER PROCEDURE [dbo].[AdminDeleteUser] 			
           @Id bigint 
AS
BEGIN

	--SELECT COUNT(*) FROM [CarsData] WHERE System_Who_Add = @Id
	--UNION ALL
	--SELECT COUNT(*) FROM [ClientPayments] WHERE System_Who_Add = @Id
	--UNION ALL
	--SELECT COUNT(*) FROM [CarInvoices] WHERE System_Who_Add = @Id
	--UNION ALL
	--SELECT COUNT(*) FROM [CarExpenses] WHERE WhoAdd = @Id

	--IF(@@ROWCOUNT <= 0)	
		DELETE FROM [tbl_admin_n] WHERE id = @Id
		RETURN @@ROWCOUNT;
END









GO
/****** Object:  StoredProcedure [dbo].[AdminUpdateUsers]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AdminUpdateUsers]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[AdminUpdateUsers] AS' 
END
GO






-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <24-3-2010>
-- Description:	<Check user id exist in tbl_admin_n table>
-- =============================================
ALTER PROCEDURE [dbo].[AdminUpdateUsers] 
			
           @Id bigint 
           ,@LanguageID int 
           ,@user_name nvarchar(100) 
           ,@user_password nvarchar(100) 
           ,@user_type nvarchar(50) 
           ,@user_level nvarchar(50), @Store_ID bigint 
           ,@name nvarchar(150) 
           ,@city char(10) 
           ,@address nvarchar(300) 
           ,@mobile nvarchar(50) 
           ,@phone nvarchar(50) 
           ,@fax nvarchar(50) 
           ,@email nvarchar(50)
AS
BEGIN

	UPDATE [tbl_admin_n]
	   SET [LanguageID] = @LanguageID
		  ,[user_name] = @user_name
		  ,[user_password] = @user_password
		  ,[user_type] = @user_type
		  ,[user_level] = @user_level, [Store_ID]= @Store_ID
		  ,[name] = @name
		  ,[city] = @city
		  ,[address] = @address
		  ,[mobile] = @mobile
		  ,[phone] = @phone
		  ,[fax] = @fax
		  ,[email] = @email
	 WHERE id = @Id
END








GO
/****** Object:  StoredProcedure [dbo].[AdminUsersGetUserByEmail]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AdminUsersGetUserByEmail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[AdminUsersGetUserByEmail] AS' 
END
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <28-3-2010>
-- Description:	<Check user email exist in tbl_admin_n table
--                   if exist sent his passowrd to him.>
-- =============================================
ALTER PROCEDURE [dbo].[AdminUsersGetUserByEmail] 
	-- Add the parameters for the stored procedure here
	
	@email nvarchar(50)

AS
BEGIN

    -- Insert statements for procedure here

	SELECT     a.*, 
                      Stores.StoreName
	FROM         tbl_admin_n a INNER JOIN
						  Stores ON a.Store_ID = Stores.StoreID
	WHERE     (a.email = @email);

END







GO
/****** Object:  StoredProcedure [dbo].[AdminUsersLogin]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AdminUsersLogin]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[AdminUsersLogin] AS' 
END
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <24-3-2010>
-- Description:	<Check user id exist in tbl_admin_n table>
-- =============================================
ALTER PROCEDURE [dbo].[AdminUsersLogin] 
	-- Add the parameters for the stored procedure here
	@userName nvarchar(50),
	@password nvarchar(50)

AS
BEGIN
    -- Insert statements for procedure here
	SELECT top 1 id, [name], user_type, user_level, Store_ID from tbl_admin_n where [user_name]= @userName AND user_password = @password AND user_level = 'A';

END


GO
/****** Object:  StoredProcedure [dbo].[Auctions_AddEdit]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Auctions_AddEdit]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Auctions_AddEdit] AS' 
END
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Auctions_AddEdit]
			@AuctionID int
			,@AuctionName nvarchar(100)
           ,@AuctionEmail nvarchar(100)
           ,@AuctionPhone nvarchar(100)
           ,@AuctionAddress nvarchar(500)
           ,@AuctionDesc nvarchar(2000)
           ,@Priority int
           ,@Active bit
           ,@System_Who_Add bigint
           --,@System_Add_Date datetime
           --,@System_Modify_Date datetime
           --,@System_Delete_Status bit
           --,@System_Who_Delete bigint
           --,@System_Delete_Date datetime
           ,@System_LastAction_IP nvarchar(50)
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [Auctions] WHERE (AuctionName = @AuctionName AND AuctionEmail = @AuctionEmail 
		AND AuctionPhone = @AuctionPhone AND AuctionAddress = @AuctionAddress AND AuctionDesc = @AuctionDesc) 


	IF((@@ROWCOUNT <= 0)  AND (@AuctionID <= 0))
	BEGIN

INSERT INTO [Auctions]
           ([AuctionName]
           ,[AuctionEmail]
           ,[AuctionPhone]
           ,[AuctionAddress]
           ,[AuctionDesc]
           ,[Priority]
           ,[Active]
           ,[System_Who_Add]
           ,[System_Add_Date]
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
     VALUES
           (@AuctionName 
           ,@AuctionEmail 
           ,@AuctionPhone 
           ,@AuctionAddress 
           ,@AuctionDesc 
           ,@Priority
           ,@Active 
           ,@System_Who_Add
           ,GETDATE()
           ,0 -- not deleted
           ,@System_LastAction_IP )

	END
	ELSE
	BEGIN

UPDATE [Auctions]
           SET [AuctionName] = @AuctionName
           ,[AuctionEmail] = @AuctionEmail
           ,[AuctionPhone] = @AuctionPhone
           ,[AuctionAddress] = @AuctionAddress
           ,[AuctionDesc] = @AuctionDesc
           ,[Priority] = @Priority
           ,[Active] = @Active
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP
     WHERE AuctionID = @AuctionID
	

	END


END













GO
/****** Object:  StoredProcedure [dbo].[Auctions_DeleteOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Auctions_DeleteOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Auctions_DeleteOne] AS' 
END
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Auctions_DeleteOne]
			@AuctionID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

--	Update [Auctions] SET System_Delete_Date = GETDATE(), System_Delete_Status = 1 WHERE AuctionID = @AuctionID
	
END











GO
/****** Object:  StoredProcedure [dbo].[Auctions_GetNames]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Auctions_GetNames]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Auctions_GetNames] AS' 
END
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Auctions_GetNames]
			
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT AuctionID, AuctionName FROM [Auctions]
    WHERE Active = 1 AND System_Delete_Status = 0
	
END










GO
/****** Object:  StoredProcedure [dbo].[Auctions_GetOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Auctions_GetOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Auctions_GetOne] AS' 
END
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Auctions_GetOne]
			@AuctionID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [Auctions]
    WHERE AuctionID = @AuctionID
	
END








GO
/****** Object:  StoredProcedure [dbo].[Buyers_AddEdit]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Buyers_AddEdit]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Buyers_AddEdit] AS' 
END
GO






-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Buyers_AddEdit]
			@BuyerID bigint, @Auction_ID int
			,@BuyerName nvarchar(100)
           ,@BuyerEmail nvarchar(100)
           ,@BuyerPhone nvarchar(100)
           ,@BuyerAddress nvarchar(500)
           ,@BuyerDesc nvarchar(2000)
           ,@Priority int
           ,@Active bit, @OpeningBalance money
           ,@System_Who_Add bigint
           --,@System_Add_Date datetime
           --,@System_Modify_Date datetime
           --,@System_Delete_Status bit
           --,@System_Who_Delete bigint
           --,@System_Delete_Date datetime
           ,@System_LastAction_IP nvarchar(50)
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [Buyers] WHERE (Auction_ID = @Auction_ID AND BuyerName = @BuyerName AND BuyerEmail = @BuyerEmail 
		AND BuyerPhone = @BuyerPhone AND BuyerAddress = @BuyerAddress AND BuyerDesc = @BuyerDesc);

	IF((@@ROWCOUNT <= 0)  AND (@BuyerID <= 0))
	BEGIN

	INSERT INTO [Buyers]
           ([Auction_ID], [BuyerName]
           ,[BuyerEmail]
           ,[BuyerPhone]
           ,[BuyerAddress]
           ,[BuyerDesc]
           ,[Priority]
           ,[Active], [OpeningBalance]
           ,[System_Who_Add]
           ,[System_Add_Date]
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
     VALUES
           (@Auction_ID, @BuyerName 
           ,@BuyerEmail 
           ,@BuyerPhone 
           ,@BuyerAddress 
           ,@BuyerDesc 
           ,@Priority
           ,1 , @OpeningBalance
           ,@System_Who_Add
           ,GETDATE()
           ,0 -- not deleted
           ,@System_LastAction_IP )

	END
	ELSE
	BEGIN

UPDATE [Buyers]
           SET [Auction_ID] = @Auction_ID, [BuyerName] = @BuyerName
           ,[BuyerEmail] = @BuyerEmail
           ,[BuyerPhone] = @BuyerPhone
           ,[BuyerAddress] = @BuyerAddress
           ,[BuyerDesc] = @BuyerDesc
           ,[Priority] = @Priority
           ,[Active] = 1, [OpeningBalance] = @OpeningBalance
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP
     WHERE BuyerID = @BuyerID
	

	END


END















GO
/****** Object:  StoredProcedure [dbo].[Buyers_DeleteOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Buyers_DeleteOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Buyers_DeleteOne] AS' 
END
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Buyers_DeleteOne]
			@BuyerID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

--	Update [Buyers]
--	SET System_Delete_Date = GETDATE(), System_Delete_Status = 1
--    WHERE BuyerID = @BuyerID
	
END












GO
/****** Object:  StoredProcedure [dbo].[Buyers_GetNames]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Buyers_GetNames]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Buyers_GetNames] AS' 
END
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Buyers_GetNames]
		@Auction_ID int	
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT BuyerID, BuyerName FROM [Buyers]
    WHERE Active = 1 AND System_Delete_Status = 0 
	AND Auction_ID = @Auction_ID;
	
END











GO
/****** Object:  StoredProcedure [dbo].[Buyers_GetNames2]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Buyers_GetNames2]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Buyers_GetNames2] AS' 
END
GO






-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Buyers_GetNames2]
		--@Auction_ID int	
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT BuyerID, BuyerName FROM [Buyers]
    WHERE Active = 1 AND System_Delete_Status = 0 
	--AND Auction_ID = @Auction_ID;
	
END












GO
/****** Object:  StoredProcedure [dbo].[Buyers_GetOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Buyers_GetOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Buyers_GetOne] AS' 
END
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Buyers_GetOne]
			@BuyerID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT     Buyers.*, Auctions.AuctionName
	FROM         Buyers INNER JOIN
						  Auctions ON Buyers.Auction_ID = Auctions.AuctionID
	WHERE     (Buyers.BuyerID = @BuyerID)
	
END










GO
/****** Object:  StoredProcedure [dbo].[Capacities_GetNames]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Capacities_GetNames]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Capacities_GetNames] AS' 
END
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Capacities_GetNames]
			
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT CapacityID, CapacityNameEn, CapacityNameAr FROM [Capacities]
      WHERE Active = 1 AND System_Delete_Status = 0
	
END











GO
/****** Object:  StoredProcedure [dbo].[Cars_AddEditCar]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cars_AddEditCar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Cars_AddEditCar] AS' 
END
GO






-- =============================================
-- Author:	<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Cars_AddEditCar]
			@CarID bigint
		   ,@car_code bigint
           ,@view_home bit
           ,@active bit
           ,@featured_car bit
           ,@Auction_ID int
           ,@Buyer_ID int
           ,@Marker_ID int
           ,@Model_ID bigint
           ,@WorkingStatus_ID int
           ,@TransferStatus_ID int
           ,@Year_ID int
           ,@PortShipping_ID int
           ,@ShippingCompany_ID bigint
           ,@Ship_ID bigint
           ,@State_ID int
           ,@Region_ID bigint
           ,@Workshop_ID bigint, @Store_ID bigint
           ,@chassis_no nvarchar(150)
           ,@container_no nvarchar(150), @container_code nvarchar(150), @booking_no nvarchar(100), @poly_fielding nvarchar(3000)
           ,@lot_no nvarchar(150)
           ,@engine_no nvarchar(150)
           ,@sold bit
           ,@exterior_color int
           ,@interior_color int
           ,@body_style int
           ,@car_transmission int
           ,@mileage nvarchar(100)
           ,@car_drive int
           ,@car_engine int
           ,@car_capacity int
           ,@car_options nvarchar(1500)
           ,@car_remarks nvarchar(3000)
           ,@Customs_No nvarchar(150) --
           ,@checkout_date datetime, @expected_arrive_date datetime, @dubia_arrive_date datetime, @sharjah_arrive_date datetime
           ,@arrive_date datetime
           ,@Shipping_date datetime
           ,@WorkshopEntryDate datetime
           ,@WorkshopExitDate datetime
           ,@price_currency money
           ,@real_price numeric
           ,@sale_price numeric
           ,@cost numeric
           ,@CurrencyExchange_ID int
           ,@payement_to_who nvarchar(150)
           ,@sale_to nvarchar(150)
           ,@show_sale bit
           ,@sale_date datetime
           ,@visitors bigint
           ,@main_picture nvarchar(50)
           ,@System_Who_Add bigint
           ,@System_LastAction_IP nvarchar(50),
		   @purchase_date datetime
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

	IF(((SELECT COUNT(*) FROM [CarsData] WHERE (car_code = @car_code) OR (chassis_no = @chassis_no)) <= 0)  AND (@CarID <= 0))
	BEGIN
		INSERT INTO CarsData (car_code, view_home, active, featured_car, Auction_ID, Buyer_ID, Marker_ID, Model_ID, WorkingStatus_ID, TransferStatus_ID, Year_ID, PortShipping_ID, ShippingCompany_ID, Ship_ID, State_ID, Region_ID, 
							 Workshop_ID, Store_ID, chassis_no, container_no, container_code, booking_no, poly_fielding, lot_no, engine_no, sold, exterior_color, interior_color, body_style, car_transmission, mileage, car_drive, 
							 car_engine, car_capacity, car_options, car_remarks, Customs_No, checkout_date, expected_arrive_date, dubia_arrive_date, sharjah_arrive_date, arrive_date, Shipping_date, WorkshopEntryDate, 
							 WorkshopExitDate, price_currency, real_price, sale_price, cost, CurrencyExchange_ID, payement_to_who, sale_to, show_sale, sale_date, visitors, main_picture, System_Who_Add, System_Add_Date, 
							 System_Delete_Status, System_LastAction_IP, purchase_date)
			VALUES        (@car_code,@view_home,@active,@featured_car,@Auction_ID,@Buyer_ID,@Marker_ID,@Model_ID,@WorkingStatus_ID,@TransferStatus_ID,@Year_ID,@PortShipping_ID,@ShippingCompany_ID,@Ship_ID,@State_ID,@Region_ID,@Workshop_ID,@Store_ID,@chassis_no,@container_no,@container_code,@booking_no,@poly_fielding,@lot_no,@engine_no,@sold,@exterior_color,@interior_color,@body_style,@car_transmission,@mileage,@car_drive,@car_engine,@car_capacity,@car_options,@car_remarks,@Customs_No,@checkout_date,@expected_arrive_date,@dubia_arrive_date,@sharjah_arrive_date,@arrive_date,@Shipping_date,@WorkshopEntryDate,@WorkshopExitDate,@price_currency,@real_price,@sale_price,@cost,@CurrencyExchange_ID,@payement_to_who,@sale_to,@show_sale,@sale_date,@visitors,@main_picture,@System_Who_Add,
							  GETDATE(), 0,@System_LastAction_IP, @purchase_date);
	END
	ELSE
	BEGIN
		UPDATE  CarsData
			SET                car_code = @car_code, view_home = @view_home, active = @active, featured_car = @featured_car, Auction_ID = @Auction_ID, Buyer_ID = @Buyer_ID, Marker_ID = @Marker_ID, Model_ID = @Model_ID, 
									 WorkingStatus_ID = @WorkingStatus_ID, TransferStatus_ID = @TransferStatus_ID, Year_ID = @Year_ID, PortShipping_ID = @PortShipping_ID, ShippingCompany_ID = @ShippingCompany_ID, 
									 Ship_ID = @Ship_ID, State_ID = @State_ID, Region_ID = @Region_ID, Workshop_ID = @Workshop_ID, Store_ID = @Store_ID, chassis_no = @chassis_no, container_no = @container_no, 
									 container_code = @container_code, booking_no = @booking_no, poly_fielding = @poly_fielding, lot_no = @lot_no, engine_no = @engine_no, sold = @sold, exterior_color = @exterior_color, 
									 interior_color = @interior_color, body_style = @body_style, car_transmission = @car_transmission, mileage = @mileage, car_drive = @car_drive, car_engine = @car_engine, car_capacity = @car_capacity, 
									 car_options = @car_options, car_remarks = @car_remarks, Customs_No = @Customs_No, checkout_date = @checkout_date, expected_arrive_date = @expected_arrive_date, 
									 dubia_arrive_date = @dubia_arrive_date, sharjah_arrive_date = @sharjah_arrive_date, arrive_date = @arrive_date, Shipping_date = @Shipping_date, WorkshopEntryDate = @WorkshopEntryDate, 
									 WorkshopExitDate = @WorkshopExitDate, price_currency = @price_currency, real_price = @real_price, sale_price = @sale_price, cost = @cost, CurrencyExchange_ID = @CurrencyExchange_ID, 
									 payement_to_who = @payement_to_who, sale_to = @sale_to, show_sale = @show_sale, sale_date = @sale_date, visitors = @visitors, main_picture = @main_picture, System_Who_Add = @System_Who_Add, 
									 System_Modify_Date = GETDATE(), System_Delete_Status = 0, System_LastAction_IP = @System_LastAction_IP, purchase_date=@purchase_date
			WHERE (CarID = @CarID);
	END

	--SET NOCOUNT ON;
	SELECT TOP 1 CarID FROM [CarsData] WHERE (car_code = @car_code) OR (chassis_no = @chassis_no) OR CarID = @CarID
END






















GO
/****** Object:  StoredProcedure [dbo].[Cars_DeleteCar]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cars_DeleteCar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Cars_DeleteCar] AS' 
END
GO






-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Cars_DeleteCar]
	@CarID bigint,
	@System_Who_Delete bigint, 
	@System_LastAction_IP nvarchar(50)	
AS
BEGIN	
	SET NOCOUNT ON;
	Update [CarsData] SET System_Delete_Date = GETDATE(), System_Delete_Status = 1, System_Who_Delete = @System_Who_Delete WHERE CarID = @CarID
	RETURN @@ROWCOUNT;
END













GO
/****** Object:  StoredProcedure [dbo].[Cars_GetCarChassis]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cars_GetCarChassis]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Cars_GetCarChassis] AS' 
END
GO






-- =============================================
-- Author:	<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Cars_GetCarChassis]
	@ChassisNo nvarchar(50)
AS
BEGIN
	
	SET NOCOUNT ON;
	SELECT chassis_no FROM [CarsData] Where chassis_no = @ChassisNo

END



















GO
/****** Object:  StoredProcedure [dbo].[Cars_GetCarsCustom]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cars_GetCarsCustom]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Cars_GetCarsCustom] AS' 
END
GO









-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <17-04-2010>
-- Description:	<get cars list>
-- =============================================
ALTER PROCEDURE [dbo].[Cars_GetCarsCustom]
	-- Add the parameters for the stored procedure here
	@row int,
	@totalrows int
AS
BEGIN
	
	SET NOCOUNT ON;
	SET @row = @row + 1;

	SELECT * FROM (SELECT *,row_number() over(order by CarID DESC) AS [rownum]
	FROM [View_CarInformation]) AS PeopleRecords
	WHERE rownum between ((@row - 1) * @totalrows + 1) AND (@row * @totalrows)

END


















GO
/****** Object:  StoredProcedure [dbo].[Cars_GetCarsCustomCount]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cars_GetCarsCustomCount]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Cars_GetCarsCustomCount] AS' 
END
GO









-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <17-04-2010>
-- Description:	<get cars list>
-- =============================================
ALTER PROCEDURE [dbo].[Cars_GetCarsCustomCount]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	
	SET NOCOUNT ON;
	SELECT COUNT(*) FROM (SELECT *,row_number() over(order by CarID DESC) AS [rownum]
	                            FROM [View_CarInformation] Where 1=1) AS PeopleRecords

END

















GO
/****** Object:  StoredProcedure [dbo].[Cars_getNewCarCode]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cars_getNewCarCode]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Cars_getNewCarCode] AS' 
END
GO






-- =============================================
-- Author:	<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Cars_getNewCarCode]
				
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT (MAX(ISNULL(car_code, 0)) + 1) AS NEWCODE FROM [CarsData] 

END



















GO
/****** Object:  StoredProcedure [dbo].[Cars_GetOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cars_GetOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Cars_GetOne] AS' 
END
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Cars_GetOne]
	@CarID int	
AS
BEGIN
	
	SET NOCOUNT ON;

		SELECT        AuctionName, BuyerName, MarkerNameEn, MarkerNameAr, TypeNameEn, TypeNameAr, StatusEn, StatusAr, ColorNameEn, ColorNameAr, ExtColorEn, ExtColorAr, CapacityNameEn, CapacityNameAr, 
							 WorkingStatusNameEn, WorkingStatusNameAr, PortShipEn, PortShipAr, DriveNameEn, DriveNameAr, EngineNameEn, EngineNameAr, ShipCompanyName, ShipEn, ShipAr, CarStyleNameEn, CarStyleNameAr, 
							 RegionEn, RegionAr, StateEn, StateAr, WorkshopName, YearNameEn, TransmissionNameEn, TransmissionNameAr, CarID, car_code, view_home, active, featured_car, Auction_ID, Buyer_ID, Marker_ID, Model_ID,
							  WorkingStatus_ID, TransferStatus_ID, Year_ID, PortShipping_ID, TowingCompsny_ID, ShippingCompany_ID, Ship_ID, State_ID, Region_ID, Workshop_ID, chassis_no, container_no, container_code, booking_no, 
							 poly_fielding, lot_no, engine_no, sold, exterior_color, interior_color, body_style, car_transmission, mileage, car_drive, car_engine, car_capacity, car_options, car_remarks, Customs_No, purchase_date, 
							 checkout_date, Shipping_date, expected_arrive_date, dubia_arrive_date, sharjah_arrive_date, arrive_date, WorkshopEntryDate, WorkshopExitDate, price_currency, real_price, sale_price, cost, 
							 CurrencyExchange_ID, payement_to_who, sale_to, show_sale, sale_date, visitors, main_picture, Timestamp, System_Who_Add, System_Add_Date, System_Modify_Date, System_Delete_Status, 
							 System_Who_Delete, System_Delete_Date, System_LastAction_IP, TowingCompanyName, Transport_ID, Clearance_ID, Store_ID, StoreName, Client_ID, ClientName, SalePrice
		FROM            View_CarInformation
		WHERE        (CarID = @CarID)
	

END













GO
/****** Object:  StoredProcedure [dbo].[CarsMaker_GetNames]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CarsMaker_GetNames]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[CarsMaker_GetNames] AS' 
END
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[CarsMaker_GetNames]
			
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT MarkerID, MarkerNameEn, MarkerNameAr FROM [CarsMarker]
    WHERE Active = 1 AND System_Delete_Status = 0
	
END












GO
/****** Object:  StoredProcedure [dbo].[CarsMarker_AddEdit]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CarsMarker_AddEdit]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[CarsMarker_AddEdit] AS' 
END
GO







-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[CarsMarker_AddEdit]
		   	@MarkerID int
		   ,@MarkerNameEn nvarchar(100)
           ,@MarkerNameAr nvarchar(100)
           ,@Priority int
           ,@Active bit
           ,@System_Who_Add bigint
           ,@System_LastAction_IP nvarchar(50)
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * FROM [CarsMarker] WHERE ([MarkerNameEn] = @MarkerNameEn);

	IF((@@ROWCOUNT <= 0) AND (@MarkerID <= 0))
	BEGIN

	INSERT INTO [CarsMarker]
           ([MarkerNameEn]
           ,[MarkerNameAr]
           ,[Priority]
           ,[Active]
           ,[System_Who_Add]
           ,[System_Add_Date]
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
     VALUES
           (@MarkerNameEn
           ,@MarkerNameAr
           ,@Priority  
           ,@Active 
           ,@System_Who_Add 
           ,GETDATE()
           ,0
           ,@System_LastAction_IP)

	END
	ELSE
	BEGIN

	UPDATE [CarsMarker]
    SET [MarkerNameEn] = @MarkerNameEn
           ,[MarkerNameAr] = @MarkerNameAr
           ,[Priority] = @Priority
           ,[Active] = @Active
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP
     WHERE MarkerID = @MarkerID
	

	END


END

















GO
/****** Object:  StoredProcedure [dbo].[CarsMarker_DeleteOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CarsMarker_DeleteOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[CarsMarker_DeleteOne] AS' 
END
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[CarsMarker_DeleteOne]
	@MarkerID int,
	@System_LastAction_IP nvarchar(50)
	
AS
BEGIN
	
	SET NOCOUNT ON;

--	Update [CarsMarker] 
--	SET [System_Delete_Status] = 1, [System_LastAction_IP] = @System_LastAction_IP
--	WHERE (@MarkerID = @MarkerID);
	

END












GO
/****** Object:  StoredProcedure [dbo].[CarsMarker_GetOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CarsMarker_GetOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[CarsMarker_GetOne] AS' 
END
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[CarsMarker_GetOne]
		   	@MarkerID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [CarsMarker] WHERE (MarkerID = @MarkerID);
	

END












GO
/****** Object:  StoredProcedure [dbo].[CarStyles_GetNames]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CarStyles_GetNames]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[CarStyles_GetNames] AS' 
END
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[CarStyles_GetNames]
			
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT CarStyleID, CarStyleNameEn, CarStyleNameAr 
	FROM   Styles
	WHERE Active = 1 AND System_Delete_Status = 0

END











GO
/****** Object:  StoredProcedure [dbo].[CarTransferStatus_GetNames]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CarTransferStatus_GetNames]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[CarTransferStatus_GetNames] AS' 
END
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[CarTransferStatus_GetNames]
			
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT StatusID, StatusEn, StatusAr 
	FROM   CarsStatus
	WHERE Active = 1 AND System_Delete_Status = 0

END











GO
/****** Object:  StoredProcedure [dbo].[CarWorkingStatus_GetNames]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CarWorkingStatus_GetNames]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[CarWorkingStatus_GetNames] AS' 
END
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[CarWorkingStatus_GetNames]
				
AS
BEGIN	
	SET NOCOUNT ON;
	SELECT WorkingStatusID, WorkingStatusNameEn, WorkingStatusNameAr 
	FROM   WorkingStatus
	WHERE Active = 1 AND System_Delete_Status = 0

END











GO
/****** Object:  StoredProcedure [dbo].[ClearanceCompanies_AddEdit]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClearanceCompanies_AddEdit]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ClearanceCompanies_AddEdit] AS' 
END
GO









-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[ClearanceCompanies_AddEdit]
			@ClearanceID bigint
			,@ClearanceName nvarchar(100)
           ,@ClearanceEmail nvarchar(100)
           ,@ClearancePhone nvarchar(100)
           ,@ClearanceAddress nvarchar(500)
           ,@ClearanceDesc nvarchar(2000)
           ,@Priority int
           ,@Active bit, @OpeningBalance money
           ,@System_Who_Add bigint
           --,@System_Add_Date datetime
           --,@System_Modify_Date datetime
           --,@System_Delete_Status bit
           --,@System_Who_Delete bigint
           --,@System_Delete_Date datetime
           ,@System_LastAction_IP nvarchar(50)
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [ClearanceCompanies] WHERE (ClearanceName = @ClearanceName);

	IF((@@ROWCOUNT <= 0)  AND (@ClearanceID <= 0))
	BEGIN

INSERT INTO [ClearanceCompanies]
           ([ClearanceName]
           ,[ClearanceEmail]
           ,[ClearancePhone]
           ,[ClearanceAddress]
           ,[ClearanceDesc]
           ,[Priority]
           ,[Active], [OpeningBalance]
           ,[System_Who_Add]
           ,[System_Add_Date]
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
     VALUES
           ( @ClearanceName 
           ,@ClearanceEmail 
           ,@ClearancePhone 
           ,@ClearanceAddress 
           ,@ClearanceDesc 
           ,@Priority
           ,1, @OpeningBalance 
           ,@System_Who_Add
           ,GETDATE()
           ,0 -- not deleted
           ,@System_LastAction_IP )

	END
	ELSE
	BEGIN

	UPDATE [ClearanceCompanies]
           SET [ClearanceName] = @ClearanceName
           ,[ClearanceEmail] = @ClearanceEmail
           ,[ClearancePhone] = @ClearancePhone
           ,[ClearanceAddress] = @ClearanceAddress
           ,[ClearanceDesc] = @ClearanceDesc
           ,[Priority] = @Priority
           ,[Active] = 1, [OpeningBalance] = @OpeningBalance
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP
     WHERE ClearanceID = @ClearanceID
	

	END


END


















GO
/****** Object:  StoredProcedure [dbo].[ClearanceCompanies_DeleteOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClearanceCompanies_DeleteOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ClearanceCompanies_DeleteOne] AS' 
END
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[ClearanceCompanies_DeleteOne]
			@ClearanceID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

--	UPDATE [ClearanceCompanies]
--	SET System_Delete_Date = GETDATE(), System_Delete_Status = 1
--    WHERE ClearanceID = @ClearanceID
	
END













GO
/****** Object:  StoredProcedure [dbo].[ClearanceCompanies_GetNames]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClearanceCompanies_GetNames]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ClearanceCompanies_GetNames] AS' 
END
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[ClearanceCompanies_GetNames]
			
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT ClearanceID, ClearanceName FROM [ClearanceCompanies]
    WHERE Active = 1 AND System_Delete_Status = 0
	
END












GO
/****** Object:  StoredProcedure [dbo].[ClearanceCompanies_GetOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClearanceCompanies_GetOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ClearanceCompanies_GetOne] AS' 
END
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[ClearanceCompanies_GetOne]
			@ClearanceID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [ClearanceCompanies]
    WHERE ClearanceID = @ClearanceID
	
END









GO
/****** Object:  StoredProcedure [dbo].[ClientPayments_AddEdit]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientPayments_AddEdit]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ClientPayments_AddEdit] AS' 
END
GO














-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[ClientPayments_AddEdit]
			@PaymentID bigint
		   ,@Invoice_ID bigint
           ,@Client_ID bigint
           ,@ExchangeCompany_ID bigint
           ,@Currency_ID int
           ,@PaymentValue money
           ,@PaymentDate datetime
           ,@ReceiverName nvarchar(100)
           ,@Notes nvarchar(2000)
           ,@Store_ID bigint
           ,@Other nvarchar(50)
			,@System_Who_Add bigint
           ,@System_LastAction_IP nvarchar(50)
AS
BEGIN
	
	SET NOCOUNT ON;
	
	SELECT * FROM [ClientPayments] WHERE ([PaymentDate] = @PaymentDate AND [ReceiverName] = @ReceiverName AND [Client_ID] = @Client_ID AND Invoice_ID = @Invoice_ID AND [Currency_ID] = @Currency_ID AND [PaymentValue] = @PaymentValue)

	IF (@PaymentID <= 0 AND @@ROWCOUNT <= 0)
	BEGIN

	INSERT INTO [ClientPayments]
           ([Invoice_ID]
           ,[Client_ID]
           ,[ExchangeCompany_ID]
           ,[Currency_ID]
           ,[PaymentValue]
           ,[PaymentDate]
           ,[ReceiverName]
           ,[Notes]
           ,[Active]
           ,[Other], [RegisterDate]
           ,[System_Who_Add]
           ,[System_Add_Date]
           ,[System_Delete_Status]
           ,[System_LastAction_IP],Store_ID)
     VALUES
           (@Invoice_ID
           ,@Client_ID
           ,@ExchangeCompany_ID
           ,@Currency_ID
           ,@PaymentValue
           ,@PaymentDate
           ,@ReceiverName
           ,@Notes
           ,1
           ,@Other, GETDATE()
           ,@System_Who_Add
           ,GETDATE()
           ,0 -- not deleted
           ,@System_LastAction_IP,@Store_ID)

	END
	ELSE
	BEGIN

	UPDATE [ClientPayments]
           SET [Invoice_ID] = @Invoice_ID
           ,[Client_ID] = @Client_ID
           ,[ExchangeCompany_ID] = @ExchangeCompany_ID
           ,[Currency_ID] = @Currency_ID
           ,[PaymentValue] = @PaymentValue
           ,[PaymentDate] = @PaymentDate
           ,[ReceiverName] = @ReceiverName
           ,[Notes] = @Notes, Active = 1
           ,[Other] = @Other--, [RegisterDate] = @RegisterDate
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP, Store_ID=@Store_ID
     WHERE PaymentID = @PaymentID

	END

END























GO
/****** Object:  StoredProcedure [dbo].[ClientPayments_GetOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientPayments_GetOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ClientPayments_GetOne] AS' 
END
GO












-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[ClientPayments_GetOne]
			@PaymentID bigint
AS
BEGIN
	
	SET NOCOUNT ON;
	
	SELECT * FROM [View_ClientPayments] WHERE ([PaymentID] = @PaymentID)

END





















GO
/****** Object:  StoredProcedure [dbo].[ClientPayments_InvoicesToReset]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientPayments_InvoicesToReset]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ClientPayments_InvoicesToReset] AS' 
END
GO


-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[ClientPayments_InvoicesToReset]
			@Client_ID bigint
AS
BEGIN
	
	SET NOCOUNT ON;
	--
	SELECT InvoiceID, main_picture,
	( MarkerNameEn + ' - ' + TypeNameEn + ', Value: ' + CONVERT(NVARCHAR(20), SalePrice) + ' AED, Rest: ' + CONVERT(NVARCHAR(20), (ISNULL(SalePrice, 0) - (ISNULL(FirstAmount, 0) + ISNULL(TotalPaymentsForThis, 0) + ISNULL(TotalSubPaymentsForThis, 0)))) + ' AED, Date: ' + CONVERT(NVARCHAR(20), InvoiceDate, 103)) AS InvoiceVal 
	FROM View_CarSalesInvoices WHERE ((ISNULL(SalePrice, 0) - (ISNULL(FirstAmount, 0) + ISNULL(TotalPaymentsForThis, 0) + ISNULL(TotalSubPaymentsForThis, 0)) > 0) AND [Client_ID] = @Client_ID AND Active = 1)

END


























GO
/****** Object:  StoredProcedure [dbo].[ClientPayments_ReceiptsToReset]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientPayments_ReceiptsToReset]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ClientPayments_ReceiptsToReset] AS' 
END
GO
















-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[ClientPayments_ReceiptsToReset]
			@Client_ID bigint
AS
BEGIN
	
	SET NOCOUNT ON;
	
	SELECT PaymentID, 
	('Value: ' + CONVERT(VARCHAR(10), PaymentValue) + ' AED, Rest: ' + CONVERT(VARCHAR(10), (ISNULL(PaymentValue,0) - ISNULL(CloseOut,0))) + ' AED, Date: ' + CONVERT(VARCHAR(10), PaymentDate, 103)) AS PaymentVal 
	FROM [View_ClientPayments] WHERE (Invoice_ID IS NULL AND (ISNULL(PaymentValue, 0) - ISNULL(CloseOut,0) > 0) AND [Client_ID] = @Client_ID AND Active = 1)

END

























GO
/****** Object:  StoredProcedure [dbo].[ClientPayments_ToggleOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientPayments_ToggleOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ClientPayments_ToggleOne] AS' 
END
GO















-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<Active/DisActive payment and its childs>
-- =============================================
ALTER PROCEDURE [dbo].[ClientPayments_ToggleOne]
			@PaymentID bigint,
			@Toggle bit
AS
BEGIN
	
	SET NOCOUNT ON;
	
	--DECLARE @SubPayments int
	IF(@Toggle = 0)
	BEGIN

	DECLARE @subPaymentsValues money, @closeOutVal money;
	SET @subPaymentsValues = (SELECT SUM(ClientInvoicesPaymentsValue) AS EXP1 FROM ClientInvoicesPayments WHERE Active = 1 AND [ClientPayments_ID] = @PaymentID)
	SET @closeOutVal = (SELECT TOP 1 CloseOut FROM ClientPayments WHERE PaymentID = @PaymentID)

	UPdate ClientPayments SET CloseOut = (ISNULL(@closeOutVal, 0) - ISNULL(@subPaymentsValues, 0)), Active = @Toggle WHERE ([PaymentID] = @PaymentID)	
	UPDATE ClientInvoicesPayments SET  Active = @Toggle WHERE ([ClientPayments_ID] = @PaymentID)
	
	-- Select Sum(payments) from ClientInvoicesPayments for this paymentID
	-- Update CloseOut = CloseOut - Sum(payments) in ClientPayments for this paymentID

	END

END
























GO
/****** Object:  StoredProcedure [dbo].[Clients_AddEdit]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients_AddEdit]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Clients_AddEdit] AS' 
END
GO










-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Clients_AddEdit]
			@ClientID bigint
			,@ClientName nvarchar(100)
           ,@ClientEmail nvarchar(100)
           ,@ClientUsername nvarchar(100)
           ,@ClientPassword nvarchar(100)
           ,@ClientPhone nvarchar(100), @ClientFax nvarchar(100)
           ,@ClientAddress nvarchar(500)
           ,@ClientDesc nvarchar(2000)
           ,@Priority int
           ,@Active bit, @SMSActive bit, @OpeningBalance money
           ,@System_Who_Add bigint
           ,@System_LastAction_IP nvarchar(50)
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [Clients] WHERE (ClientName = @ClientName);

	IF((@@ROWCOUNT <= 0)  AND (@ClientID <= 0))
	BEGIN

INSERT INTO [Clients]
           ([ClientName]
           ,[ClientEmail]
           ,[ClientUsername]
           ,[ClientPassword]
           ,[ClientPhone], [ClientFax]
           ,[ClientAddress]
           ,[ClientDesc]
           ,[Priority]
           ,[Active], [SMSActive], [OpeningBalance]
           ,[System_Who_Add]
           ,[System_Add_Date]
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
     VALUES
           ( @ClientName 
           ,@ClientEmail 
           ,@ClientUsername 
           ,@ClientPassword 
           ,@ClientPhone, @ClientFax 
           ,@ClientAddress 
           ,@ClientDesc 
           ,@Priority
           ,1, 1, @OpeningBalance 
           ,@System_Who_Add
           ,GETDATE()
           ,0 -- not deleted
           ,@System_LastAction_IP )

	END
	ELSE
	BEGIN

UPDATE [Clients]
           SET [ClientName] = @ClientName
           ,[ClientEmail] = @ClientEmail
           ,[ClientUsername] = @ClientUsername
           ,[ClientPassword] = @ClientPassword
           ,[ClientPhone] = @ClientPhone, [ClientFax] = @ClientFax
           ,[ClientAddress] = @ClientAddress
           ,[ClientDesc] = @ClientDesc
           ,[Priority] = @Priority
           ,[Active] = 1, [SMSActive] = @SMSActive, [OpeningBalance] = @OpeningBalance
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP
     WHERE ClientID = @ClientID
	

	END


END



















GO
/****** Object:  StoredProcedure [dbo].[Clients_DeleteOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients_DeleteOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Clients_DeleteOne] AS' 
END
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Clients_DeleteOne]
			@ClientID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

--	UPDATE [Clients]
--	SET System_Delete_Date = GETDATE(), System_Delete_Status = 1
--    WHERE ClientID = @ClientID
	
END













GO
/****** Object:  StoredProcedure [dbo].[Clients_GetNames]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients_GetNames]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Clients_GetNames] AS' 
END
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Clients_GetNames]
			
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT ClientID, ClientName FROM [Clients]
    WHERE Active = 1 AND System_Delete_Status = 0
	
END












GO
/****** Object:  StoredProcedure [dbo].[Clients_GetOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients_GetOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Clients_GetOne] AS' 
END
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Clients_GetOne]
			@ClientID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [Clients]
    WHERE ClientID = @ClientID
	
END









GO
/****** Object:  StoredProcedure [dbo].[ClientSubPayments_AddEdit]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientSubPayments_AddEdit]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ClientSubPayments_AddEdit] AS' 
END
GO








-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[ClientSubPayments_AddEdit]
			@ClientInvoicesPaymentsID bigint
		   ,@ClientPayments_ID bigint
           ,@CarInvoice_ID bigint
           ,@ClientInvoicesPaymentsValue money
--           ,@Active bit
           ,@RegisterDate datetime
           ,@Notes nvarchar(1000)
			,@System_Who_Add bigint
           ,@System_LastAction_IP nvarchar(50)
AS
BEGIN
	
	SET NOCOUNT ON;
	
------------------------------------------------ ------------------------------------------------
-- Check entered value <= ReceiptValue and <= InvoiceValueRequired.
DECLARE @ReceiptVal decimal, @InvoiceRequiredVal decimal, @DataExisitBefore int;
SET @ReceiptVal = (SELECT TOP 1 (ISNULL(PaymentValue, 0) - ISNULL(CloseOut, 0)) As Exp1 FROM ClientPayments WHERE PaymentID = @ClientPayments_ID);
SET @InvoiceRequiredVal = (SELECT TOP 1 (SalePrice - (ISNULL(FirstAmount, 0) + ISNULL(TotalSubPaymentsForThis, 0) + ISNULL(TotalPaymentsForThis, 0))) As Exp2 FROM View_CarSalesInvoices WHERE InvoiceID = @CarInvoice_ID);
------------------------------------------------ ------------------------------------------------
-- Check data exist before to avoid dublication.
SELECT @DataExisitBefore = COUNT(*) FROM [ClientInvoicesPayments] WHERE ([RegisterDate] = @RegisterDate 
					AND [ClientPayments_ID] = @ClientPayments_ID AND CarInvoice_ID = @CarInvoice_ID 
					AND [ClientInvoicesPaymentsValue] = @ClientInvoicesPaymentsValue);
------------------------------------------------ ------------------------------------------------

IF(@ClientInvoicesPaymentsValue <= @ReceiptVal AND @ClientInvoicesPaymentsValue <= @InvoiceRequiredVal)
BEGIN

	IF (@ClientInvoicesPaymentsID <= 0 AND @DataExisitBefore <= 0)
	BEGIN

	INSERT INTO [ClientInvoicesPayments]
           ([CarInvoice_ID]
           ,[ClientPayments_ID]
           ,[ClientInvoicesPaymentsValue]
           ,[RegisterDate]
           ,[Notes]
           ,[Active]
           ,[System_Who_Add]
           ,[System_Add_Date]
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
           
     VALUES
           (@CarInvoice_ID
           ,@ClientPayments_ID
           ,@ClientInvoicesPaymentsValue
           ,@RegisterDate
           ,@Notes
           ,1
           ,@System_Who_Add
           ,GETDATE()
           ,0 -- not deleted
           ,@System_LastAction_IP)

	END
	ELSE
	BEGIN

	UPDATE [ClientInvoicesPayments]
           SET [CarInvoice_ID] = @CarInvoice_ID
           ,[ClientPayments_ID] = @ClientPayments_ID
           ,[ClientInvoicesPaymentsValue] = @ClientInvoicesPaymentsValue
           ,[RegisterDate] = @RegisterDate
           ,[Notes] = @Notes
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP
     WHERE ClientInvoicesPaymentsID = @ClientInvoicesPaymentsID

	END

Update ClientPayments
	SET CloseOut = ((Select TOP 1 ISNULL(CloseOut, 0) FROM ClientPayments  WHERE PaymentID = @ClientPayments_ID) + ISNULL(@ClientInvoicesPaymentsValue, 0))
	Where PaymentID = @ClientPayments_ID

END -- End parent if.

--SET NOCOUNT ON;
SELECT (@InvoiceRequiredVal - @ClientInvoicesPaymentsValue) AS DifferInvoices, (@ReceiptVal - @ClientInvoicesPaymentsValue) AS DifferReceipt;


END -- END sp.





























GO
/****** Object:  StoredProcedure [dbo].[ClientSubPayments_GetOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientSubPayments_GetOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ClientSubPayments_GetOne] AS' 
END
GO













-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[ClientSubPayments_GetOne]
			@ClientInvoicesPaymentsID bigint
AS
BEGIN
	
	SET NOCOUNT ON;
	
	SELECT * FROM [View_InvoicesSubPayments] WHERE ([ClientInvoicesPaymentsID] = @ClientInvoicesPaymentsID)

END























GO
/****** Object:  StoredProcedure [dbo].[ClientSubPayments_ToggleOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientSubPayments_ToggleOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ClientSubPayments_ToggleOne] AS' 
END
GO



ALTER PROCEDURE [dbo].[ClientSubPayments_ToggleOne]
			@ClientInvoicesPaymentsID bigint,
			@Toggle bit
AS
BEGIN
	
	SET NOCOUNT ON;
	
	IF(@Toggle = 0)
	BEGIN

	DECLARE @paymentID bigint, @currentSubPaymentVal money, @closeOutVal money;
	SET @paymentID = (SELECT TOP 1 ClientPayments_ID FROM ClientInvoicesPayments WHERE ClientInvoicesPaymentsID = @ClientInvoicesPaymentsID);
	SET @currentSubPaymentVal = (SELECT TOP 1 ClientInvoicesPaymentsValue FROM ClientInvoicesPayments WHERE ClientInvoicesPaymentsID = @ClientInvoicesPaymentsID);
	SET @closeOutVal = (SELECT TOP 1 CloseOut FROM ClientPayments WHERE PaymentID = @paymentID);
	
	UPDATE ClientInvoicesPayments SET Active = 0 WHERE ([ClientInvoicesPaymentsID] = @ClientInvoicesPaymentsID);

	IF((ISNULL(@closeOutVal, 0) - ISNULL(@currentSubPaymentVal, 0)) >= 0)
		UPdate ClientPayments SET CloseOut = (ISNULL(@closeOutVal, 0) - ISNULL(@currentSubPaymentVal, 0)) WHERE ([PaymentID] = @paymentID);

	-- Select Sum(payments) from ClientInvoicesPayments for this ClientInvoicesPaymentsID
	-- Update CloseOut = CloseOut - Sum(payments) in ClientSubPayments for this ClientInvoicesPaymentsID

	END
END




GO
/****** Object:  StoredProcedure [dbo].[Colors_GetNames]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Colors_GetNames]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Colors_GetNames] AS' 
END
GO






-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Colors_GetNames]
				
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT ColorID, ColorNameEn, ColorNameAr 
	FROM   Colors
	WHERE Active = 1 AND System_Delete_Status = 0

END












GO
/****** Object:  StoredProcedure [dbo].[Currencies_DeleteCurrency]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Currencies_DeleteCurrency]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Currencies_DeleteCurrency] AS' 
END
GO





-- =============================================
-- Author:		<@2011 Minutesuae Web Designers>
-- ALTER date: <11/05/2011>
-- Description:	<........>
-- =============================================
ALTER PROCEDURE [dbo].[Currencies_DeleteCurrency] 
			@CurrencyID int

AS
BEGIN
	
   DELETE FROM  [Currencies] WHERE CurrencyID = @CurrencyID
	
END













GO
/****** Object:  StoredProcedure [dbo].[Currencies_GetCurrency]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Currencies_GetCurrency]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Currencies_GetCurrency] AS' 
END
GO



-- =============================================
-- Author:		<@2011 Minutesuae Web Designers>
-- ALTER date: <11/05/2011>
-- Description:	<........>
-- =============================================
ALTER PROCEDURE [dbo].[Currencies_GetCurrency] 
			@CurrencyID int

AS
BEGIN
	
   SELECT * FROM  [Currencies]   
	WHERE CurrencyID = @CurrencyID
	
END











GO
/****** Object:  StoredProcedure [dbo].[Currencies_GetNames]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Currencies_GetNames]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Currencies_GetNames] AS' 
END
GO






-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Currencies_GetNames]
				
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT [CurrencyID]
      ,[CurrencyName]
      ,[CurrencySymbol]
      ,[ExchangeRate]
	  FROM [Currencies]
	  Where [Active] = 1 AND [System_Delete_Status] = 0

END












GO
/****** Object:  StoredProcedure [dbo].[Currencies_SaveCurrency]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Currencies_SaveCurrency]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Currencies_SaveCurrency] AS' 
END
GO










-- =============================================
-- Author:		<@2011 Minutesuae Web Designers>
-- ALTER date: <11/05/2011>
-- Description:	<........>
-- =============================================
ALTER PROCEDURE [dbo].[Currencies_SaveCurrency] 
			@CurrencyID int
		   ,@CurrencyName nvarchar(50)
           ,@CurrencySymbol nvarchar(20)
           ,@ExchangeRate money
--           ,@Priority int
--           ,@Active bit
           ,@System_Who_Add bigint
--           ,@System_Add_Date datetime
--           ,@System_Modify_Date datetime
--           ,@System_Delete_Status bit
--           ,@System_Who_Delete bigint
--           ,@System_Delete_Date datetime
           ,@System_LastAction_IP nvarchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.		
	
	IF( @CurrencyID > 0)  
	BEGIN

   UPDATE [Currencies]
   SET [CurrencyName] = @CurrencyName
      ,[CurrencySymbol] = @CurrencySymbol
      ,[ExchangeRate] = @ExchangeRate
      ,[Priority] = 1
      ,[Active] = 1
--      ,[System_Who_Add] = @System_Who_Add
--      ,[System_Add_Date] = @System_Add_Date
      ,[System_Modify_Date] = GETDATE()
      ,[System_Delete_Status] = 0
--      ,[System_Who_Delete] = @System_Who_Delete
--      ,[System_Delete_Date] = @System_Delete_Date
      ,[System_LastAction_IP] = @System_LastAction_IP
	WHERE CurrencyID = @CurrencyID
	
	END		
	ELSE
	BEGIN	
		INSERT INTO [Currencies]
           ([CurrencyName]
           ,[CurrencySymbol]
           ,[ExchangeRate]
           ,[Priority]
           ,[Active]
           ,[System_Who_Add]
           ,[System_Add_Date]
--           ,[System_Modify_Date]
           ,[System_Delete_Status]
--           ,[System_Who_Delete]
--           ,[System_Delete_Date]
           ,[System_LastAction_IP])
     VALUES
           (@CurrencyName
           ,@CurrencySymbol
           ,@ExchangeRate
           ,1
           ,1
           ,@System_Who_Add 
           ,GETDATE()
           --,@System_Modify_Date 
           ,0
--           ,@System_Who_Delete 
--           ,@System_Delete_Date
           ,@System_LastAction_IP)
	END
END










GO
/****** Object:  StoredProcedure [dbo].[Drives_GetNames]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Drives_GetNames]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Drives_GetNames] AS' 
END
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Drives_GetNames]
			
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT DriveID, DriveNameEn, DriveNameAr 
	FROM   Drives
	WHERE Active = 1 AND System_Delete_Status = 0

END











GO
/****** Object:  StoredProcedure [dbo].[Engines_GetNames]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Engines_GetNames]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Engines_GetNames] AS' 
END
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Engines_GetNames]
			
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT EngineID, EngineNameEn, EngineNameAr 
	FROM   Engines
	WHERE Active = 1 AND System_Delete_Status = 0

END











GO
/****** Object:  StoredProcedure [dbo].[ExchangeCompanies_AddEdit]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExchangeCompanies_AddEdit]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ExchangeCompanies_AddEdit] AS' 
END
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[ExchangeCompanies_AddEdit]
			@ExchangeCompanyID bigint
			,@ExchangeCompanyName nvarchar(100)
           ,@ExchangeCompanyEmail nvarchar(100)
           ,@ExchangeCompanyPhone nvarchar(100)
           ,@ExchangeCompanyAddress nvarchar(500)
           ,@ExchangeCompanyDesc nvarchar(2000)
           ,@Priority int
           ,@Active bit
           ,@System_Who_Add bigint
           --,@System_Add_Date datetime
           --,@System_Modify_Date datetime
           --,@System_Delete_Status bit
           --,@System_Who_Delete bigint
           --,@System_Delete_Date datetime
           ,@System_LastAction_IP nvarchar(50)
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [ExchangeCompanies] WHERE (ExchangeCompanyName = @ExchangeCompanyName);
-- AND ExchangeCompanyEmail = @ExchangeCompanyEmail 
--		AND ExchangeCompanyPhone = @ExchangeCompanyPhone AND ExchangeCompanyAddress = @ExchangeCompanyAddress AND ExchangeCompanyDesc = @ExchangeCompanyDesc);

	IF((@@ROWCOUNT <= 0)  AND (@ExchangeCompanyID <= 0))
	BEGIN

INSERT INTO [ExchangeCompanies]
           ([ExchangeCompanyName]
           ,[ExchangeCompanyEmail]
           ,[ExchangeCompanyPhone]
           ,[ExchangeCompanyAddress]
           ,[ExchangeCompanyDesc]
           ,[Priority]
           ,[Active]
           ,[System_Who_Add]
           ,[System_Add_Date]
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
     VALUES
           ( @ExchangeCompanyName 
           ,@ExchangeCompanyEmail 
           ,@ExchangeCompanyPhone 
           ,@ExchangeCompanyAddress 
           ,@ExchangeCompanyDesc 
           ,@Priority
           ,@Active 
           ,@System_Who_Add
           ,GETDATE()
           ,0 -- not deleted
           ,@System_LastAction_IP )

	END
	ELSE
	BEGIN

UPDATE [ExchangeCompanies]
           SET [ExchangeCompanyName] = @ExchangeCompanyName
           ,[ExchangeCompanyEmail] = @ExchangeCompanyEmail
           ,[ExchangeCompanyPhone] = @ExchangeCompanyPhone
           ,[ExchangeCompanyAddress] = @ExchangeCompanyAddress
           ,[ExchangeCompanyDesc] = @ExchangeCompanyDesc
           ,[Priority] = @Priority
           ,[Active] = @Active
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP
     WHERE ExchangeCompanyID = @ExchangeCompanyID
	

	END


END



















GO
/****** Object:  StoredProcedure [dbo].[ExchangeCompanies_DeleteOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExchangeCompanies_DeleteOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ExchangeCompanies_DeleteOne] AS' 
END
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[ExchangeCompanies_DeleteOne]
			@ExchangeCompanyID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

--	UPDATE [ExchangeCompanies]
--	SET System_Delete_Date = GETDATE(), System_Delete_Status = 1
--    WHERE ExchangeCompanyID = @ExchangeCompanyID
	
END














GO
/****** Object:  StoredProcedure [dbo].[ExchangeCompanies_GetNames]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExchangeCompanies_GetNames]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ExchangeCompanies_GetNames] AS' 
END
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[ExchangeCompanies_GetNames]
			
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT ExchangeCompanyID, ExchangeCompanyName FROM [ExchangeCompanies]
    WHERE Active = 1 AND System_Delete_Status = 0
	
END













GO
/****** Object:  StoredProcedure [dbo].[ExchangeCompanies_GetOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExchangeCompanies_GetOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ExchangeCompanies_GetOne] AS' 
END
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[ExchangeCompanies_GetOne]
			@ExchangeCompanyID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [ExchangeCompanies]
    WHERE ExchangeCompanyID = @ExchangeCompanyID
	
END









GO
/****** Object:  StoredProcedure [dbo].[Expenses_AddEdit]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expenses_AddEdit]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Expenses_AddEdit] AS' 
END
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Expenses_AddEdit]
			@ExpenseID bigint
		   ,@Car_ID bigint
           ,@Currency_ID int, @ExpenseType_ID int
           ,@CompanyType nvarchar(50)
           ,@Company_ID bigint, @ExchangeCompany_ID bigint -- Shipping/Towing/Buyer/Exchange
           ,@InvoiceCode nvarchar(150)
           ,@DueDate datetime
           ,@PaymentDate datetime
           ,@Notes nvarchar(3000)
           ,@ExpenseValue money, @PaymentValue money, @InOutType nvarchar(20) -- [in][out]
--           ,@Active bit
--           ,@AddDate datetime
           ,@Store_ID bigint
           ,@WhoAdd bigint
           ,@AddIP nvarchar(50)
--           ,@EditDate datetime
           ,@WhoEdit bigint
           ,@EditIP nvarchar(50)
--           ,@Deleted bit
--           ,@DeleteDate datetime
--           ,@WhoDelete bigint
--           ,@DeleteIP nvarchar(50)
	
	
AS
BEGIN
	
	--------------------------------------------------------------------
	-- Set Current exchange rate for this expense.
	DECLARE @PaymentValue1 money;
	SET @PaymentValue1 = (SELECT TOP 1 ExchangeRate FROM Currencies WHERE CURRENCYID = @Currency_ID);
	SET @PaymentValue = ISNULL(CAST(@PaymentValue1  AS money), 1.00);
	--------------------------------------------------------------------

	SET NOCOUNT ON;

--	SELECT COUNT(*) FROM [CarExpenses] WHERE ([Company_ID] = @Company_ID AND [InvoiceCode] = @InvoiceCode 
--		AND [CompanyType] = @CompanyType);


	IF(((SELECT COUNT(*) FROM [CarExpenses] WHERE ([Company_ID] = @Company_ID AND [InvoiceCode] = @InvoiceCode 
		AND [CompanyType] = @CompanyType)) <= 0)  AND (@ExpenseID <= 0))
	BEGIN

	INSERT  INTO [CarExpenses]
           ([Car_ID]
           ,[Currency_ID], [ExpenseType_ID]
           ,[CompanyType]
           ,[Company_ID], [ExchangeCompany_ID]
           ,[InvoiceCode]
           ,[DueDate]
           ,[PaymentDate]
           ,[Notes]
           ,[ExpenseValue], [InOutType]
           ,[Active]
           ,[AddDate]
           ,[WhoAdd]
           ,[AddIP],[Deleted], [PaymentValue],[Store_ID])
--           ,[EditDate]
--           ,[WhoEdit]
--           ,[EditIP]           
--           ,[DeleteDate]
--           ,[WhoDelete]
--           ,[DeleteIP])
     VALUES
           (@Car_ID 
           ,@Currency_ID, @ExpenseType_ID 
           ,@CompanyType  
           ,@Company_ID, @ExchangeCompany_ID 
           ,@InvoiceCode
           ,@DueDate  
           ,@PaymentDate  
           ,@Notes 
           ,@ExpenseValue, @InOutType 
           ,1  
           ,GETDATE()  
           ,@WhoAdd 
           ,@AddIP
           ,0, @PaymentValue,@Store_ID)   
--           ,@EditDate  
--           ,@WhoEdit 
--           ,@EditIP  
--           ,@DeleteDate  
--           ,@WhoDelete 
--           ,@DeleteIP)

	END
	ELSE
	BEGIN

   UPDATE [CarExpenses]
   SET [Car_ID] = @Car_ID 
      ,[Currency_ID] = @Currency_ID , [ExpenseType_ID] = @ExpenseType_ID 
      ,[CompanyType] = @CompanyType 
      ,[Company_ID] = @Company_ID, ExchangeCompany_ID = @ExchangeCompany_ID
      ,[InvoiceCode] = @InvoiceCode 
      ,[DueDate] = @DueDate 
      ,[PaymentDate] = @PaymentDate 
      ,[Notes] = @Notes
      ,[ExpenseValue] = @ExpenseValue, [InOutType] = @InOutType
      ,[Active] = 1 
--      ,[AddDate] = @AddDate 
--      ,[WhoAdd] = @WhoAdd 
--      ,[AddIP] = @AddIP 
      ,[EditDate] = GETDATE() 
      ,[WhoEdit] = @WhoEdit 
      ,[EditIP] = @EditIP 
      ,[Deleted] = 0 
	  ,[PaymentValue] = @PaymentValue, Store_ID = @Store_ID
--      ,[DeleteDate] = @DeleteDate 
--      ,[WhoDelete] = @WhoDelete 
--      ,[DeleteIP] = @DeleteIP 
     WHERE ExpenseID = @ExpenseID
	

	END
END


























GO
/****** Object:  StoredProcedure [dbo].[Expenses_Delete]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expenses_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Expenses_Delete] AS' 
END
GO








-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Expenses_Delete]
			@ExpenseID bigint
           ,@WhoDelete bigint
           ,@DeleteIP nvarchar(50)
	
	
AS
BEGIN
	
	SET NOCOUNT ON;
	
	   UPDATE [CarExpenses]
	   SET [Deleted] = 1 
		  ,[DeleteDate] = GETDATE()
		  ,[WhoDelete] = @WhoDelete 
		  ,[DeleteIP] = @DeleteIP 
	   WHERE ExpenseID = @ExpenseID
	
END
















GO
/****** Object:  StoredProcedure [dbo].[Expenses_GetDetails]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expenses_GetDetails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Expenses_GetDetails] AS' 
END
GO







-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Expenses_GetDetails]
			@ExpenseID bigint
	
AS
BEGIN
	
	SET NOCOUNT ON;
	
	   SELECT * FROM [CarExpenses]	   
	   WHERE ExpenseID = @ExpenseID
	
END















GO
/****** Object:  StoredProcedure [dbo].[Expenses_GetSelectList]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expenses_GetSelectList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Expenses_GetSelectList] AS' 
END
GO














-- =============================================
-- Author:	    <Mohamed Salah Abdullah>
-- ALTER date:  <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Expenses_GetSelectList]
			@Car_ID bigint --,	@Total numeric(18, 0) OUTPUT
	
AS
BEGIN
	
	SET NOCOUNT ON;

	   SELECT * FROM View_ExpensesList WHERE Car_ID = @Car_ID;


--SET @Total = (select sum(individual_counts) AS ExpTotal from
--(
--  SELECT SUM(ExpenseValue * ExchangeRate) AS individual_counts FROM [View_ExpensesBuyers] 
--WHERE Car_ID = 22
--    union
--  SELECT SUM(ExpenseValue * ExchangeRate) AS individual_counts FROM [View_ExpensesShipping] 
--WHERE Car_ID = 22
--union
--  SELECT SUM(ExpenseValue * ExchangeRate) AS individual_counts FROM [View_ExpensesTowing] 
--WHERE Car_ID = 22
--) x)



END






















GO
/****** Object:  StoredProcedure [dbo].[Expenses_GetSelectList_Company]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expenses_GetSelectList_Company]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Expenses_GetSelectList_Company] AS' 
END
GO












-- =============================================
-- Author:	    <Mohamed Salah Abdullah>
-- ALTER date:  <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Expenses_GetSelectList_Company]
			@CompanyID bigint,  --,	@Total numeric(18, 0) OUTPUT
			@CompanyType nvarchar(20)
AS
BEGIN
	
	SET NOCOUNT ON;


	   SELECT * FROM DBO.[View_ExpensesBuyers] WHERE Company_ID = @CompanyID AND CompanyType = @CompanyType
	   UNION ALL	
	   SELECT * FROM [View_ExpensesShipping] WHERE Company_ID = @CompanyID AND CompanyType = @CompanyType
	   UNION ALL
	   SELECT * FROM [View_ExpensesTowing] WHERE Company_ID = @CompanyID AND CompanyType = @CompanyType


--SET @Total = (select sum(individual_counts) AS ExpTotal from
--(
--  SELECT SUM(ExpenseValue * ExchangeRate) AS individual_counts FROM [View_ExpensesBuyers] 
--WHERE Car_ID = 22
--    union
--  SELECT SUM(ExpenseValue * ExchangeRate) AS individual_counts FROM [View_ExpensesShipping] 
--WHERE Car_ID = 22
--union
--  SELECT SUM(ExpenseValue * ExchangeRate) AS individual_counts FROM [View_ExpensesTowing] 
--WHERE Car_ID = 22
--) x)



END




















GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_DeleteExpenseType]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseTypes_DeleteExpenseType]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ExpenseTypes_DeleteExpenseType] AS' 
END
GO

-- =============================================
-- Author:		<@2011 Minutesuae Web Designers>
-- ALTER date: <11/05/2011>
-- Description:	<........>
-- =============================================
ALTER PROCEDURE [dbo].[ExpenseTypes_DeleteExpenseType] 
	@ExpenseTypeID int
		
	,@System_Who_Delete bigint
	,@System_LastAction_IP nvarchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.		
	
	UPDATE ExpenseTypes SET System_Delete_Status = 1, System_Delete_Date = convert(varchar, getdate(), 101), System_Who_Delete = @System_Who_Delete, 
	System_LastAction_IP = @System_LastAction_IP 
	WHERE ExpenseTypeID = @ExpenseTypeID;
	
END




GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_GetExpenseTypeDetails]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseTypes_GetExpenseTypeDetails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ExpenseTypes_GetExpenseTypeDetails] AS' 
END
GO




-- =============================================
-- Author:		<@2011 Minutesuae Web Designers>
-- ALTER date: <11/05/2011>
-- Description:	<........>
-- =============================================
ALTER PROCEDURE [dbo].[ExpenseTypes_GetExpenseTypeDetails] 
	@ExpenseTypeID int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.		
	
	SELECT     ExpenseTypes.*, Currencies.CurrencyName, 
                      Currencies.CurrencySymbol
	FROM         ExpenseTypes INNER JOIN
						  Currencies ON ExpenseTypes.CurrencyUsed = Currencies.CurrencyID
	WHERE     (ExpenseTypes.ExpenseTypeID = @ExpenseTypeID)
	
END











GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_GetExpenseTypesNames]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseTypes_GetExpenseTypesNames]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ExpenseTypes_GetExpenseTypesNames] AS' 
END
GO
ALTER PROCEDURE [dbo].[ExpenseTypes_GetExpenseTypesNames] 
	@CurrencyUsed nvarchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.		
	
	SELECT     ExpenseTypeID, ExpenseTypeName, GroupName
	FROM       ExpenseTypes 
	WHERE System_Delete_Status = 0 AND CurrencyUsed = @CurrencyUsed -- ==> 1 or 2.
		

END
GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_SaveExpenseType]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseTypes_SaveExpenseType]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ExpenseTypes_SaveExpenseType] AS' 
END
GO
ALTER PROCEDURE [dbo].[ExpenseTypes_SaveExpenseType] 
	@ExpenseTypeID int,
	@ExpenseTypeName nvarchar(150),
	@ExpenseTypeDetails nvarchar(3000),
	@CurrencyUsed nvarchar(20), @GroupName nvarchar(50),
	@System_Who_Add bigint,
	@System_LastAction_IP nvarchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.		
	SELECT * FROM ExpenseTypes WHERE ExpenseTypeName = @ExpenseTypeName

	IF(@@ROWCOUNT > 0 OR @ExpenseTypeID > 0)  
	BEGIN
		UPDATE ExpenseTypes SET ExpenseTypeName = @ExpenseTypeName, ExpenseTypeDetails = @ExpenseTypeDetails, 
		CurrencyUsed = @CurrencyUsed,GroupName = @GroupName, System_Modify_Date = convert(varchar, getdate(), 101), System_LastAction_IP = @System_LastAction_IP 
		WHERE ExpenseTypeID = @ExpenseTypeID;
	END		
	ELSE
	BEGIN	
		INSERT INTO ExpenseTypes(ExpenseTypeName, ExpenseTypeDetails,CurrencyUsed,GroupName, System_Who_Add, System_Delete_Status, System_LastAction_IP) 
		VALUES (@ExpenseTypeName, @ExpenseTypeDetails,@CurrencyUsed,@GroupName, @System_Who_Add, 0, @System_LastAction_IP);
	
	END
END
GO
/****** Object:  StoredProcedure [dbo].[ImagesDeleteImage]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ImagesDeleteImage]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ImagesDeleteImage] AS' 
END
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <25-3-2010>
-- Description:	<Delete image>
-- =============================================
ALTER PROCEDURE [dbo].[ImagesDeleteImage]
	-- Add the parameters for the stored procedure here
	
	@Id bigint
	
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from Pictures where ID = @Id;
			
END








GO
/****** Object:  StoredProcedure [dbo].[ImagesListByCategoryId]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ImagesListByCategoryId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ImagesListByCategoryId] AS' 
END
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <25-3-2010>
-- Description:	<get images list for category>
-- =============================================
ALTER PROCEDURE [dbo].[ImagesListByCategoryId]
	-- Add the parameters for the stored procedure here
	
	@Category nvarchar(20),
	@MasterID bigint
	
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from Pictures 
	where MasterID = @MasterID AND CategoryType = @Category 
	Order By [Priority] asc;
			
END







GO
/****** Object:  StoredProcedure [dbo].[ImagesResetMainImage]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ImagesResetMainImage]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ImagesResetMainImage] AS' 
END
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <26-3-2010>
-- Description:	<Set main picture.>
-- =============================================
ALTER PROCEDURE [dbo].[ImagesResetMainImage]
	-- Add the parameters for the stored procedure here
	@id bigint,
	@MasterID bigint,
	@Category nvarchar(20)
	
	
	
AS
BEGIN
	
	declare @sql nvarchar(50)
	declare @URL nvarchar(50)
    
	Update Pictures set MainImage = '0' Where MasterID = @MasterID AND CategoryType = @Category;

	Update Pictures set MainImage = '1' Where ID = @id;

	select @URL =  CAST((select URL FROM Pictures Where ID = @id) AS nvarchar(50));


	IF @Category = 'cars'
		UPDATE CarsData SET main_picture = @URL where CARID = @MasterID;
			
END









GO
/****** Object:  StoredProcedure [dbo].[LanguagesNamesList]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LanguagesNamesList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[LanguagesNamesList] AS' 
END
GO

-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <24-3-2010>
-- Description:	<Get all languages names list>
-- =============================================
ALTER PROCEDURE [dbo].[LanguagesNamesList] 
	-- Add the parameters for the stored procedure here
	

AS
BEGIN

    -- Insert statements for procedure here

	SELECT id, lang_name, lang_code from SiteLanguages ;

END

GO
/****** Object:  StoredProcedure [dbo].[LinksDeleteLink]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LinksDeleteLink]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[LinksDeleteLink] AS' 
END
GO

-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <24-3-2010>
-- Description:	<Updating link info.>
-- =============================================
ALTER PROCEDURE [dbo].[LinksDeleteLink]
	-- Add the parameters for the stored procedure here
	@id int
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Delete from  SiteLinks Where id = @id;
			
END






GO
/****** Object:  StoredProcedure [dbo].[LinksGetLinkDetailsById]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LinksGetLinkDetailsById]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[LinksGetLinkDetailsById] AS' 
END
GO

-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <24-3-2010>
-- Description:	<Get links by link id>
-- =============================================
ALTER PROCEDURE [dbo].[LinksGetLinkDetailsById]
	-- Add the parameters for the stored procedure here
	@id int
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select * from  SiteLinks Where id = @id;
			
END







GO
/****** Object:  StoredProcedure [dbo].[LinksGetLinksListByLanguage]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LinksGetLinksListByLanguage]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[LinksGetLinksListByLanguage] AS' 
END
GO


-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <24-3-2010>
-- Description:	<Get Links list by language id>
-- =============================================
ALTER PROCEDURE [dbo].[LinksGetLinksListByLanguage] 
	-- Add the parameters for the stored procedure here
	@languageID int

AS
BEGIN

    -- Insert statements for procedure here

	SELECT lang.lang_name, lang.lang_code, link.* 
		from SiteLanguages lang join SiteLinks link
		on lang.id = link.link_lang_id
	where lang.id = @languageID  Order by link.link_order asc;

END





GO
/****** Object:  StoredProcedure [dbo].[LinksUpdateLink]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LinksUpdateLink]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[LinksUpdateLink] AS' 
END
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <24-3-2010>
-- Description:	<Updating link info.>
-- =============================================
ALTER PROCEDURE [dbo].[LinksUpdateLink]
	-- Add the parameters for the stored procedure here
	@id bigint,
	@link_order int,
	@link_lang_id int,
	@Active bit,
	@link_place nvarchar(50),
	@link_name	nvarchar(50),
	@link_details ntext
	
AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update SiteLinks set link_order = @link_order, link_lang_id = @link_lang_id, Active = @Active,
						link_place = @link_place, link_name = @link_name, link_details = @link_details
		Where id = @id;
			
END




GO
/****** Object:  StoredProcedure [dbo].[Models_AddEdit]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Models_AddEdit]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Models_AddEdit] AS' 
END
GO






-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Models_AddEdit]
			@ModelID bigint, @Marker_ID int
			,@TypeNameEn nvarchar(100)
           ,@TypeNameAr nvarchar(100)           
           ,@Priority int
           ,@Active bit
           ,@System_Who_Add bigint
           --,@System_Add_Date datetime
           --,@System_Modify_Date datetime
           --,@System_Delete_Status bit
           --,@System_Who_Delete bigint
           --,@System_Delete_Date datetime
           ,@System_LastAction_IP nvarchar(50)
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [CarsModel] WHERE (Marker_ID = @Marker_ID AND TypeNameEn = @TypeNameEn);

	IF((@@ROWCOUNT <= 0)  AND (@ModelID <= 0))
	BEGIN

	INSERT INTO [CarsModel]
           ([Marker_ID], [TypeNameEn]
           ,[TypeNameAr]           
           ,[Priority]
           ,[Active]
           ,[System_Who_Add]
           ,[System_Add_Date]
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
     VALUES
           (@Marker_ID, @TypeNameEn 
           ,@TypeNameAr
           ,@Priority
           ,@Active 
           ,@System_Who_Add
           ,GETDATE()
           ,0 -- not deleted
           ,@System_LastAction_IP )

	END
	ELSE
	BEGIN

	UPDATE [CarsModel]
           SET [Marker_ID] = @Marker_ID, [TypeNameEn] = @TypeNameEn
           ,[TypeNameAr] = @TypeNameAr
           ,[Priority] = @Priority
           ,[Active] = @Active
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP
     WHERE ModelID = @ModelID
	

	END


END















GO
/****** Object:  StoredProcedure [dbo].[Models_DeleteOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Models_DeleteOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Models_DeleteOne] AS' 
END
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Models_DeleteOne]
			@ModelID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

--	Update [CarsModel]
--	SET System_Delete_Date = GETDATE(), System_Delete_Status = 1
--    WHERE ModelID = @ModelID
	
END













GO
/****** Object:  StoredProcedure [dbo].[Models_GetNames]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Models_GetNames]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Models_GetNames] AS' 
END
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Models_GetNames]
		@Marker_ID int	
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT ModelID, TypeNameEn FROM [CarsModel]
    WHERE Active = 1 AND System_Delete_Status = 0 AND Marker_ID = @Marker_ID
	
END












GO
/****** Object:  StoredProcedure [dbo].[Models_GetOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Models_GetOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Models_GetOne] AS' 
END
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Models_GetOne]
			@ModelID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT     CarsModel.*, CarsMarker.MarkerNameEn
	FROM         CarsModel INNER JOIN
						  CarsMarker ON CarsModel.Marker_ID = CarsMarker.MarkerID
	WHERE     (CarsModel.ModelID = @ModelID)
	
END










GO
/****** Object:  StoredProcedure [dbo].[PortShips_AddEdit]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PortShips_AddEdit]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[PortShips_AddEdit] AS' 
END
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[PortShips_AddEdit]
			@PortShipID int
		   ,@PortShipEn nvarchar(100) 
           ,@PortShipAr nvarchar(100) 
           ,@PortShipDescEn nvarchar(2000) 
           ,@PortShipDescAr nvarchar(2000) 
           ,@Priority int 
           ,@Active bit 
           ,@System_Who_Add bigint 
           ,@System_LastAction_IP nvarchar(50)
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [PortShipping] WHERE (PortShipEn = @PortShipEn); 


	IF((@@ROWCOUNT <= 0)  AND (@PortShipID <= 0))
	BEGIN

	INSERT  INTO [PortShipping]
           ([PortShipEn]
           ,[PortShipAr]
           ,[PortShipDescEn]
           ,[PortShipDescAr]
           ,[Priority]
           ,[Active]
           ,[System_Who_Add]
           ,[System_Add_Date]           
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
     VALUES
           (@PortShipEn 
           ,@PortShipAr 
           ,@PortShipDescEn 
           ,@PortShipDescAr 
           ,@Priority   
           ,@Active   
           ,@System_Who_Add
           ,GETDATE()
           ,0
           ,@System_LastAction_IP )

	END
	ELSE
	BEGIN

	UPDATE [PortShipping]
           SET [PortShipEn] = @PortShipEn
           ,[PortShipAr] = @PortShipAr
           ,[PortShipDescEn] = @PortShipDescEn
           ,[PortShipDescAr] = @PortShipDescAr
           ,[Priority] = @Priority
           ,[Active] = @Active
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP
     WHERE PortShipID = @PortShipID
	

	END


END

















GO
/****** Object:  StoredProcedure [dbo].[PortShips_DeleteOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PortShips_DeleteOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[PortShips_DeleteOne] AS' 
END
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[PortShips_DeleteOne]
			@PortShipID int
AS
BEGIN
	
	SET NOCOUNT ON;

	
	Update [PortShipping] SET
	System_Delete_Status = 1, System_Delete_Date = GetDATE() 
	WHERE PortShipID = @PortShipID


END















GO
/****** Object:  StoredProcedure [dbo].[PortShips_GetNames]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PortShips_GetNames]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[PortShips_GetNames] AS' 
END
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[PortShips_GetNames]
			
AS
BEGIN
	
	SET NOCOUNT ON;
	
	SELECT PortShipID, PortShipEn, PortShipAr FROM [PortShipping] 
	WHERE System_Delete_Status = 0 AND Active = 1


END
















GO
/****** Object:  StoredProcedure [dbo].[PortShips_GetOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PortShips_GetOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[PortShips_GetOne] AS' 
END
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[PortShips_GetOne]
			@PortShipID int
AS
BEGIN
	
	SET NOCOUNT ON;

	
	SELECT  * FROM [PortShipping] 
	WHERE PortShipID = @PortShipID


END















GO
/****** Object:  StoredProcedure [dbo].[Regions_AddEdit]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Regions_AddEdit]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Regions_AddEdit] AS' 
END
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Regions_AddEdit]
			@RegionID bigint, @Auction_ID int
		   ,@RegionEn nvarchar(100) 
           ,@RegionAr nvarchar(100) , @CostforRegion decimal(18, 0)
           ,@RegionDescEn nvarchar(2000) 
           ,@RegionDescAr nvarchar(2000) 
           ,@Priority int 
           ,@Active bit 
           ,@System_Who_Add bigint 
           ,@System_LastAction_IP nvarchar(50)
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [Regions] WHERE (Auction_ID = @Auction_ID AND RegionEn = @RegionEn); 


	IF((@@ROWCOUNT <= 0)  AND (@RegionID <= 0))
	BEGIN

	INSERT  INTO [Regions]
           ([RegionEn], [Auction_ID]
           ,[RegionAr], [CostforRegion]
           ,[RegionDescEn]
           ,[RegionDescAr]
           ,[Priority]
           ,[Active]
           ,[System_Who_Add]
           ,[System_Add_Date]           
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
     VALUES
           (@RegionEn , @Auction_ID
           ,@RegionAr , @CostforRegion
           ,@RegionDescEn 
           ,@RegionDescAr 
           ,@Priority   
           ,@Active   
           ,@System_Who_Add
           ,GETDATE()
           ,0
           ,@System_LastAction_IP )

	END
	ELSE
	BEGIN

	UPDATE [Regions]
           SET [RegionEn] = @RegionEn, [Auction_ID] = @Auction_ID
           ,[RegionAr] = @RegionAr, [CostforRegion] = @CostforRegion
           ,[RegionDescEn] = @RegionDescEn
           ,[RegionDescAr] = @RegionDescAr
           ,[Priority] = @Priority
           ,[Active] = @Active
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP
     WHERE RegionID = @RegionID
	

	END


END



















GO
/****** Object:  StoredProcedure [dbo].[Regions_DeleteOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Regions_DeleteOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Regions_DeleteOne] AS' 
END
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Regions_DeleteOne]
			@RegionID bigint
AS
BEGIN
	
	SET NOCOUNT ON;

	
--	Update [Regions] SET
--	System_Delete_Status = 1, System_Delete_Date = GetDATE() 
--	WHERE RegionID = @RegionID


END


















GO
/****** Object:  StoredProcedure [dbo].[Regions_GetNames]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Regions_GetNames]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Regions_GetNames] AS' 
END
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Regions_GetNames]
	@Auction_ID int		
AS
BEGIN
	
	SET NOCOUNT ON;
	
	SELECT RegionID, (RegionEn + ': ' + CAST((ISNULL(CostforRegion ,0)) AS nvarchar(50))) AS RegionEn , RegionAr, CostforRegion FROM [Regions] 
	WHERE System_Delete_Status = 0 AND Active = 1 AND Auction_ID = @Auction_ID;


END



















GO
/****** Object:  StoredProcedure [dbo].[Regions_GetOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Regions_GetOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Regions_GetOne] AS' 
END
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Regions_GetOne]
			@RegionID bigint
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT     Regions.*, Auctions.AuctionName
	FROM         Regions INNER JOIN
						  Auctions ON Regions.Auction_ID = Auctions.AuctionID
	WHERE     (Regions.RegionID = @RegionID)


END

















GO
/****** Object:  StoredProcedure [dbo].[Safe_DeleteDebitData]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Safe_DeleteDebitData]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Safe_DeleteDebitData] AS' 
END
GO


-- =============================================
-- Author:		<@2011 Minutesuae Web Designers>
-- ALTER date: <11/05/2011>
-- Description:	<........>
-- =============================================
ALTER PROCEDURE [dbo].[Safe_DeleteDebitData] 
	@SafeID bigint
		
	,@System_Who_Delete bigint
	,@System_LastAction_IP nvarchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.		
	
	UPDATE MainSafeDebitCredit SET System_Delete_Status = 1, System_Delete_Date = convert(varchar, getdate(), 101), System_Who_Delete = @System_Who_Delete, 
	System_LastAction_IP = @System_LastAction_IP 
	WHERE SafeID = @SafeID;
	
END




GO
/****** Object:  StoredProcedure [dbo].[Safe_GetDebitAll]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Safe_GetDebitAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Safe_GetDebitAll] AS' 
END
GO

ALTER PROCEDURE [dbo].[Safe_GetDebitAll] 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.		
	
	SELECT     * from View_SafeValuesList
	
END
GO
/****** Object:  StoredProcedure [dbo].[Safe_GetDebitDetails]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Safe_GetDebitDetails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Safe_GetDebitDetails] AS' 
END
GO




-- =============================================
-- Author:		<@2011 Minutesuae Web Designers>
-- ALTER date: <11/05/2011>
-- Description:	<........>
-- =============================================
ALTER PROCEDURE [dbo].[Safe_GetDebitDetails] 
	@SafeID int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.		
	
	SELECT * FROM MainSafeDebitCredit 
	WHERE SafeID = @SafeID;
	
END










GO
/****** Object:  StoredProcedure [dbo].[Safe_GetSafeReport]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Safe_GetSafeReport]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Safe_GetSafeReport] AS' 
END
GO



















-- =============================================
-- Author:		<@2011 Minutesuae Web Designers>
-- ALTER date: <11/05/2011>
-- Description:	<........>
-- =============================================
ALTER PROCEDURE [dbo].[Safe_GetSafeReport] 
	@Store_ID bigint
AS
BEGIN
--		SELECT   *--,  (SafeDebitValueTotal - ISNULL(InvoicesTotal, 0)) AS MainSafeRemainder
--		FROM     View_ReportMainSafe
SELECT     (SELECT     ISNULL(SUM(CAST(SafeDebitValue AS DECIMAL(16, 0))), 0) 
                       FROM          dbo.MainSafeDebitCredit
                       WHERE      (System_Delete_Status = 0) and (Store_ID = @Store_ID)) AS SafeDebitValueTotal,



					  (((SELECT     (ISNULL(SUM(ExpenseValue), 0) / dbo.GetDirhamExchangeRatio()) -- = Dollar value
						FROM          CarExpenses
						WHERE      (Active = 1) AND (Store_ID = @Store_ID) AND Currency_ID = 1 AND (InOutType = 'payment' OR (CompanyType = 'cash' AND Car_ID IS NULL)))) + 
(SELECT     ISNULL(SUM(ExpenseValue), 0) -- = Dirham value
						FROM          CarExpenses
						WHERE      (Active = 1) AND (Store_ID = @Store_ID) AND Currency_ID = 2 AND (InOutType = 'payment' OR (CompanyType = 'cash' AND Car_ID IS NULL))) ) AS TotalExpenses,





					  (((SELECT     (ISNULL(SUM(PaymentValue), 0) / dbo.GetDirhamExchangeRatio()) -- = Dollar value
						FROM          ClientPayments
						WHERE      (Active = 1) AND (Store_ID = @Store_ID) AND Currency_ID = 1)) + 
(SELECT     ISNULL(SUM(PaymentValue), 0) -- = Dirham value
						FROM          ClientPayments
						WHERE      (Active = 1) AND (Store_ID = @Store_ID) AND Currency_ID = 2) ) AS Payments,



					  (SELECT     ISNULL(SUM(TotalSubPaymentsForThis), 0) 
						FROM          dbo.View_CarSalesInvoices
						WHERE      (Store_ID = @Store_ID) AND (Active = 1)) AS SubPayments,
					  (SELECT     ISNULL(SUM(SalePrice), 0) 
						FROM			CarInvoices 
						WHERE      (Store_ID = @Store_ID) AND (Active = 1)) AS Invoices,
					  (SELECT     ISNULL(SUM(FirstAmount), 0) 
						FROM          CarInvoices
						WHERE      (Store_ID = @Store_ID) AND (Active = 1) AND (System_Delete_Status = 0)) AS InvoicesFirstAmount,
						(SELECT     TOP 1 StoreName
						FROM          dbo.Stores 
						WHERE      (StoreID = 1)) AS StoreName


	

END























GO
/****** Object:  StoredProcedure [dbo].[Safe_SaveDebitData]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Safe_SaveDebitData]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Safe_SaveDebitData] AS' 
END
GO




-- =============================================
-- Author:		<@2011 Minutesuae Web Designers>
-- ALTER date: <11/05/2011>
-- Description:	<........>
-- =============================================
ALTER PROCEDURE [dbo].[Safe_SaveDebitData] 
	@SafeID  bigint  
   ,@Employee_ID  bigint  ,@Store_ID  bigint 
   ,@SafeDebitValue  nvarchar(100)  
   ,@SafeDebitDate  datetime  
--   ,@SafeCreditValue  nvarchar(100)  
--   ,@SafeCreditDate  datetime  
   ,@System_Who_Add  bigint   
   ,@System_LastAction_IP  nvarchar(50)

AS
BEGIN	
	
	IF(@SafeID > 0 OR (SELECT COUNT(*) FROM MainSafeDebitCredit WHERE Employee_ID = @Employee_ID AND Store_ID = @Store_ID AND
											SafeDebitValue = @SafeDebitValue AND SafeDebitDate = @SafeDebitDate AND
											System_Who_Add = @System_Who_Add) > 0)  
	BEGIN
	   UPDATE [MainSafeDebitCredit] SET [Employee_ID] = @Employee_ID, Store_ID = @Store_ID     
		   ,[SafeDebitValue] = @SafeDebitValue     
		   ,[SafeDebitDate] = @SafeDebitDate     
--		   ,[SafeCreditValue] = @SafeCreditValue     
--		   ,[SafeCreditDate] = @SafeCreditDate     
--		   ,[System_Who_Add] = @System_Who_Add     
		   ,[System_Modify_Date] = GETDATE()
		   ,[System_Delete_Status] = 0     
		   ,[System_LastAction_IP] = @System_LastAction_IP  
	 WHERE SafeID = @SafeID OR SafeID = (SELECT SafeID FROM MainSafeDebitCredit WHERE Employee_ID = @Employee_ID AND
											Store_ID = @Store_ID AND
											SafeDebitValue = @SafeDebitValue AND SafeDebitDate = @SafeDebitDate AND
											System_Who_Add = @System_Who_Add);

	END		
	ELSE
	BEGIN	
		INSERT INTO [MainSafeDebitCredit]
           ([Employee_ID],Store_ID 
           ,[SafeDebitValue]
           ,[SafeDebitDate]
--           ,[SafeCreditValue]
--           ,[SafeCreditDate]
           ,[System_Who_Add]
           ,[System_Add_Date]
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
     VALUES
           (@Employee_ID ,@Store_ID    
           ,@SafeDebitValue     
           ,@SafeDebitDate     
--           ,@SafeCreditValue     
--           ,@SafeCreditDate     
           ,@System_Who_Add     
           ,GETDATE()     
           ,0    
           ,@System_LastAction_IP)
	
	END
END











GO
/****** Object:  StoredProcedure [dbo].[SaleInvoices_AddEdit]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SaleInvoices_AddEdit]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SaleInvoices_AddEdit] AS' 
END
GO







-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[SaleInvoices_AddEdit]
			@InvoiceID bigint
		   ,@SiteCompany_ID int
           ,@Car_ID bigint
           ,@Client_ID bigint
           ,@Currency_ID int
           ,@SalePrice money
           ,@FirstAmount money
           ,@InvoiceDate datetime
           ,@Notes nvarchar(2000), @SecretCode nvarchar(50)
			,@System_Who_Add bigint
           ,@System_LastAction_IP nvarchar(50), @Store_ID bigint
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

	-- Check data exist before.
	DECLARE @IsExistBefore int, @IsCorrectSecretCode int;
	SELECT  @IsExistBefore = COUNT(*) FROM [CarInvoices] WHERE ([Client_ID] = @Client_ID AND Store_ID = @Store_ID and [Car_ID] = @Car_ID AND [SalePrice] = @SalePrice); -- [SiteCompany_ID] = @SiteCompany_ID AND 

	-- Check secret code is a correct.
	SELECT @IsCorrectSecretCode = COUNT(*) FROM SiteCompanies WHERE SecretCode = @SecretCode;

	IF (@IsCorrectSecretCode > 0)
	BEGIN

	IF((@IsExistBefore <= 0) AND (@InvoiceID <= 0))
	BEGIN

	INSERT INTO [CarInvoices]
           ([SiteCompany_ID]
           ,[Car_ID]
           ,[Client_ID]
           ,[Currency_ID]
           ,[SalePrice]
           ,[FirstAmount]
           ,[InvoiceDate]
           ,[Notes], [Active]
           ,[System_Who_Add]
           ,[System_Add_Date]
           ,[System_Delete_Status]
           ,[System_LastAction_IP], Store_ID)
     VALUES
           (1 --@SiteCompany_ID 
           ,@Car_ID
           ,@Client_ID
           ,@Currency_ID 
           ,@SalePrice
           ,@FirstAmount
           ,@InvoiceDate
           ,@Notes, 1
           ,@System_Who_Add
           ,GETDATE()
           ,0 -- not deleted
           ,@System_LastAction_IP, @Store_ID)

	END
	ELSE
	BEGIN

	UPDATE [CarInvoices]
        SET [SiteCompany_ID] = 1 --@SiteCompany_ID // main company ==> Elaf Co.
           ,[Car_ID] = @Car_ID
           ,[Client_ID] = @Client_ID
           ,[Currency_ID] = @Currency_ID
           ,[SalePrice] = @SalePrice
           ,[FirstAmount] = @FirstAmount
           ,[InvoiceDate] = @InvoiceDate
           ,[Notes] = @Notes, [Active] = 1
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP, Store_ID = @Store_ID
     WHERE 
		InvoiceID = @InvoiceID

	END -- End insert/update if

	-- Change car status to sold after save(add/edit) action.
	UPDATE CarsData SET sale_date = GETDATE(), sold = 1 WHERE [CarID] = @Car_ID; -- sale_to = (SELECT TOP 1 ClientName FROM Clients Where ClientID = @Client_ID) WHERE CARID = @Car_ID;

	END -- End outer if (secret code).

	SET  @IsExistBefore = (SELECT TOP 1 InvoiceID FROM [CarInvoices] WHERE ([FirstAmount] = @FirstAmount AND [Car_ID] = @Car_ID AND [Client_ID] = @Client_ID AND [SalePrice] = @SalePrice)); -- [SiteCompany_ID] = @SiteCompany_ID AND 

	-- Save FirstAmount into ClientPayments table.
	--INSERT INTO ClientPayments Values()	

	SELECT @IsCorrectSecretCode AS CountSecretCode, @IsExistBefore AS CountInvoiceData

END





























GO
/****** Object:  StoredProcedure [dbo].[SaleInvoices_GetOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SaleInvoices_GetOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SaleInvoices_GetOne] AS' 
END
GO










-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[SaleInvoices_GetOne]
			@InvoiceID bigint	
AS
BEGIN
	
	SET NOCOUNT ON;
	
	SELECT    * FROM View_CarSalesInvoices
	WHERE     (InvoiceID = @InvoiceID)

END



















GO
/****** Object:  StoredProcedure [dbo].[SaleInvoices_ToggleInvoice]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SaleInvoices_ToggleInvoice]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SaleInvoices_ToggleInvoice] AS' 
END
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[SaleInvoices_ToggleInvoice]
			@InvoiceID bigint,
			@Toggle bit
AS
BEGIN
	
	SET NOCOUNT ON;

	DECLARE @countPayments int, @countSubPayments int;
	SELECT @countPayments = COUNT(*) FROM ClientPayments Where Active = 1 AND Invoice_ID = @InvoiceID;
	SELECT @countSubPayments  = COUNT(*) FROM ClientInvoicesPayments Where Active = 1 AND CarInvoice_ID = @InvoiceID;


	IF (@Toggle = 0 AND @countPayments <= 0 AND @countSubPayments <= 0)
	BEGIN
		UPDATE [CarInvoices] SET [Active] = @Toggle WHERE InvoiceID = @InvoiceID
		-- Change car status to Available/Sold
		-- Rest SubInvoices values
		-- Return SubInvoices values to ClientPayments values.
	END

	SELECT @countPayments AS Payments4This, @countSubPayments As SubPayments4This;

END


























GO
/****** Object:  StoredProcedure [dbo].[SaleInvoicesPayments_StattisticsForClient]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SaleInvoicesPayments_StattisticsForClient]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SaleInvoicesPayments_StattisticsForClient] AS' 
END
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[SaleInvoicesPayments_StattisticsForClient]
			@Client_ID bigint	
AS
BEGIN
	
	SET NOCOUNT ON;
	
	SELECT    
	(SELECT ISNULL(SUM(PaymentValue), 0) FROM View_ClientPayments WHERE Client_ID = @Client_ID AND PaymentID > 0 AND Active = 1 AND INVOICE_ID IS NOT NULL) AS Payments,
	(SELECT ISNULL(SUM(TotalSubPaymentsForThis), 0) FROM View_CarSalesInvoices WHERE Client_ID = @Client_ID AND Active = 1) AS SubPayments,
	(SELECT ISNULL(SUM(SalePrice), 0) FROM View_CarSalesInvoices WHERE Client_ID = @Client_ID AND Active = 1) AS Invoices,
	(SELECT ISNULL(SUM(FirstAmount), 0) FROM View_CarSalesInvoices WHERE Client_ID = @Client_ID AND Active = 1) AS InvoicesFirstAmount,
	(SELECT TOP 1 ISNULL(OpeningBalance,0) FROM Clients WHERE ClientID = @Client_ID) As ClientFirstBalance,
	(SELECT (ISNULL((SUM(PaymentValue) - SUM(CloseOut)),0)) AS EXP1 FROM View_ClientPayments WHERE Client_ID = @Client_ID AND PaymentID > 0 AND Active = 1 AND INVOICE_ID IS NULL) As NewBalance

END


























GO
/****** Object:  StoredProcedure [dbo].[ShipCompanies_AddEdit]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ShipCompanies_AddEdit]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ShipCompanies_AddEdit] AS' 
END
GO









-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[ShipCompanies_AddEdit]
			@ShipCompanyID bigint
			,@ShipCompanyName nvarchar(100)
           ,@ShipCompanyEmail nvarchar(100)
           ,@ShipCompanyPhone nvarchar(100)
           ,@ShipCompanyAddress nvarchar(500)
           ,@ShipCompanyDesc nvarchar(2000)
           ,@Priority int
           ,@Active bit, @OpeningBalance money
           ,@System_Who_Add bigint
           --,@System_Add_Date datetime
           --,@System_Modify_Date datetime
           --,@System_Delete_Status bit
           --,@System_Who_Delete bigint
           --,@System_Delete_Date datetime
           ,@System_LastAction_IP nvarchar(50)
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [ShippingCompanies] WHERE (ShipCompanyName = @ShipCompanyName);

	IF((@@ROWCOUNT <= 0)  AND (@ShipCompanyID <= 0))
	BEGIN

INSERT INTO [ShippingCompanies]
           ([ShipCompanyName]
           ,[ShipCompanyEmail]
           ,[ShipCompanyPhone]
           ,[ShipCompanyAddress]
           ,[ShipCompanyDesc]
           ,[Priority]
           ,[Active], [OpeningBalance]
           ,[System_Who_Add]
           ,[System_Add_Date]
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
     VALUES
           ( @ShipCompanyName 
           ,@ShipCompanyEmail 
           ,@ShipCompanyPhone 
           ,@ShipCompanyAddress 
           ,@ShipCompanyDesc 
           ,@Priority
           ,1, @OpeningBalance 
           ,@System_Who_Add
           ,GETDATE()
           ,0 -- not deleted
           ,@System_LastAction_IP )

	END
	ELSE
	BEGIN

UPDATE [ShippingCompanies]
           SET [ShipCompanyName] = @ShipCompanyName
           ,[ShipCompanyEmail] = @ShipCompanyEmail
           ,[ShipCompanyPhone] = @ShipCompanyPhone
           ,[ShipCompanyAddress] = @ShipCompanyAddress
           ,[ShipCompanyDesc] = @ShipCompanyDesc
           ,[Priority] = @Priority
           ,[Active] = 1, [OpeningBalance] = @OpeningBalance
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP
     WHERE ShipCompanyID = @ShipCompanyID
	

	END


END

















GO
/****** Object:  StoredProcedure [dbo].[ShipCompanies_DeleteOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ShipCompanies_DeleteOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ShipCompanies_DeleteOne] AS' 
END
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[ShipCompanies_DeleteOne]
			@ShipCompanyID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

	UPDATE [ShippingCompanies]
	SET System_Delete_Date = GETDATE(), System_Delete_Status = 1
    WHERE ShipCompanyID = @ShipCompanyID
	
END











GO
/****** Object:  StoredProcedure [dbo].[ShipCompanies_GetNames]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ShipCompanies_GetNames]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ShipCompanies_GetNames] AS' 
END
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[ShipCompanies_GetNames]
			
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT ShipCompanyID, ShipCompanyName FROM [ShippingCompanies]
    WHERE Active = 1 AND System_Delete_Status = 0
	
END











GO
/****** Object:  StoredProcedure [dbo].[ShipCompanies_GetOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ShipCompanies_GetOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ShipCompanies_GetOne] AS' 
END
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[ShipCompanies_GetOne]
			@ShipCompanyID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [ShippingCompanies]
    WHERE ShipCompanyID = @ShipCompanyID
	
END









GO
/****** Object:  StoredProcedure [dbo].[Ships_AddEdit]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ships_AddEdit]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Ships_AddEdit] AS' 
END
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Ships_AddEdit]
			@ShipID int
		   ,@ShipEn nvarchar(100) 
           ,@ShipAr nvarchar(100) 
           ,@ShipDescEn nvarchar(2000) 
           ,@ShipDescAr nvarchar(2000) 
           ,@Priority int 
           ,@Active bit 
           ,@System_Who_Add bigint 
           ,@System_LastAction_IP nvarchar(50)
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM Ships WHERE (ShipEn = @ShipEn); 


	IF((@@ROWCOUNT <= 0)  AND (@ShipID <= 0))
	BEGIN

	INSERT  INTO Ships
           ([ShipEn]
           ,[ShipAr]
           ,[ShipDescEn]
           ,[ShipDescAr]
           ,[Priority]
           ,[Active]
           ,[System_Who_Add]
           ,[System_Add_Date]           
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
     VALUES
           (@ShipEn 
           ,@ShipAr 
           ,@ShipDescEn 
           ,@ShipDescAr 
           ,@Priority   
           ,@Active   
           ,@System_Who_Add
           ,GETDATE()
           ,0
           ,@System_LastAction_IP )

	END
	ELSE
	BEGIN

	UPDATE Ships
           SET [ShipEn] = @ShipEn
           ,[ShipAr] = @ShipAr
           ,[ShipDescEn] = @ShipDescEn
           ,[ShipDescAr] = @ShipDescAr
           ,[Priority] = @Priority
           ,[Active] = @Active
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP
     WHERE ShipID = @ShipID
	

	END


END


















GO
/****** Object:  StoredProcedure [dbo].[Ships_DeleteOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ships_DeleteOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Ships_DeleteOne] AS' 
END
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Ships_DeleteOne]
			@ShipID int
AS
BEGIN
	
	SET NOCOUNT ON;

	
	Update Ships SET
	System_Delete_Status = 1, System_Delete_Date = GetDATE() 
	WHERE ShipID = @ShipID


END
















GO
/****** Object:  StoredProcedure [dbo].[Ships_GetNames]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ships_GetNames]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Ships_GetNames] AS' 
END
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Ships_GetNames]
			
AS
BEGIN
	
	SET NOCOUNT ON;
	
	SELECT ShipID, ShipEn, ShipAr FROM Ships 
	WHERE System_Delete_Status = 0 AND Active = 1


END

















GO
/****** Object:  StoredProcedure [dbo].[Ships_GetOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ships_GetOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Ships_GetOne] AS' 
END
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Ships_GetOne]
			@ShipID int
AS
BEGIN
	
	SET NOCOUNT ON;

	
	SELECT  * FROM Ships 
	WHERE ShipID = @ShipID


END















GO
/****** Object:  StoredProcedure [dbo].[SiteCompanies_GetOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SiteCompanies_GetOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SiteCompanies_GetOne] AS' 
END
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[SiteCompanies_GetOne]

	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT top 1 * FROM [SiteCompanies]
	
END









GO
/****** Object:  StoredProcedure [dbo].[States_AddEdit]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[States_AddEdit]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[States_AddEdit] AS' 
END
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[States_AddEdit]
			@StateID int
		   ,@StateEn nvarchar(100) 
           ,@StateAr nvarchar(100) 
           ,@StateDescEn nvarchar(2000) 
           ,@StateDescAr nvarchar(2000) 
           ,@Priority int 
           ,@Active bit 
           ,@System_Who_Add bigint 
           ,@System_LastAction_IP nvarchar(50)
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [States] WHERE (StateEn = @StateEn); 


	IF((@@ROWCOUNT <= 0)  AND (@StateID <= 0))
	BEGIN

	INSERT  INTO [States]
           ([StateEn]
           ,[StateAr]
           ,[StateDescEn]
           ,[StateDescAr]
           ,[Priority]
           ,[Active]
           ,[System_Who_Add]
           ,[System_Add_Date]           
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
     VALUES
           (@StateEn 
           ,@StateAr 
           ,@StateDescEn 
           ,@StateDescAr 
           ,@Priority   
           ,@Active   
           ,@System_Who_Add
           ,GETDATE()
           ,0
           ,@System_LastAction_IP )

	END
	ELSE
	BEGIN

	UPDATE [States]
           SET [StateEn] = @StateEn
           ,[StateAr] = @StateAr
           ,[StateDescEn] = @StateDescEn
           ,[StateDescAr] = @StateDescAr
           ,[Priority] = @Priority
           ,[Active] = @Active
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP
     WHERE StateID = @StateID
	

	END


END


















GO
/****** Object:  StoredProcedure [dbo].[States_DeleteOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[States_DeleteOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[States_DeleteOne] AS' 
END
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[States_DeleteOne]
			@StateID int
AS
BEGIN
	
	SET NOCOUNT ON;

	
	Update [States] SET
	System_Delete_Status = 1, System_Delete_Date = GetDATE() 
	WHERE StateID = @StateID


END
















GO
/****** Object:  StoredProcedure [dbo].[States_GetNames]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[States_GetNames]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[States_GetNames] AS' 
END
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[States_GetNames]
			
AS
BEGIN
	
	SET NOCOUNT ON;
	
	SELECT StateID, StateEn, StateAr FROM [States] 
	WHERE System_Delete_Status = 0 AND Active = 1


END

















GO
/****** Object:  StoredProcedure [dbo].[States_GetOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[States_GetOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[States_GetOne] AS' 
END
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[States_GetOne]
			@StateID int
AS
BEGIN
	
	SET NOCOUNT ON;

	
	SELECT  * FROM [States] 
	WHERE StateID = @StateID


END















GO
/****** Object:  StoredProcedure [dbo].[Status_GetNames]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Status_GetNames]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Status_GetNames] AS' 
END
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Status_GetNames]
			
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT StatusID, StatusEn, StatusAr FROM [CarsStatus]
    WHERE Active = 1 
	
END











GO
/****** Object:  StoredProcedure [dbo].[Stores_AddEdit]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Stores_AddEdit]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Stores_AddEdit] AS' 
END
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Stores_AddEdit]
			@StoreID bigint
			,@StoreName nvarchar(100)
           ,@StoreEmail nvarchar(100)
           ,@StorePhone nvarchar(100)
           ,@StoreAddress nvarchar(500)
           ,@StoreDesc nvarchar(2000)
           ,@Priority int
           ,@Active bit
           ,@System_Who_Add bigint
           ,@System_LastAction_IP nvarchar(50)
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [Stores] WHERE (StoreName = @StoreName);

	IF((@@ROWCOUNT <= 0)  AND (@StoreID <= 0))
	BEGIN

INSERT INTO [Stores]
           ([StoreName]
           ,[StoreEmail]
           ,[StorePhone]
           ,[StoreAddress]
           ,[StoreDesc]
           ,[Priority]
           ,[Active]
           ,[System_Who_Add]
           ,[System_Add_Date]
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
     VALUES
           ( @StoreName 
           ,@StoreEmail 
           ,@StorePhone 
           ,@StoreAddress 
           ,@StoreDesc 
           ,@Priority
           ,@Active 
           ,@System_Who_Add
           ,GETDATE()
           ,0 -- not deleted
           ,@System_LastAction_IP )

	END
	ELSE
	BEGIN

UPDATE [Stores]
           SET [StoreName] = @StoreName
           ,[StoreEmail] = @StoreEmail
           ,[StorePhone] = @StorePhone
           ,[StoreAddress] = @StoreAddress
           ,[StoreDesc] = @StoreDesc
           ,[Priority] = @Priority
           ,[Active] = @Active
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP
     WHERE StoreID = @StoreID
	

	END


END



















GO
/****** Object:  StoredProcedure [dbo].[Stores_DeleteOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Stores_DeleteOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Stores_DeleteOne] AS' 
END
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Stores_DeleteOne]
			@StoreID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

	UPDATE [Stores]
	SET System_Delete_Date = GETDATE(), System_Delete_Status = 1
    WHERE StoreID = @StoreID
	
END














GO
/****** Object:  StoredProcedure [dbo].[Stores_GetNames]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Stores_GetNames]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Stores_GetNames] AS' 
END
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Stores_GetNames]
			
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT StoreID, StoreName FROM [Stores]
    WHERE Active = 1 AND System_Delete_Status = 0
	
END














GO
/****** Object:  StoredProcedure [dbo].[Stores_GetOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Stores_GetOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Stores_GetOne] AS' 
END
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Stores_GetOne]
			@StoreID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [Stores]
    WHERE StoreID = @StoreID
	
END









GO
/****** Object:  StoredProcedure [dbo].[TowingCompanies_AddEdit]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TowingCompanies_AddEdit]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[TowingCompanies_AddEdit] AS' 
END
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[TowingCompanies_AddEdit]
			@TowingCompanyID bigint
			,@TowingCompanyName nvarchar(100)
           ,@TowingCompanyEmail nvarchar(100)
           ,@TowingCompanyPhone nvarchar(100)
           ,@TowingCompanyAddress nvarchar(500)
           ,@TowingCompanyDesc nvarchar(2000)
           ,@Priority int
           ,@Active bit, @OpeningBalance money
           ,@System_Who_Add bigint
           --,@System_Add_Date datetime
           --,@System_Modify_Date datetime
           --,@System_Delete_Status bit
           --,@System_Who_Delete bigint
           --,@System_Delete_Date datetime
           ,@System_LastAction_IP nvarchar(50)
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [TowingCompanies] WHERE (TowingCompanyName = @TowingCompanyName);

	IF((@@ROWCOUNT <= 0)  AND (@TowingCompanyID <= 0))
	BEGIN

INSERT INTO [TowingCompanies]
           ([TowingCompanyName]
           ,[TowingCompanyEmail]
           ,[TowingCompanyPhone]
           ,[TowingCompanyAddress]
           ,[TowingCompanyDesc]
           ,[Priority]
           ,[Active], [OpeningBalance]
           ,[System_Who_Add]
           ,[System_Add_Date]
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
     VALUES
           ( @TowingCompanyName 
           ,@TowingCompanyEmail 
           ,@TowingCompanyPhone 
           ,@TowingCompanyAddress 
           ,@TowingCompanyDesc 
           ,@Priority
           ,1, @OpeningBalance 
           ,@System_Who_Add
           ,GETDATE()
           ,0 -- not deleted
           ,@System_LastAction_IP )

	END
	ELSE
	BEGIN

UPDATE [TowingCompanies]
           SET [TowingCompanyName] = @TowingCompanyName
           ,[TowingCompanyEmail] = @TowingCompanyEmail
           ,[TowingCompanyPhone] = @TowingCompanyPhone
           ,[TowingCompanyAddress] = @TowingCompanyAddress
           ,[TowingCompanyDesc] = @TowingCompanyDesc
           ,[Priority] = @Priority
           ,[Active] = 1, [OpeningBalance] = @OpeningBalance
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP
     WHERE TowingCompanyID = @TowingCompanyID
	

	END


END



















GO
/****** Object:  StoredProcedure [dbo].[TowingCompanies_DeleteOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TowingCompanies_DeleteOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[TowingCompanies_DeleteOne] AS' 
END
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[TowingCompanies_DeleteOne]
			@TowingCompanyID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

--	UPDATE [TowingCompanies]
--	SET System_Delete_Date = GETDATE(), System_Delete_Status = 1
--    WHERE TowingCompanyID = @TowingCompanyID
	
END













GO
/****** Object:  StoredProcedure [dbo].[TowingCompanies_GetNames]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TowingCompanies_GetNames]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[TowingCompanies_GetNames] AS' 
END
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[TowingCompanies_GetNames]
			
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT TowingCompanyID, TowingCompanyName FROM [TowingCompanies]
    WHERE Active = 1 AND System_Delete_Status = 0
	
END












GO
/****** Object:  StoredProcedure [dbo].[TowingCompanies_GetOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TowingCompanies_GetOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[TowingCompanies_GetOne] AS' 
END
GO






-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[TowingCompanies_GetOne]
			@TowingCompanyID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [TowingCompanies]
    WHERE TowingCompanyID = @TowingCompanyID
	
END











GO
/****** Object:  StoredProcedure [dbo].[Transmissions_GetNames]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transmissions_GetNames]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Transmissions_GetNames] AS' 
END
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Transmissions_GetNames]
				
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT TransmissionID, TransmissionNameEn, TransmissionNameAr 
	FROM   Transmissions
	WHERE Active = 1 AND System_Delete_Status = 0

END











GO
/****** Object:  StoredProcedure [dbo].[TransportCompanies_AddEdit]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransportCompanies_AddEdit]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[TransportCompanies_AddEdit] AS' 
END
GO








-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[TransportCompanies_AddEdit]
			@TransportID bigint
			,@TransportName nvarchar(100)
           ,@TransportEmail nvarchar(100)
           ,@TransportPhone nvarchar(100)
           ,@TransportAddress nvarchar(500)
           ,@TransportDesc nvarchar(2000)
           ,@Priority int
           ,@Active bit, @OpeningBalance money
           ,@System_Who_Add bigint
           --,@System_Add_Date datetime
           --,@System_Modify_Date datetime
           --,@System_Delete_Status bit
           --,@System_Who_Delete bigint
           --,@System_Delete_Date datetime
           ,@System_LastAction_IP nvarchar(50)
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [TransportCompanies] WHERE (TransportName = @TransportName);

	IF((@@ROWCOUNT <= 0)  AND (@TransportID <= 0))
	BEGIN

INSERT INTO [TransportCompanies]
           ([TransportName]
           ,[TransportEmail]
           ,[TransportPhone]
           ,[TransportAddress]
           ,[TransportDesc]
           ,[Priority]
           ,[Active], [OpeningBalance]
           ,[System_Who_Add]
           ,[System_Add_Date]
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
     VALUES
           ( @TransportName 
           ,@TransportEmail 
           ,@TransportPhone 
           ,@TransportAddress 
           ,@TransportDesc 
           ,@Priority
           ,1, @OpeningBalance 
           ,@System_Who_Add
           ,GETDATE()
           ,0 -- not deleted
           ,@System_LastAction_IP )

	END
	ELSE
	BEGIN

UPDATE [TransportCompanies]
           SET [TransportName] = @TransportName
           ,[TransportEmail] = @TransportEmail
           ,[TransportPhone] = @TransportPhone
           ,[TransportAddress] = @TransportAddress
           ,[TransportDesc] = @TransportDesc
           ,[Priority] = @Priority
           ,[Active] = 1, [OpeningBalance] = @OpeningBalance
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP
     WHERE TransportID = @TransportID
	

	END


END


















GO
/****** Object:  StoredProcedure [dbo].[TransportCompanies_DeleteOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransportCompanies_DeleteOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[TransportCompanies_DeleteOne] AS' 
END
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[TransportCompanies_DeleteOne]
			@TransportID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

--	UPDATE [TransportCompanies]
--	SET System_Delete_Date = GETDATE(), System_Delete_Status = 1
--    WHERE TransportID = @TransportID
	
END














GO
/****** Object:  StoredProcedure [dbo].[TransportCompanies_GetNames]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransportCompanies_GetNames]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[TransportCompanies_GetNames] AS' 
END
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[TransportCompanies_GetNames]
			
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT TransportID, TransportName FROM [TransportCompanies]
    WHERE Active = 1 AND System_Delete_Status = 0
	
END













GO
/****** Object:  StoredProcedure [dbo].[TransportCompanies_GetOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransportCompanies_GetOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[TransportCompanies_GetOne] AS' 
END
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[TransportCompanies_GetOne]
			@TransportID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [TransportCompanies]
    WHERE TransportID = @TransportID
	
END









GO
/****** Object:  StoredProcedure [dbo].[Tundra_Cars]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tundra_Cars]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Tundra_Cars] AS' 
END
GO









-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <17-04-2010>
-- Description:	<get cars list>
-- =============================================
ALTER PROCEDURE [dbo].[Tundra_Cars]
AS
BEGIN	
	SET NOCOUNT ON;
	-- cars
	SELECT     MarkerNameAr, TypeNameAr, StatusAr, ColorNameAr, ExtColorAr, CapacityNameAr, WorkingStatusNameAr, DriveNameAr, EngineNameAr, CarStyleNameAr, 
                      YearNameEn, TransmissionNameAr, CarID, car_code, mileage, main_picture, chassis_no, lot_no, engine_no, car_options, WorkingStatus_ID,
                      car_remarks, sale_price, visitors
	FROM         View_CarInformation
	-- images
	SELECT     Pictures.MasterID, Pictures.URL 
	FROM         Pictures INNER JOIN
						  CarsData ON Pictures.MasterID = CarsData.CarID
	WHERE     (Pictures.CategoryType = 'cars') AND (Pictures.MainImage =0 OR Pictures.MainImage IS NULL)
END
GO
/****** Object:  StoredProcedure [dbo].[Workshops_AddEdit]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Workshops_AddEdit]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Workshops_AddEdit] AS' 
END
GO








-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Workshops_AddEdit]
			@WorkshopID bigint
			,@WorkshopName nvarchar(100)
           ,@WorkshopEmail nvarchar(100)
           ,@WorkshopPhone nvarchar(100)
           ,@WorkshopAddress nvarchar(500)
           ,@WorkshopDesc nvarchar(2000)
           ,@Priority int, @OpeningBalance money
           ,@Active bit
           ,@System_Who_Add bigint
           --,@System_Add_Date datetime
           --,@System_Modify_Date datetime
           --,@System_Delete_Status bit
           --,@System_Who_Delete bigint
           --,@System_Delete_Date datetime
           ,@System_LastAction_IP nvarchar(50)
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [Workshops] WHERE (WorkshopName = @WorkshopName);


	IF((@@ROWCOUNT <= 0)  AND (@WorkshopID <= 0))
	BEGIN

	INSERT INTO [Workshops]
           ([WorkshopName]
           ,[WorkshopEmail]
           ,[WorkshopPhone]
           ,[WorkshopAddress]
           ,[WorkshopDesc]
           ,[Priority], [OpeningBalance]
           ,[Active]
           ,[System_Who_Add]
           ,[System_Add_Date]
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
     VALUES
           (@WorkshopName 
           ,@WorkshopEmail 
           ,@WorkshopPhone 
           ,@WorkshopAddress 
           ,@WorkshopDesc 
           ,@Priority, @OpeningBalance
           ,@Active 
           ,@System_Who_Add
           ,GETDATE()
           ,0 -- not deleted
           ,@System_LastAction_IP )

	END
	ELSE
	BEGIN

UPDATE [Workshops]
           SET [WorkshopName] = @WorkshopName
           ,[WorkshopEmail] = @WorkshopEmail
           ,[WorkshopPhone] = @WorkshopPhone
           ,[WorkshopAddress] = @WorkshopAddress
           ,[WorkshopDesc] = @WorkshopDesc
           ,[Priority] = @Priority, [OpeningBalance] = @OpeningBalance
           ,[Active] = @Active
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP
     WHERE WorkshopID = @WorkshopID
	

	END


END
















GO
/****** Object:  StoredProcedure [dbo].[Workshops_DeleteOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Workshops_DeleteOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Workshops_DeleteOne] AS' 
END
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Workshops_DeleteOne]
			@WorkshopID bigint
	
AS
BEGIN
	
	SET NOCOUNT ON;

--	Update [Workshops]
--	SET System_Delete_Date = GETDATE(), System_Delete_Status = 1
--    WHERE WorkshopID = @WorkshopID
	
END













GO
/****** Object:  StoredProcedure [dbo].[Workshops_GetNames]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Workshops_GetNames]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Workshops_GetNames] AS' 
END
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Workshops_GetNames]
			
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT WorkshopID, WorkshopName FROM [Workshops]
    WHERE Active = 1 AND System_Delete_Status = 0
	
END












GO
/****** Object:  StoredProcedure [dbo].[Workshops_GetOne]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Workshops_GetOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Workshops_GetOne] AS' 
END
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Workshops_GetOne]
			@WorkshopID bigint
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [Workshops]
    WHERE WorkshopID = @WorkshopID
	
END








GO
/****** Object:  StoredProcedure [dbo].[Years_GetNames]    Script Date: 2/2/2018 9:10:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Years_GetNames]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Years_GetNames] AS' 
END
GO






-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
ALTER PROCEDURE [dbo].[Years_GetNames]
				
AS
BEGIN	
	SET NOCOUNT ON;
	SELECT YearID, YearNameEn 
	FROM   Years ORDER BY YearID DESC
END












GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_CarInformation', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[55] 4[31] 2[3] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Auctions"
            Begin Extent = 
               Top = 5
               Left = 249
               Bottom = 124
               Right = 447
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarsMarker"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 245
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarsData"
            Begin Extent = 
               Top = 6
               Left = 510
               Bottom = 125
               Right = 708
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarsModel"
            Begin Extent = 
               Top = 126
               Left = 274
               Bottom = 245
               Right = 472
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarsStatus"
            Begin Extent = 
               Top = 126
               Left = 510
               Bottom = 245
               Right = 708
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "WorkingStatus"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Buyers"
            Begin Extent = 
               Top = 5
               Left = 835
               Bottom = 124
               Right = 1033
            End
            Display' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarInformation'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_CarInformation', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'Flags = 280
            TopColumn = 0
         End
         Begin Table = "View_ClientInvoicesTemp"
            Begin Extent = 
               Top = 126
               Left = 746
               Bottom = 230
               Right = 906
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Stores"
            Begin Extent = 
               Top = 234
               Left = 746
               Bottom = 353
               Right = 944
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TowingCompanies"
            Begin Extent = 
               Top = 246
               Left = 38
               Bottom = 365
               Right = 245
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Transmissions"
            Begin Extent = 
               Top = 246
               Left = 283
               Bottom = 365
               Right = 481
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Years"
            Begin Extent = 
               Top = 246
               Left = 519
               Bottom = 365
               Right = 717
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Workshops"
            Begin Extent = 
               Top = 354
               Left = 755
               Bottom = 473
               Right = 953
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "States"
            Begin Extent = 
               Top = 366
               Left = 38
               Bottom = 485
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Regions"
            Begin Extent = 
               Top = 366
               Left = 274
               Bottom = 485
               Right = 472
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Styles"
            Begin Extent = 
               Top = 366
               Left = 510
               Bottom = 485
               Right = 708
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Ships"
            Begin Extent = 
               Top = 474
               Left = 746
               Bottom = 593
               Right = 944
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ShippingCompanies"
            Begin Extent = 
               Top = 486
               Left = 38
               Bottom = 605
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Engines"
            Begin Extent = 
               Top = 486
               Left = 274
               Bottom = 605
               Right = 472
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Drives"
            Begin Extent = 
               Top = 486
               Left = 510
               Bottom = 605
               Right = 708
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PortShipping"
            Begin Extent = 
               Top = 594
               Left = 746
               Bottom = 713
               Right = 944
            End
            DisplayFlags = 280
            TopCol' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarInformation'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane3' , N'SCHEMA',N'dbo', N'VIEW',N'View_CarInformation', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane3', @value=N'umn = 0
         End
         Begin Table = "Capacities"
            Begin Extent = 
               Top = 606
               Left = 38
               Bottom = 725
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Colors_1"
            Begin Extent = 
               Top = 606
               Left = 274
               Bottom = 725
               Right = 472
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Colors"
            Begin Extent = 
               Top = 606
               Left = 510
               Bottom = 725
               Right = 708
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 114
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 14490
         Alias = 2835
         Table = 2235
         Output = ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarInformation'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane4' , N'SCHEMA',N'dbo', N'VIEW',N'View_CarInformation', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane4', @value=N'720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarInformation'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_CarInformation', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=4 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarInformation'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_CarInformation.temp', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[56] 4[12] 2[6] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -192
         Left = 0
      End
      Begin Tables = 
         Begin Table = "WorkingStatus"
            Begin Extent = 
               Top = 27
               Left = 523
               Bottom = 146
               Right = 721
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Auctions"
            Begin Extent = 
               Top = 3
               Left = 34
               Bottom = 122
               Right = 232
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarsData"
            Begin Extent = 
               Top = 54
               Left = 253
               Bottom = 418
               Right = 462
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Buyers"
            Begin Extent = 
               Top = 6
               Left = 510
               Bottom = 125
               Right = 708
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarsMarker"
            Begin Extent = 
               Top = 66
               Left = 18
               Bottom = 185
               Right = 216
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarsModel"
            Begin Extent = 
               Top = 10
               Left = 272
               Bottom = 129
               Right = 470
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarsStatus"
            Begin Extent = 
               Top = 66
               Left = 510
               Bottom = 185
               Right = 708
            End
            Displa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarInformation.temp'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_CarInformation.temp', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'yFlags = 280
            TopColumn = 0
         End
         Begin Table = "View_ClientInvoicesTemp"
            Begin Extent = 
               Top = 0
               Left = 500
               Bottom = 165
               Right = 685
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Stores"
            Begin Extent = 
               Top = 486
               Left = 589
               Bottom = 605
               Right = 787
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TowingCompanies"
            Begin Extent = 
               Top = 241
               Left = 631
               Bottom = 360
               Right = 838
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Transmissions"
            Begin Extent = 
               Top = 478
               Left = 41
               Bottom = 597
               Right = 239
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Years"
            Begin Extent = 
               Top = 403
               Left = 0
               Bottom = 522
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Workshops"
            Begin Extent = 
               Top = 204
               Left = 0
               Bottom = 323
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "States"
            Begin Extent = 
               Top = 296
               Left = 0
               Bottom = 415
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Regions"
            Begin Extent = 
               Top = 454
               Left = 479
               Bottom = 573
               Right = 677
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Styles"
            Begin Extent = 
               Top = 221
               Left = 747
               Bottom = 340
               Right = 945
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Ships"
            Begin Extent = 
               Top = 374
               Left = 772
               Bottom = 493
               Right = 970
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ShippingCompanies"
            Begin Extent = 
               Top = 195
               Left = 735
               Bottom = 314
               Right = 933
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Engines"
            Begin Extent = 
               Top = 136
               Left = 730
               Bottom = 255
               Right = 928
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "Drives"
            Begin Extent = 
               Top = 64
               Left = 732
               Bottom = 183
               Right = 930
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PortShipping"
            Begin Extent = 
               Top = 242
               Left = 513
               Bottom = 361
               Right = 711
            End
            DisplayFlags = 280
            TopColumn = ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarInformation.temp'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane3' , N'SCHEMA',N'dbo', N'VIEW',N'View_CarInformation.temp', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane3', @value=N'0
         End
         Begin Table = "Capacities"
            Begin Extent = 
               Top = 0
               Left = 729
               Bottom = 119
               Right = 927
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Colors_1"
            Begin Extent = 
               Top = 194
               Left = 7
               Bottom = 392
               Right = 205
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Colors"
            Begin Extent = 
               Top = 144
               Left = 12
               Bottom = 263
               Right = 210
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 72
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2805
         Alias = 1665
         Table = 3120
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarInformation.temp'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_CarInformation.temp', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=3 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarInformation.temp'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_CarMakerMode.temp', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[9] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CarsData"
            Begin Extent = 
               Top = 14
               Left = 660
               Bottom = 229
               Right = 858
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarsMarker"
            Begin Extent = 
               Top = 7
               Left = 28
               Bottom = 194
               Right = 226
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarsModel"
            Begin Extent = 
               Top = 38
               Left = 327
               Bottom = 229
               Right = 525
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarMakerMode.temp'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_CarMakerMode.temp', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarMakerMode.temp'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_CarSalesInvoices', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[38] 4[6] 2[26] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CarInvoices"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 207
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Clients"
            Begin Extent = 
               Top = 6
               Left = 481
               Bottom = 125
               Right = 679
            End
            DisplayFlags = 280
            TopColumn = 12
         End
         Begin Table = "Currencies"
            Begin Extent = 
               Top = 6
               Left = 717
               Bottom = 125
               Right = 915
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SiteCompanies"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 245
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "View_CarInformation"
            Begin Extent = 
               Top = 86
               Left = 275
               Bottom = 306
               Right = 473
            End
            DisplayFlags = 280
            TopColumn = 99
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 47
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2145
         Width = 2100
         Width = 1500
         Width = 1500
         Width = 1500
         Width' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarSalesInvoices'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_CarSalesInvoices', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarSalesInvoices'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_CarSalesInvoices', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarSalesInvoices'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_ClientInvoicesTemp', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Clients"
            Begin Extent = 
               Top = 6
               Left = 274
               Bottom = 175
               Right = 472
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarInvoices"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 160
               Right = 207
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ClientInvoicesTemp'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_ClientInvoicesTemp', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ClientInvoicesTemp'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_ClientPayments', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4[30] 2[40] 3) )"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 3
   End
   Begin DiagramPane = 
      PaneHidden = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 25
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 5
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ClientPayments'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_ClientPayments', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ClientPayments'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_ClientPayments.temp', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[18] 4[38] 2[11] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ClientPayments"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 232
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Clients"
            Begin Extent = 
               Top = 11
               Left = 287
               Bottom = 130
               Right = 485
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Currencies"
            Begin Extent = 
               Top = 53
               Left = 606
               Bottom = 172
               Right = 804
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ExchangeCompanies"
            Begin Extent = 
               Top = 0
               Left = 520
               Bottom = 156
               Right = 740
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 23
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ClientPayments.temp'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_ClientPayments.temp', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'Begin ColumnWidths = 11
         Column = 1980
         Alias = 3360
         Table = 2445
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ClientPayments.temp'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_ClientPayments.temp', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ClientPayments.temp'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesBuyers', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[43] 4[14] 2[8] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Currencies"
            Begin Extent = 
               Top = 107
               Left = 741
               Bottom = 226
               Right = 939
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarExpenses"
            Begin Extent = 
               Top = 15
               Left = 520
               Bottom = 134
               Right = 691
            End
            DisplayFlags = 280
            TopColumn = 13
         End
         Begin Table = "Buyers"
            Begin Extent = 
               Top = 102
               Left = 112
               Bottom = 221
               Right = 310
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "Stores"
            Begin Extent = 
               Top = 160
               Left = 502
               Bottom = 279
               Right = 700
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ExchangeCompanies"
            Begin Extent = 
               Top = 121
               Left = 261
               Bottom = 240
               Right = 481
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "CarsData"
            Begin Extent = 
               Top = 0
               Left = 848
               Bottom = 165
               Right = 1046
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ExpenseTypes"
            Begin Extent = 
               Top = 0
               Left = 153
               Bottom = 119
               Right = 351
            End
       ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesBuyers'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesBuyers', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'     DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 29
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2130
         Alias = 2775
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesBuyers'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesBuyers', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesBuyers'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesClearances', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Currencies"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "CarExpenses"
            Begin Extent = 
               Top = 6
               Left = 274
               Bottom = 125
               Right = 472
            End
            DisplayFlags = 280
            TopColumn = 13
         End
         Begin Table = "ClearanceCompanies"
            Begin Extent = 
               Top = 96
               Left = 559
               Bottom = 215
               Right = 757
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "Stores"
            Begin Extent = 
               Top = 126
               Left = 795
               Bottom = 245
               Right = 993
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ExchangeCompanies"
            Begin Extent = 
               Top = 6
               Left = 746
               Bottom = 125
               Right = 966
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ExpenseTypes"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 245
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "CarsData"
            Begin Extent = 
               Top = 126
               Left = 274
               Bottom = 245
               Right = 472
            End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesClearances'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesClearances', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2130
         Alias = 1920
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesClearances'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesClearances', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesClearances'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesList', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4[31] 2[47] 3) )"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 3
   End
   Begin DiagramPane = 
      PaneHidden = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 33
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 5
         Column = 3030
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesList'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesList', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesList'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesShipping', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[48] 4[13] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Currencies"
            Begin Extent = 
               Top = 6
               Left = 483
               Bottom = 125
               Right = 681
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "CarExpenses"
            Begin Extent = 
               Top = 24
               Left = 282
               Bottom = 169
               Right = 453
            End
            DisplayFlags = 280
            TopColumn = 11
         End
         Begin Table = "ShippingCompanies"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 245
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "Stores"
            Begin Extent = 
               Top = 189
               Left = 271
               Bottom = 308
               Right = 469
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ExchangeCompanies"
            Begin Extent = 
               Top = 227
               Left = 372
               Bottom = 346
               Right = 592
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ExpenseTypes"
            Begin Extent = 
               Top = 72
               Left = 692
               Bottom = 191
               Right = 890
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "CarsData"
            Begin Extent = 
               Top = 1
               Left = 21
               Bottom = 120
               Right = 219
            End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesShipping'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesShipping', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 29
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 2250
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesShipping'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesShipping', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesShipping'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesTowing', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Currencies"
            Begin Extent = 
               Top = 6
               Left = 483
               Bottom = 125
               Right = 681
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarExpenses"
            Begin Extent = 
               Top = 78
               Left = 286
               Bottom = 198
               Right = 457
            End
            DisplayFlags = 280
            TopColumn = 13
         End
         Begin Table = "TowingCompanies"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 245
               Right = 245
            End
            DisplayFlags = 280
            TopColumn = 7
         End
         Begin Table = "Stores"
            Begin Extent = 
               Top = 198
               Left = 283
               Bottom = 317
               Right = 481
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ExchangeCompanies"
            Begin Extent = 
               Top = 93
               Left = 739
               Bottom = 212
               Right = 959
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ExpenseTypes"
            Begin Extent = 
               Top = 91
               Left = 541
               Bottom = 210
               Right = 739
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "CarsData"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 236
            End
  ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesTowing'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesTowing', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'          DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 36
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 2775
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesTowing'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesTowing', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesTowing'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesTransports', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[44] 4[20] 2[11] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Currencies"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarExpenses"
            Begin Extent = 
               Top = 15
               Left = 339
               Bottom = 134
               Right = 537
            End
            DisplayFlags = 280
            TopColumn = 14
         End
         Begin Table = "Stores"
            Begin Extent = 
               Top = 165
               Left = 281
               Bottom = 284
               Right = 479
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TransportCompanies"
            Begin Extent = 
               Top = 97
               Left = 683
               Bottom = 216
               Right = 881
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ExchangeCompanies"
            Begin Extent = 
               Top = 6
               Left = 746
               Bottom = 125
               Right = 966
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ExpenseTypes"
            Begin Extent = 
               Top = 99
               Left = 31
               Bottom = 218
               Right = 229
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "CarsData"
            Begin Extent = 
               Top = 175
               Left = 406
               Bottom = 294
               Right = 604
            End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesTransports'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesTransports', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 4665
         Alias = 1785
         Table = 2040
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesTransports'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesTransports', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesTransports'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesWorkshop', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[29] 4[32] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Currencies"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarExpenses"
            Begin Extent = 
               Top = 6
               Left = 274
               Bottom = 125
               Right = 472
            End
            DisplayFlags = 280
            TopColumn = 12
         End
         Begin Table = "Workshops"
            Begin Extent = 
               Top = 36
               Left = 562
               Bottom = 155
               Right = 760
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "Stores"
            Begin Extent = 
               Top = 126
               Left = 798
               Bottom = 245
               Right = 996
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ExchangeCompanies"
            Begin Extent = 
               Top = 6
               Left = 746
               Bottom = 125
               Right = 966
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ExpenseTypes"
            Begin Extent = 
               Top = 62
               Left = 41
               Bottom = 181
               Right = 239
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "CarsData"
            Begin Extent = 
               Top = 126
               Left = 274
               Bottom = 245
               Right = 472
            End
         ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesWorkshop'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesWorkshop', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'   DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2925
         Alias = 1725
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesWorkshop'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_ExpensesWorkshop', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesWorkshop'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_FirstAmountsForClientPaymentsTemp', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[33] 4[28] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CarInvoices"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 207
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "Clients"
            Begin Extent = 
               Top = 7
               Left = 266
               Bottom = 126
               Right = 464
            End
            DisplayFlags = 280
            TopColumn = 11
         End
         Begin Table = "Currencies"
            Begin Extent = 
               Top = 16
               Left = 504
               Bottom = 135
               Right = 702
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 28
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_FirstAmountsForClientPaymentsTemp'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'View_FirstAmountsForClientPaymentsTemp', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'= 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_FirstAmountsForClientPaymentsTemp'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_FirstAmountsForClientPaymentsTemp', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_FirstAmountsForClientPaymentsTemp'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_InvoicesSubPayments', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[45] 4[16] 2[15] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "View_CarSalesInvoices"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 258
               Right = 251
            End
            DisplayFlags = 280
            TopColumn = 25
         End
         Begin Table = "ClientInvoicesPayments"
            Begin Extent = 
               Top = 74
               Left = 348
               Bottom = 241
               Right = 562
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "View_ClientPayments"
            Begin Extent = 
               Top = 0
               Left = 670
               Bottom = 249
               Right = 878
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 16
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2055
         Width = 1785
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2295
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2070
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2565
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_InvoicesSubPayments'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_InvoicesSubPayments', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_InvoicesSubPayments'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_SafeValuesList', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "MainSafeDebitCredit"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_admin_n"
            Begin Extent = 
               Top = 6
               Left = 274
               Bottom = 125
               Right = 436
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Stores"
            Begin Extent = 
               Top = 6
               Left = 474
               Bottom = 125
               Right = 672
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 17
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_SafeValuesList'
GO
IF NOT EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_SafeValuesList', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_SafeValuesList'
GO
ALTER DATABASE [TundraUae] SET  READ_WRITE 
GO
