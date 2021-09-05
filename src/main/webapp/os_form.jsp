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
<link rel="stylesheet" href="css/os_form.css"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script> <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<script type="text/javascript">
	function clicksubmit(){
		confirm('제출하시겠습니까?\n제출이 완료되면 수정이 불가능합니다.');
	}
	
	$(function() {
		$("#datepicker").datepicker();
	});

    $(function() {
        //input을 datepicker로 선언
        $("#datepicker").datepicker({
            dateFormat: 'yy-mm-dd' //Input Display Format 변경
            ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
            ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
            ,changeYear: true //콤보박스에서 년 선택 가능
            ,changeMonth: true //콤보박스에서 월 선택 가능                
            ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
            ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
            ,buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
            ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
            ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
            ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
            ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
            ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
            ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
            ,minDate: "-1M" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
            ,maxDate: "+1M" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)                
        });                    
        
        //초기값을 오늘 날짜로 설정
        $('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)            
    });
</script>
</head>
<body>
	
	<jsp:include page="header.jsp"/>
	<div id="backcolor">
	<section>
		<jsp:include page="osnavi.jsp" />
		<div id="gosuform1">
		<h1>외주요청서</h1>
		
			<form action="uploadAction.jsp" method="post" enctype="multipart/form-data">
				<h3>고수에게 요청할 외주에 대해 적어주세요.</h3>
				<table id="first_table">
					<tr><td>외주제목</td></tr>
					<tr><td><input type="text" name="title" placeholder="외주 제목을 입력해주세요."/></td></tr>
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
					<tr><td>금액</td></tr>
					<tr>
						<td>				
							<input type="text" name="price" placeholder="금액을 입력해주세요. ex) 협의가능"/>
						</td>
					</tr>
					<tr><td>기한</td></tr>
					<tr>
						<td>				
							<input type="text" id="datepicker" placeholder="날짜를 입력해주세요."/>
						</td>
					</tr>
					<tr><td>세금계산서 여부</td></tr>
					<tr>
						<td>				
							<select name="select_tax">
								<option selected>세금계산서</option>
								<option value="필요">필요</option>								
								<option value="불필요">불필요</option>								
								<option value="상관없음">상관없음</option>															
							</select>
						</td>
					</tr>
					<tr><td>구체적인 업무설명</td></tr>
					<tr><td><textarea name="explain" placeholder="-자세하게 적어주세요."></textarea></td></tr>
				</table>		
				<div id="clear"></div>		
			<span>파일업로드</span>
				<input type="file" name="file">				
			<button onclick="clicksubmit()" id="submit" type="submit">제출</button>		
			</form>
		</div>
	
	</section>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
<script src="${path}/js/gosuform.js" type="text/javascript"></script>
</html>