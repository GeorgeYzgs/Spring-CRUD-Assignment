<%-- 
    Document   : create
    Created on : Mar 24, 2020, 2:11:36 PM
    Author     : George.Giazitzis
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <link href="css/maincss.css" rel="stylesheet"/>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="span12">
                    <form:form cssClass="form-horizontacssClassl" action='saveNew' method="POST"
                               modelAttribute="newTrainer">
                        <fieldset>
                            <div id="legend">
                                <legend class="">Create Trainer:</legend>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="firstname">First Name</label>
                                <div class="controls">
                                    <form:input path="firstname" cssClass="input-xlarge"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="lastname">Last Name</label>
                                <div class="controls">
                                    <form:input path="lastname" cssClass="input-xlarge"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="subject">Subject</label>
                                <div class="controls">
                                    <form:input path="subject" cssClass="input-xlarge"/>
                                </div>
                            </div>
                            <br><br>
                            <div class="control-group">
                                <!-- Button -->
                                <div class="controls">
                                    <button class="btn btn-success">Create</button>
                                </div>
                            </div>
                        </fieldset>
                    </form:form>
                </div>
            </div>
        </div>
    </body>
</html>
