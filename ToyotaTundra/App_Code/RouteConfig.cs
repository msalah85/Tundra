using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace Tundra2
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            var settings = new FriendlyUrlSettings();
            //settings.AutoRedirectMode = RedirectMode.Permanent;
            routes.EnableFriendlyUrls(settings);

            /////////////admin///////////
            #region "Admin Routing"

            routes.MapPageRoute("admin-edit", "adm-tunr/admin-{empId}/{Name}.aspx", "~/adm-tunr/AdminEdit.aspx");
            routes.MapPageRoute("expense-add", "adm-tunr/addexpense-{carId}/{Name}.aspx", "~/adm-tunr/CarExpenseAddEdit.aspx");
            routes.MapPageRoute("car-expense-edit", "adm-tunr/editexpense-{expenseId}/{Name}.aspx", "~/adm-tunr/CarExpenseAddEdit.aspx");
            routes.MapPageRoute("car-expense-view", "adm-tunr/car/{carId}/expenses.aspx", "~/adm-tunr/CarExpenseView.aspx");
            routes.MapPageRoute("car-salethiscar-view", "adm-tunr/car/{carId}/salethiscar.aspx", "~/adm-tunr/SaleCarTo.aspx");
            routes.MapPageRoute("car-print-invoice", "adm-tunr/invoice/{Id}/print.aspx", "~/adm-tunr/SaleInvoicePrint.aspx");
            routes.MapPageRoute("car-client-invoices", "adm-tunr/client/{clientId}/invoices/{Name}.aspx", "~/adm-tunr/SaleInvoicesForClient.aspx");
            routes.MapPageRoute("car-client-payments", "adm-tunr/client/{clientId}/payments/{Name}.aspx", "~/adm-tunr/ClientPaymentsView.aspx");
            routes.MapPageRoute("car-client-invoice-payments1", "adm-tunr/subinvoice-{clientId}/viewsubinvoices.aspx", "~/adm-tunr/ClientSubPaymentsView.aspx");
            routes.MapPageRoute("car-client-invoice-payments2", "adm-tunr/subinvoice-{clientId}/{codeID}/viewsubinvoices.aspx", "~/adm-tunr/ClientSubPaymentsView.aspx");

            routes.MapPageRoute("expenses-view", "adm-tunr/expenses/{compId}/{CompType}/{CoName}.aspx", "~/adm-tunr/ExpensesView.aspx");
            routes.MapPageRoute("payments-view", "adm-tunr/payments/{compId}/{CompType}/{CoName}.aspx", "~/adm-tunr/PaymentsView.aspx");
            routes.MapPageRoute("payments-add", "adm-tunr/addpayment-{currency}/{coType}/{coName}.aspx", "~/adm-tunr/PaymentsAddEdit.aspx");
            routes.MapPageRoute("payments-edit", "adm-tunr/payment-{Id}/{currency}.aspx", "~/adm-tunr/PaymentsAddEdit.aspx");
            routes.MapPageRoute("cars-edit", "adm-tunr/car-{Id}/edit", "~/adm-tunr/CarsAddEdit.aspx");
            routes.MapPageRoute("cars-view-list", "adm-tunr/cars/{WorkStatus}/{SaleStatus}", "~/adm-tunr/CarsView.aspx");
            routes.MapPageRoute("links-edit", "adm-tunr/page-{linksId}/{Name}", "~/adm-tunr/SiteLinksEdit.aspx");

            #endregion
        }
    }
}