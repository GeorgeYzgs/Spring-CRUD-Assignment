<%-- 
    Document   : view
    Created on : Mar 24, 2020, 1:10:50 PM
    Author     : George.Giazitzis
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <title>Trainer List Page</title>
    </head>
    <body>
        <div class="container">
            <div class="card">
                <h3 class="card-header text-center font-weight-bold py-4">Trainer List</h3>
                <div class="card-body">
                    <div id="table" class="table-editable">
                        <span class="font-weight-bold"><u>${message}</u></span>
                        <span class="table-add float-right mb-3 mr-2"><b>Create Trainer </b><a href="preCreate" class="text-success"><span
                                        class="glyphicon glyphicon-plus"></span></a></span>
                        <table class="table table-bordered table-responsive-md table-striped text-center">
                            <thead>
                                <tr>
                                    <th class="text-center">ID</th>
                                    <th class="text-center">First Name</th>
                                    <th class="text-center">Last Name</th>
                                    <th class="text-center">Subject</th>
                                    <th class="text-center">Update</th>
                                    <th class="text-center">Remove</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${TrainerList}" var="t">
                                    <tr>
                                        <td class="pt-3-half">${t.trainerid}</td>
                                        <td class="pt-3-half">${t.firstname}</td>
                                        <td class="pt-3-half">${t.lastname}</td>
                                        <td class="pt-3-half">${t.subject}</td>
                                        <td class="pt-3-half">
                                            <form action="preupdate" method="POST">
                                                <input name="TrainerID" value="${t.trainerid}" type="hidden">
                                                <input type="submit" value="UPDATE" class="btn btn-primary btn-rounded btn-sm my-0"></form>
                                        </td>
                                        <td class="pt-3-half">                                                                                 
                                            <form action="delete" method="POST">
                                                <input name="TrainerID" value="${t.trainerid}" type="hidden">
                                                <input type="submit" value="DELETE" class="btn btn-danger btn-rounded btn-sm my-0"></form>
                                        </td>
                                    </tr>
                                </tbody>
                            </c:forEach>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
