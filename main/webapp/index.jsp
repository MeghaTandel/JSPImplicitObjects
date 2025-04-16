<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Implicit Objects Demo</title>
    </head>
    <body>

        <h1>JSP Implicit Objects Demo</h1>

        <!-- 1. request: Get client information -->
        <h2>Client Request Information</h2>
        <p>Client IP: <%= request.getRemoteAddr()%></p>
        <p>Request Method: <%= request.getMethod()%></p>
        <p>Requested URL: <%= request.getRequestURL()%></p>
 
        <!-- 2. response: Setting a custom header -->
        <%
            response.setHeader("Custom-Header", "JSPDemo");
        %>
        <p>Response Header 'Custom-Header' set successfully!</p>

        <!-- 3. out: Writing output -->
        <h2>Using 'out' to Print Data</h2>
        <%
            out.println("<p>This is printed using 'out' implicit object.</p>");
        %>

        <!-- 4. session: Storing & retrieving session data -->
        <h2>Session Data</h2>
        <%
            session.setAttribute("username", "JohnDoe");
        %>
        <p>Stored in session: username = <%= session.getAttribute("username")%></p>

        <!-- 5. application: Storing global data -->
        <h2>Application Context</h2>
        <%
            application.setAttribute("appName", "JSP Implicit Objects Demo");
        %>
        <p>Application Name: <%= application.getAttribute("appName")%></p>

        <!-- 6. config: Access servlet config -->
        <h2>Servlet Config</h2>
        <p>Servlet Name: <%= config.getServletName()%></p>

        <!-- 7. pageContext: Getting request attributes -->
        <h2>Using PageContext</h2>
        <p>Servlet Context Path: <%= pageContext.getServletContext().getContextPath()%></p>

        <!-- 8. page: Referring to current page -->
        <h2>Page Object</h2>
        <p>Class of 'page' object: <%= page.getClass().getName()%></p>

        <!-- 9. exception: Only works in error pages -->
        <%-- This will work only if this is an error page --%>
        <%-- Uncomment below in an error JSP --%>
        <%-- <h2>Exception Object (Only in Error Pages)</h2> --%>
        <%-- <p>Error Message: <%= exception.getMessage() %></p> --%>

    </body>
</html>
