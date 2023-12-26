<%@ Page Title="" Language="C#" MasterPageFile="~/BankPortal/MasterPage.master" AutoEventWireup="true" CodeFile="ViewClients.aspx.cs" Inherits="BankPortal_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <style> 

input[type=text] {

    border-radius: 5px ;
    border: 2px solid lightgray ; 
    
}

input[type=multiline] {

    border-radius: 5px;
    border: 1px solid lightgray;

 }

.rcorners2 {

    border-radius: 5px ;
    border: 2px solid lightgray ;
       
}

.tt {

    border-radius: 5px ;
    border: 2px solid lightgray ;
       
}

</style>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="row">
      <div class="col-md-10 offset-md-2">
         <div class="card">
               <div class="form-group col-md-12"><div style="background-color: #f5f5dc;" class="card-header">
                <h3 class="card-title">Clients List</h3>
              </div>
            <div class="card">
              
              <div class="card-body">
                   <div class="row">

                       <div class="form-group col-md-2" runat="server"> <label for="sort_type" style="color:gray;font-size:small">Filter by</label><span style="color:red">*</span> 
                                 
                                  <asp:DropDownList runat="server" ID="sort_type" CssClass="form-control form-control-sm">

                                      <asp:ListItem Text="--Select--" Value="0"></asp:ListItem>

                                     <asp:ListItem Text="Sales" Value="Sales"></asp:ListItem>
                                      <asp:ListItem Text="Annual Turnover" Value="Annual Turnover"></asp:ListItem>
                                      <asp:ListItem Text="Loan Amount" Value="Loan_Amount"></asp:ListItem>
                                      <asp:ListItem Text="Net Profit Margin" Value="Net Profit Margin"></asp:ListItem>
                                      <asp:ListItem Text="Interest Rate" Value="Interest_Rate"></asp:ListItem>                                    
                                   </asp:DropDownList> 

                                    </div> 


                     <div class="form-group col-md-2"> <label for="min_value" style="color:gray;font-size:small"> Minimum Value </label><span style="color:red">*</span>   <asp:TextBox runat="server" ID="min_value" oninput="validateNumericInput(this)" CssClass="form-control form-control-sm" placeholder="Enter Here" ></asp:TextBox>
                                      </div>

                          <div class="form-group col-md-2"> <label for="max_value" style="color:gray;font-size:small"> Maximum Value </label><span style="color:red">*</span>   <asp:TextBox runat="server" ID="max_value" oninput="validateNumericInput(this)" CssClass="form-control form-control-sm" placeholder="Enter Here" ></asp:TextBox>
                                      </div> 

                         
                     
                    </div>

                      <div class="form-group col-md-4">
                        
                         <asp:ValidationSummary runat="server" ShowMessageBox="true" ShowSummary="false" />

  <asp:Button runat="server" ID="submitbtn" class = "btn btn-sm btn-primary" OnClick="FilterAndDisplay" Text="Submit" />


                      </div>
                 <div class="col-sm-12">
                <div id ="Loan_Details" runat="server" class ="mt-4 overflow-auto" ></div>
                </div>
                </div>
              </div>
                 </div>
     </div>

   <script>
     function validateNumericInput(input) {
       // Remove non-numeric characters from the input
       input.value = input.value.replace(/\D/g, '');
     }
     </script>
  </div>
        </div>
</asp:Content>
