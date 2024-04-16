<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="out.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dnyanesh Kshatriya</title>
<style>
    @import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');

    * {
        margin: 0;
        padding: 0;
        outline: none;
        box-sizing: border-box;
        font-family: 'Poppins', sans-serif;
    }

    body {
        height: 100vh;
        width: 100%;
        background: linear-gradient(115deg, #56d8e4 10%, #9f01ea 90%);
    }

    .center {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
    }

    .container {
        background: #fff;
        width: 410px;
        padding: 30px;
        box-shadow: 0 0 8px rgba(0, 0, 0, 0.1);
    }

    .container .close-btn {
        position: absolute;
        right: 20px;
        top: 15px;
        font-size: 18px;
        cursor: pointer;
    }

    .container .close-btn:hover {
        color: #3498db;
    }

    .container .text {
        font-size: 35px;
        font-weight: 600;
        text-align: center;
    }

    .container form {
        margin-top: -20px;
    }

    .container form .data {
        height: 45px;
        width: 100%;
        margin: 40px 0;
    }

    form .data label {
        font-size: 18px;
    }

    form .data input {
        height: 100%;
        width: 100%;
        padding-left: 10px;
        font-size: 17px;
        border: 1px solid silver;
    }

    form .data input:focus {
        border-color: #3498db;
        border-bottom-width: 2px;
    }

    form .btn-group {
        display: flex;
        justify-content: space-between;
        margin-bottom: 20px;
    }

    form .btn-group button {
        flex: 1;
        height: 45px;
        margin-right: 10px;
        background: none;
        border: 2px solid #56d8e4;
        color: #56d8e4;
        font-size: 18px;
        font-weight: 500;
        text-transform: uppercase;
        letter-spacing: 1px;
        cursor: pointer;
        transition: all 0.3s ease;
    }

    form .btn-group button:last-child {
        margin-right: 0;
    }

    form .btn-group button:hover {
        background: #56d8e4;
        color: #fff;
    }

    form .btn-group button:focus {
        outline: none;
    }

    form .signup-link {
        text-align: center;
    }

    form .signup-link a {
        color: #3498db;
        text-decoration: none;
    }

    form .signup-link a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
<div class="center">
    <div class="container">
        <label for="show" class="close-btn fas fa-times" title="close"></label>
        <div class="text">
            Calculator
        </div>
        <form action="output.jsp" method="post">
            <div class="data">
                <label>Enter 1st Number</label>
                <input type="text" name="n1" required>
            </div>
            <div class="data">
                <label>Enter 2nd Number</label>
                <input type="text" name="n2" required>
            </div>
            <div class="btn-group">
                <button type="submit" name="operation" value="add">Add</button>
                <button type="submit" name="operation" value="subtract">Subtract</button>
                <button type="submit" name="operation" value="multiply">Multiply</button>
                <button type="submit" name="operation" value="divide">Divide</button>
            </div>
            <%-- Java Code for Calculation --%>
            <%
                String n1 = request.getParameter("n1");
                String n2 = request.getParameter("n2");
                int result = 0;
                if (n1 != null && n2 != null) {
                    int num1 = Integer.parseInt(n1);
                    int num2 = Integer.parseInt(n2);
                    String operation = request.getParameter("operation");
                    switch (operation) {
                        case "add":
                            result = num1 + num2;
                            break;
                        case "subtract":
                            result = num1 - num2;
                            break;
                        case "multiply":
                            result = num1 * num2;
                            break;
                        case "divide":

                                result = num1 / num2;
                            
                            break;
                        default:
                            // Handle invalid operation
                            break;
                    }
                }
            %>
            <h3>Result is: <%= result %></h3>
        </form>
    </div>
</div>
</body>
</html>
