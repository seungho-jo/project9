<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/css/">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="${path}/css/buy.css">
</head>
<body>
	<jsp:include page="header.jsp"/>
	<section>
		<h1>결제하기</h1>
		<form method="post">
					<table>
			<tr>
				<th>클래스제목</th>
				<td>XXXX</td>
			</tr>
			<tr>
				<th>고수이름</th>
				<td>XXX</td>
			</tr>
			<tr>
				<th>클래스일정</th>
				<td>
					<input type="text" id="datepicker" placeholder="날짜를 입력해주세요."/><br>
					3시간
				</td>
			</tr>
			<tr>
				<th>쿠폰</th>
				<td>
					<select>
						<option>없음</option>
						<option>5%</option>
						<option>10%</option>
						<option>15%</option>
						<option>20%</option>
						<option>25%</option>
						<option>30%</option>
						<option>35%</option>
						<option>50%</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>총금액</th>
				<td>XXX원</td>
			</tr>
			<tr>
				<th colspan="2" align="left">결제방식</th>
			</tr>
			<tr>
				<th colspan="2">
					<ul>
						<li><input type="radio" name="kind" value="count"><a href="#tab1">계좌이체</a></li>
						<li><input type="radio" name="kind" value="credit"><a href="#tab2">카드결제</a></li>
					</ul>
				</th>
			</tr>
		</table>
		<div id="tab1" class="content">
			<input type="radio" name="bank" id="국민은행" value="국민은행"><label for="국민은행">국민은행</label>
			<input type="radio" name="bank" id="신한은행" value="신한은행"><label for="신한은행">신한은행</label>
			<input type="radio" name="bank" id="농협" value="농협"><label for="농협">농협</label><br>
			<input type="radio" name="bank" id="우리은행" value="우리은행"><label for="우리은행">우리은행</label>
			<input type="radio" name="bank" id="카카오뱅크" value="카카오뱅크"><label for="카카오뱅크">카카오뱅크</label>
			<input type="radio" name="bank" id="기업은행" value="기업은행"><label for="기업은행">기업은행</label>
			<h4></h4>
		</div>
		<div id="tab2" class="content">
			<p>카드번호</p>
			<input type="text" name="num1" size="4" maxlength="4">&nbsp;
			<input type="text" name="num2" size="4" maxlength="4">&nbsp;
			<input type="text" name="num3" size="4" maxlength="4">&nbsp;
			<input type="text" name="num4" size="4" maxlength="4">
			<p>유효기간</p>
			<input type="text" name="mm/yy" size="5" maxlength="5" placeholder="MM/YY 로 입력해주세요">
			<p>비밀번호 앞 두자리(MM/YY)</p>
			<input type="password" name="cardPass" size="2" maxlength="2">
		</div>
		<input type="submit" value="결제">
		</form>
	</section>
	<jsp:include page="footer.jsp"/>
</body>
<script type="text/javascript" src="${path}/js/buy.js"></script>
</html>