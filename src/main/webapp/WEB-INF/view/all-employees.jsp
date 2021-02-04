<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>
        All Employees
    </title>

</head>

</head>
<body>

    <h2>All employees</h2><br>
    <div>
    <table>

        <tr>
            <th scope="col">Name</th>
            <th scope="col">Surname</th>
            <th scope="col">Department</th>
            <th scope="col">Salary</th>
            <th scope="col">Action</th>
        </tr>
        <c:forEach var="emp" items="${allEmps}">
            <c:url var="updateButton" value="/updateEmployee">
                <c:param name="empId" value="${emp.id}"/>
            </c:url>
            <c:url var="deleteButton" value="/deleteEmployee">
                <c:param name="empId" value="${emp.id}"/>
            </c:url>
            <tr>
            <td>${emp.name}</td>
            <td>${emp.surname}</td>
            <td>${emp.department}</td>
            <td>${emp.salary}</td>
                <td><input type="button"  value="Update" onclick="window.location.href='${updateButton}'">
                    <input type="button"  value="Delete" onclick="window.location.href='${deleteButton}'">
                </td>
        </c:forEach>



    </table>
<br>
    <input type="button" value="Add"
    onclick="window.location.href ='addNewEmployee'"/>
    </div>



</body>





</html>