<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="TreeHuggersWebApp01.login" %>


<html>
<head runat="server">

  <title>Treehugger's Login Page</title>
  <meta name="description" content="Login Page">

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://kit.fontawesome.com/7eda6b90e4.js"></script>

    <style>
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    
    h1, h2 {
      font-family: "Lato", sans-serif;
    }

    form {
      border: 2px ridge rgb(179, 179, 179);
      border-radius: 5px;
      padding: 64px;
      margin: 100px 50px;
    }
    
    label {
      color: black;
    }
  </style>
</head>
<body>

    <nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="glyphicon glyphicon-tree-conifer navbar-brand" style="font-size: 25px;" href="#"></a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li class="active"><a href="index.html">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Projects</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="login.aspx"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container-fluid w3-blue-grey">
  <div class="row">
    <div class="col-md-2">

    </div>
    <div class="col-md-5">
      <form runat="server" method="post" id="login" class="w3-card-4" style="background-color: white;">
       <asp:XmlDataSource ID="XmlDataSource1" runat="server" datafile="DataSet1.xsd"></asp:XmlDataSource>
        <h2 style="color: black; padding-bottom: 15px;"><i class="far fa-id-card"></i>Login Here:</h2>
        <div class="form-group">
            <asp:Label ID="labelUsername" Text="Username:" runat="server" ForeColor="Black" ></asp:Label> 
            <br />
            <asp:TextBox ID="textBoxUsername" runat="server" ForeColor="Black"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="labelPwd" Text="Password:" runat="server" ForeColor="Black" ></asp:Label> 
            <br />
            <asp:TextBox ID="textBoxPwd" runat="server" textMode="Password" ForeColor="Black"></asp:TextBox>
        </div>
        <div class="form-group form-check">

         <asp:Label ID="labelCheckBox1" Text="Remember Me " runat="server" ForeColor="Black" >
               <asp:CheckBox ID="checkBox1" runat="server" />
           </asp:Label>
        
        </div> 
          <asp:Button ID="submitBtn" runat="server" onClick="SubmitBtn_Click" Text="Submit" ForeColor="Black" />      
      </form>
    </div>
    <div class="col-md-5 text-center w3-padding-32">
      <span class="glyphicon glyphicon-tree-conifer" style="font-size: 300px; padding-top: 80px;"></span>
    </div>
  </div>
</div>

<footer class="w3-container w3-padding w3-center w3-grey">
  <div class="w3-padding-32 w3-xlarge">
    <h3>You Can Find Us On</h3>
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
</footer>

</body>
</html>

