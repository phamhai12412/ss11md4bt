<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="bt.customer.model.Customer" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Customer</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        body{
            text-align: center;
        }
    </style>
</head>
<body>
<h1>Danh sách khách hàng</h1>

<%
    List<Customer> customerList = new ArrayList<>();
    customerList.add(new Customer("Mai Văn Hoàn","1983-08-20","Hà Nội","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUHK_xd4GHWvzXkA3DygGiU3---JdQdHXbA_uTguFvckcwsMDakFodlYlaQMv4p6fWM5I&usqp=CAU"));
    customerList.add(new Customer("Nguyễn Văn Nam","1983-08-21","Bắc Giang","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSla-p7MqWVSLL2rpSQHlxEO6mKceKYPvZjo4oslefoeXE7-oMcRHP5IfT3qgllHC8kKvQ&usqp=CAU"));
    customerList.add(new Customer("Nguyễn Thái Hòa","1983-08-22","Nam Định","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLg7YYue_VyRsQLCwmguYP8nSLBwe24G8WgqJr8i_YxHwyHXbn9wqkZXAwdAvSGF9kVMk&usqp=CAU"));
    customerList.add(new Customer("Trần Đăng Khoa","1983-08-17","Hà Tây","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoTK-ngpWCjKOd5TDmP8JmRSAD40hLharEf9PbSuT_ZArZzRBedZgWWTV1FXFvw0UO4_M&usqp=CAU"));
    customerList.add(new Customer("Nguyễn Đình Thi","1983-08-19","Hà Nội","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-Czjifv08rxeMdmhsGpNSYPtfnDDhncBHkQ&usqp=CAU"));
    %>
<table class="table">
    <thead>
    <tr>
        <th scope="col">STT</th>
        <th scope="col">Tên</th>
        <th scope="col">Ngày Sinh</th>
        <th scope="col">Địa chỉ</th>
        <th scope="col">Ảnh</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="<%=customerList%>" var="customer" varStatus="iterator">
    <tr>
        <th scope="row" class="align-middle">${iterator.count}</th>
        <td class="align-middle">${customer.name}</td>
        <td class="align-middle">${customer.birthday}</td>
        <td class="align-middle">${customer.address}</td>
        <td class="align-middle"><img src="${customer.avatar}" alt="avatar" width="100px"></td>
    </tr>
    </c:forEach>

    </tbody>
</table>
</body>
</html>