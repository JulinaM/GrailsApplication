<%@ page import="myapp.Vehicle" %>
<html>
<html>
<head>
    <meta name="layout" content="public"/>
    <title>Home Page</title>
</head>
<body>

<div id="content" role="main">
    <section class="row colset-2-its">
        <h1>Welcome ${name}</h1>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>

        <p>There are all together ${vehicleTotal} vehicles in the database.</p>
        <ul>
            <g:each in="${myapp.Vehicle.list()}" var="vehicle">
                <li>
                    <g:link controller="vehicle" action="show" id="${vehicle.id}">
                        ${vehicle.name} - ${vehicle.year} ${vehicle.make.name} ${vehicle.model.name}
                    </g:link>
                </li>
            </g:each>
        </ul>

        <form action="/home/updateName" method="post" style="margin: 0 auto; width:320px">
            <input type="text" name="name" value="" id="name">
            <input type="submit" name="Update name" value="Update name" id="Update name">
        </form>
    </section>
</div>

</body>
</html>