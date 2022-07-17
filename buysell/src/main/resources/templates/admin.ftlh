<!DOCTYPE html>
<html lang="en">
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1>
<hr>
<h4>Admin panel</h4>
<table>
    <tr>
        <th>Email</th>
        <th>Phone number</th>
        <th>Activity</th>
        <th>Roles</th>
        <th>Ban</th>
        <th>Grant permission</th>
        <th>Details...</th>
    </tr>
    <#list users as user>
            <tr>
                <th>${user.email}</th>
                <th>${user.phoneNumber}</th>
                <th><#if user.active>True<#else>False</#if>
                </th>
                <th><#list user.roles as role>${role}<#sep>, </#list></th>
                <th>
                    <form action="/admin/user/ban/${user.id}" method="post">
                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                        <#if user.isActive()>
                            <input type="submit" value="BAN">
                            <#else><input type="submit" value="UNBAN">
                        </#if>
                    </form>
                </th>
                <th>
                    <a href="/admin/user/edit/${user.id}">Edit</a>
                </th>
                <th>
                    <a href="/user/${user.id}">User Details...</a>
                </th>
            </tr>
        <#else>
        <h3>No users</h3>
    </#list>
</table>
</body>
</html>