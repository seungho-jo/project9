<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.util.*"    
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<c:set var = "path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="utf-8"/>
<%
	String[] loc = {"강원도","경기도","경상남도","경상북도","광주광역시","대구광역시","대전광역시",
			"부산광역시","서울특별시","세종특별자치시","울산광역시","인천광역시","전라남도","전라북도","제주특별자치도",
			"충청남도","충청북도"};
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오늘의 수업</title>
<link rel="stylesheet" href="css/gosuform.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	function clicksubmit(){
		confirm('제출하시겠습니까?\n제출이 완료되면 수정이 불가능합니다.');
	}
	function divhide(){
		if($('#tooltip2').css('display')=='block'){
			$('#tooltip2').css('display','none');
		} else {
			$('#tooltip2').css('display','block');
		}
	}
	function divhide2(){
		if($('#tooltip3').css('display')=='block'){
			$('#tooltip3').css('display','none');
		} else {
			$('#tooltip3').css('display','block');
		}
	}

</script>
</head>
<body>
	
	<jsp:include page="header.jsp"/>
	<div id="backcolor">
	<section>	
		<div id="gosuform1">
		<h1>고수신청</h1>
		
			<form id="gosuform1_action" action="joinProc_jsp" method="post">
				<h3>고수 홍길동님에 대해 알려주세요.</h3>
				<table id="first_table">
					<tr><td>활동할 닉네임</td></tr>
					<tr><td><input type="text" name="nick" placeholder="사용하실 닉네임을 입력해주세요."/><input type="button" value="중복검사" id="nickCheck"></td></tr>
					<tr><td>고수소개</td></tr>
					<tr><td><textarea name="info" placeholder="-경력&#13;&#10;-경험담&#13;&#10;-자격증"></textarea></td></tr>
					<tr><td>이력(권장사항)</td></tr>
					<tr><td><textarea name="career" placeholder="재능과 관련된 이력을 입력해주세요."></textarea></td></tr>
					<tr><td>소셜미디어(권장사항)</td></tr>
					<tr><td><input type="text" name="sns" placeholder="SNS 주소를 입력해주세요."/></td></tr>
				</table>
				<h3>고수 홍길동님의 클래스에 대해 알려주세요.</h3>
				<table id="second_table">
					<tr><td>분야선택</td></tr>
					<tr>
						<td>				
							<select name="select_cate">
								<option selected>카테고리</option>
								<option value="레슨">레슨</option>								
								<option value="홈리빙">홈/리빙</option>								
								<option value="이벤트">이벤트</option>								
								<option value="비즈니스">비즈니스</option>								
								<option value="디자인개발">디자인/개발</option>								
								<option value="건강미용">건강/미용</option>								
								<option value="알바">알바</option>								
								<option value="기타">기타</option>								
							</select>
						</td>
					</tr>
					<tr><td>진행방식</td></tr>
					<tr>
						<td>				
							<select name="select_way">
								<option selected>진행방식</option>
								<option value="대면">대면</option>								
								<option value="비대면">비대면</option>								
								<option value="상관없음">상관없음</option>															
							</select>
						</td>
					</tr>
					<tr><td>지역</td></tr>
					<tr>
						<td>				
							<select name="select_loc">
								<option selected>지역</option>
								<%for(int i=0; i<loc.length; i++) { %>
								<option><%=loc[i] %></option>								
								<%} %>													
							</select>
						</td>
					</tr>
				</table>
				<h3>고수 홍길동님의 클래스 수강료에 대해 알려주세요.</h3>
				<h5>수강생이 지불하는 클래스 최종 가격으로, VAT 10%가 포함된 가격입니다.</h5>
				<div id="tooltip">
					<img id="tooltip_img" onclick="divhide()" src="img/icon-question-circle@2x.png">
				</div>
				<div id="tooltip2" style="display: none;">
					<span>
					클래스의 경우 1시간 수업료는 노동법 기준을 준수하고 있습니다. <br>
					참여 인원을 고려하여 1시간 수업료를 최저임금 이상으로 책정해주세요.<br>
					전자책의 경우 최소 5천원 부터 가능합니다.<br>
					</span>
				</div>
				<table id="third_table">
					<tr>
						<td>
							시간당가격
						<td>
						<td>
							1회당 클래스 시간
						<td>
						<td>
							총 클래스 횟수
						<td>						
					</tr>
					<tr>
						<td>
							<input type="text"  name="price" placeholder="10,000"/>
							<span id="unit">원</span>
						</td>						
						<td>
							X
						</td>
						<td>
							<input type="text"  name="hour" placeholder="2"/>
							<span id="unit">시간</span>
						</td>
						<td>
							X
						</td>
						<td>
							<input type="text"  name="cnt" placeholder="1" value disabled/>
							<span id="unit">회</span>						
						</td>
					</tr>
				</table>
				<div id="tot_div">
					<span id="unit2">=</span>
					<span id="unit3">최종수강료</span>
					<input type="text"  name="tot" placeholder="20,000" value disabled/>
					<span id="unit4">원</span>
				</div>
				<h3>최종 정산금 안내</h3>
				<h5 id="h5">고수님에게 정산되는 금액으로, 최종 수강료에서 VAT, 연결 수수료, 소득세 원천징수가 제외됩니다.</h5>
				<div id="tooltip_">
					<img id="tooltip_img2" onclick="divhide2()" src="img/icon-question-circle@2x.png">
				</div>
				<div id="tooltip3" style="display: none;">
					<span>
					1.최종 수강료는 VAT를 포함하니 이를 고려하여 책정하여 주시길 바랍니다.<br>
					2.공급가액은 최종 수강료에서 VAT10%를 제외한 금액을 의미합니다.<br>
					3.VAT는 최종 수강료에서 공급가액을 제외한 금액입니다.(국세청 납부)<br>
					4.연결 수수료의 경우 원데이는 공급가액의 20% , 다회차는 1시간 공급가액입니다.<br>
					5.소득세는 공급가액-연결수수료를 제외한 금액의 3.3%입니다. (국세청 납부)<br>
					6.책정하신 최종 수강료에서 VAT, 수수료, 소득세를 제한 금액을 정산해 드립니다.<br>
					</span>
				</div>
				<table id="fourth_table">
					<tr>
						<td>
							최종수강료
						<td>
						<td>
							VAT 10%
						<td>
						<td>
							연결 수수료
						<td>						
						<td>
							소득세 원천징수 3.3%
						<td>						
					</tr>
					<tr>
						<td>
							<input type="text"  name="tot2" placeholder="20,000" value disabled/>
							<span id="unit5">원</span>
						</td>						
						<td id="minus">
							ㅡ
						</td>
						<td>
							<input type="text"  name="hour" placeholder="1,818" value disabled/>
							<span id="unit5">원</span>
						</td>
						<td id="minus">
							ㅡ
						</td>
						<td>
							<input type="text"  name="cnt" placeholder="3,636" value disabled/>
							<span id="unit5">원</span>						
						</td>
						<td id="minus">
							ㅡ
						</td>
						<td>
							<input type="text"  name="cnt" placeholder="480" value disabled/>
							<span id="unit5">원</span>						
						</td>
					</tr>
				</table>
				<div id="tot_div2">
					<span id="unit6">=</span>
					<span id="unit7">최종정산금</span>
					<input type="text"  name="tot" placeholder="14,066" value disabled/>
					<span id="unit8">원</span>
				</div>
				<div id="clear"></div>
			</form>	
			<button onclick="clicksubmit()" id="submit">제출</button>		
		</div>
	
	</section>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
<script src="${path}/js/gosuform.js" type="text/javascript"></script>
</html>