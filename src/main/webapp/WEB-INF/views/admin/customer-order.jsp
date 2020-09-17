<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<title>고객 주문 정보</title>
    <script src="/js/jquery-3.2.1.min.js"></script>
    <script src="/js/bespoke-admin.js"></script>
    <script>
    
    $(function(){
	    $(".clickable-row").click(function() {
	        window.location = $(this).data("href");
	    }); //clickable-row_click
    }); // ready 
    </script>
</head>
<body>
<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3">
	        <h1 class="h2">주문정보 - ${orderCount}건</h1>
      </div>  
   <div class="table-responsive-sm">
        <table class="table text-center table-sm">
        <thead>
        <tr>
			<th>주문번호</th>
			<th>고객이름</th>
			<th>고객번호</th>
			<th>사이즈번호</th>
			<th>진행현황</th>
			<th>주문일</th>
			<th>가봉일</th>
			<th>납품일</th>
			<th>납품가</th>
			<th>선수금</th>
			<th>미수금</th>
			<th>완료여부</th>
		</tr>        
        </thead>
  <c:forEach items="${orderList}" var="orderList">
		<tr align="center" height=30 class='clickable-row' data-href='/admin/customerOrderDetail?o_id=${o_id}' onclick="window.location='#';">
            <td><c:out value="${orderList.o_id}"/></td>
            <td><c:out value="${orderList.c_name}"/></td>
            <td><c:out value="${orderList.customerId}"/></td>
            <td><c:out value="${orderList.ms_id}"/></td>
            <td><c:out value="${orderList.work_state}"/></td>
            <td><c:out value="${orderList.order_day}"/></td>
            <td><c:out value="${orderList.fitting_day}"/></td>
            <td><c:out value="${orderList.delivery_day}"/></td>
            <td><c:out value="${orderList.total_price}"/></td>
            <td><c:out value="${orderList.pre_paid}"/></td>
            <td><c:out value="${orderList.balance}"/></td>
            <td><c:out value="${orderList.completion_b}"/></td>
        </tr>
  </c:forEach>
        </table>
</div>
<%--             <td>orderList memo : <c:out value="${orderList.memo}"/></td>
            <td>orderList service_t : <c:out value="${orderList.service_t}"/></td>
            <td>orderList tk_id : <c:out value="${orderList.tk_id}"/></td>
            <td>orderList fixed_price : <c:out value="${orderList.fixed_price}"/></td>
            <td>orderList service_price : <c:out value="${orderList.service_price}"/></td>
            <td>orderList o_file : <c:out value="${orderList.o_file}"/></td> --%>

</main>
</body>
</html>
<%-- <td>orderList o_id: <c:out value="${orderList.o_id}"/></td>
            <td>orderList c_name : <c:out value="${orderList.c_name}"/></td>
            <td>orderList customer_id : <c:out value="${orderList.customerId}"/></td>
            <td>orderList ms_id : <c:out value="${orderList.ms_id}"/></td>
            <td>orderList work_state : <c:out value="${orderList.work_state}"/></td>
            <td>orderList order_day : <c:out value="${orderList.order_day}"/></td>
            <td>orderList fitting_day : <c:out value="${orderList.fitting_day}"/></td>
            <td>orderList delivery_day : <c:out value="${orderList.delivery_day}"/></td>
            <td>orderList total_price : <c:out value="${orderList.total_price}"/></td>
            <td>orderList pre_paid : <c:out value="${orderList.pre_paid}"/></td>
            <td>orderList balance : <c:out value="${orderList.balance}"/></td>
            <td>orderList completion_b : <c:out value="${orderList.completion_b}"/></td> --%>

<%-- ${orderList.o_id}
${orderList.c_name}
${orderList.customer_id}
${orderList.order_day}
${orderList.fitting_day}
${orderList.delivery_day}
${orderList.total_price}
${orderList.pre_paid}
${orderList.balance}
${orderList.memo}
${orderList.completion_b}
${orderList.tk_id}
${orderList.fixed_price}
${orderList.service_price}
${orderList.o_file}
${orderList.ms_id}
${orderList.work_state}
${orderList.service_t}

 --%>