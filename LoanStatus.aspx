<%@ Page Title="" Language="C#" MasterPageFile="~/BankPortal/MasterPage.master" AutoEventWireup="true" CodeFile="LoanStatus.aspx.cs" Inherits="BankPortal_LoanStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="wrapper">
    <div class="content-wrapper">
      <section class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-8 mt-4">
              <div class="card card-primary">
                <div class="card-header">
                  <h3 class="card-title">Personal Details</h3>
                </div>
                <div class="card-body">
                  <div class="row">
                    <div class="col-md-3">
                      <asp:Label runat="server">Name</asp:Label>
                      <asp:TextBox ID="tb_Name" runat="server" class="form-control" ReadOnly="true" Style="cursor: not-allowed;" />
                    </div>
                    <!--<div class="col-sm-3">
                      <div class="form-group">
                        <label>Name</label>
                        <input type="text" class="form-control" id="tb_name" disabled>
                      </div>
                    </div>-->
                    <div class="col-md-3">
                      <asp:Label runat="server">Email</asp:Label>
                      <asp:TextBox ID="tb_Email" runat="server" class="form-control" ReadOnly="true" Style="cursor: not-allowed;" />
                    </div>
                    <!-- <div class="col-sm-3">
                      <div class="form-group">
                        <label>Email</label>
                        <input type="text" class="form-control"  disabled>
                      </div>
                    </div>-->
                    <div class="col-md-3">
                      <asp:Label runat="server">Mobile</asp:Label>
                      <asp:TextBox ID="tb_Mobile" runat="server" class="form-control" ReadOnly="true" Style="cursor: not-allowed;" />
                    </div>
                    <!-- <div class="col-sm-3">
                      <div class="form-group">
                        <label>Mobile No.</label>
                        <input type="text" class="form-control"  disabled>
                      </div>
                    </div>-->
                    <!--<div class="col-3">
                      <asp:Label runat="server">Gender</asp:Label>
                      <asp:DropDownList ID="dd_Gender" runat="server" class="form-control select2" Enabled="false" ReadOnly="true">
                        <asp:ListItem runat="server">Male</asp:ListItem>
                        <asp:ListItem runat="server">Female</asp:ListItem>
                      </asp:DropDownList>
                    </div>-->

                    <div class="col-md-3">
                      <asp:Label runat="server">Gender</asp:Label>
                      <asp:TextBox ID="tb_Gender" runat="server" class="form-control" ReadOnly="true" Style="cursor: not-allowed;" />
                    </div>

                    <!-- <div class="col-sm-3">
                      <div class="form-group">
                        <label>Gender</label>
                        <input type="text" class="form-control"  disabled>
                      </div>
                    </div>-->

                  </div>
                </div>
                <div class="card-body">
                  <div class="row">
                    <div class="col-md-6">
                      <asp:Label runat="server">Address</asp:Label>
                      <asp:TextBox ID="tb_Address" runat="server" class="form-control" ReadOnly="true" Style="cursor: not-allowed;" />
                    </div>
                    <!-- <div class="col-sm-3">
                      <div class="form-group">
                        <label>Address</label>
                        <input type="text" class="form-control" disabled>
                      </div>
                    </div>-->
                    <div class="col-md-3">
                      <asp:Label runat="server">Pin</asp:Label>
                      <asp:TextBox ID="tb_Pin" runat="server" class="form-control" ReadOnly="true" Style="cursor: not-allowed;" />
                    </div>
                    <!--   <div class="col-sm-2">
                      <div class="form-group">
                        <label>Pin</label>
                        <input type="text" class="form-control" disabled>
                      </div>
                    </div>-->



                  </div>
                </div>
                <div class="card-body">
                  <div class="row">
                    <div class="col-md-3">
                      <asp:Label runat="server">City</asp:Label>
                      <asp:TextBox ID="tb_City" runat="server" class="form-control" ReadOnly="true" Style="cursor: not-allowed;" />
                    </div>
                    <!--<div class="col-sm-3">
                      <div class="form-group">
                        <label>City</label>
                        <input type="text" class="form-control" disabled>
                      </div>
                    </div>-->
                    <div class="col-md-3">
                      <asp:Label runat="server">State</asp:Label>
                      <asp:TextBox ID="tb_State" runat="server" class="form-control" ReadOnly="true" Style="cursor: not-allowed;" />
                    </div>
                    <!--                      <div class="col-sm-3">
                      <div class="form-group">
                        <label>State</label>
                        <input type="text" class="form-control" disabled>
                      </div>
                    </div>-->
                  </div>
                </div>
                <!--<div class="card-body" style="display:flex; justify-content:center;">
                  <div class="row">
                    <div class="card-footer bg-white">
                    </div>
                  </div>
                </div>-->
              </div>
                            <div class="card card-primary">
                <div class="card-header">
                  <h3 class="card-title">Applied Loan Details</h3>
                </div>
                <div class="card-body">
                  <div class="row">
                    <div class="col-md-3">
                      <asp:Label runat="server">Name(Acc. to Aadhar)</asp:Label>
                      <asp:TextBox ID="txt_name" runat="server" class="form-control" ReadOnly="true" Style="cursor: not-allowed;" />
                    </div>
                                                            <div class="col-md-4">
                      <asp:Label runat="server">Aadharcard Number</asp:Label>
                      <asp:TextBox ID="txt_Aadharnumber" runat="server" class="form-control" ReadOnly="true" Style="cursor: not-allowed;" />
                    </div>
                                        <div class="col-md-4">
                      <asp:Label runat="server">Pancard Number</asp:Label>
                      <asp:TextBox ID="txt_Pancardnumber" runat="server" class="form-control" ReadOnly="true" Style="cursor: not-allowed;" />
                    </div>
                  </div>
                  </div>
                <div class="card-body">
                  <div class="row">
                                        <div class="col-md-3">
                      <asp:Label runat="server">Bank Name</asp:Label>
                      <asp:TextBox ID="txt_Bankname" runat="server" class="form-control"  ReadOnly="true" Style="cursor: not-allowed;"  />
                    </div>
                    <div class="col-md-3">
                      <asp:Label runat="server">Branch Name</asp:Label>
                      <asp:TextBox ID="txt_Branchname" runat="server" class="form-control"  ReadOnly="true" Style="cursor: not-allowed;" />
                    </div>
                                        <div class="col-md-4">
                      <asp:Label runat="server">Account Number</asp:Label>
                      <asp:TextBox ID="txt_Accountnumber" runat="server" class="form-control"  ReadOnly="true" Style="cursor: not-allowed;"  />
                    </div>
                  </div>
                </div>
                <div class="card-body">
                  <div class="row">
                    <div class="col-md-3">
                      <asp:Label runat="server">IFSC Code</asp:Label>
                      <asp:TextBox ID="txt_IFSC" runat="server" class="form-control"  ReadOnly="true" Style="cursor: not-allowed;"  />
                    </div>

                    <div class="col-md-4">
                      <asp:Label runat="server">Loan Amount</asp:Label>
                      <asp:TextBox ID="txt_Loanamount" runat="server" class="form-control"  ReadOnly="true" Style="cursor: not-allowed;"  />
                    </div>

                    <div class="col-md-4">
                      <asp:Label runat="server">Purpose of Loan</asp:Label>
                      <asp:TextBox ID="txt_Purpose" runat="server" class="form-control"  ReadOnly="true" Style="cursor: not-allowed;"  />
                    </div>
                  </div>
                </div>
                <div class="card-body" style="display: flex; justify-content: center;">
                  <div class="row">
                    <div class="card-footer bg-white">
                      <asp:Button ID="Approved" runat="server" Text="Approve" OnClick="Approved_Click"  class="btn btn-success" />
                                            <asp:Button ID="UnApproved" runat="server" Text="Reject" Onclick="UnApproved_Click"  class="btn btn-danger" />

                    </div>
                  </div>
                </div>
                </div>
            </div>
            <div class="col-md-4 mt-4">
              <div class="card card-primary">
                <div class="card-header">
                  <h3 class="card-title">Uploaded Images</h3>
                </div>
                <div class="card-body">
                  <div class="row">
                    <div class="col-md-12 mt-2 mb-2">
                      <asp:Label runat="server">UPLOADED AADHAR</asp:Label>
                      <asp:Image ID="Aadhar_image" runat="server" AlternateText="Aadhar" Style="width: 350px; height: 200px; margin-top: 5px;" />
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12 mt-2 mb-2">
                      <asp:Label runat="server">UPLOADED PANCARD</asp:Label>
                      <asp:Image ID="Pancard_image" runat="server" AlternateText="Pancard" Style="width: 350px; height: 200px; margin-top: 5px;" />
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
  </div>
</asp:Content>

