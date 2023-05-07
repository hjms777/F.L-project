<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<html lang="ko">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>IMAL</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
  <link rel="icon" type="image/x-icon" href="<%=cp %>/imal/data/logo/itmal.png" />
  <!-- 일단 붙여넣음 -->
   <link rel="stylesheet" href="https://fonts.sandbox.google.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
  <link rel="stylesheet" href="<%=cp%>/imal/data/main.css" />
  <link rel="stylesheet" href="<%=cp%>/imal/data//media.css" />
  <link rel="stylesheet" type="text/css" href="<%=cp%>/imal/data/board/css/created.css"/>
  <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.21/lodash.min.js" integrity="sha512-WFN04846sdKMIP5LKNphMaWzU7YpMyCU245etK3g/2ARYbPK9Ub18eG+ljU96qKRCWh+quCY7yefSmlkQw1ANQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <!-- GSAP & ScrollToPlugin -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.10.4/gsap.min.js" integrity="sha512-VEBjfxWUOyzl0bAwh4gdLEaQyDYPvLrZql3pw1ifgb6fhEvZl9iDDehwHZ+dsMzA0Jfww8Xt7COSZuJ/slxc4Q==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.10.4/ScrollToPlugin.min.js" integrity="sha512-lZACdYsy0W98dOcn+QRNHDxFuhm62lfs8qK5+wPp7X358CN3f+ml49HpnwzTiXFzETs4++fADePDI+L2zwlm7Q==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <!-- SWIPER -->
  <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css"/>
  <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
  <!-- ScrollMagic -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.8/ScrollMagic.min.js" integrity="sha512-8E3KZoPoZCD+1dgfqhPbejQBnQfBXe8FuwL4z/c8sTrgeDMFEnoyTlH3obB4/fV+6Sg0a0XF+L/6xS4Xx1fUEg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <!-- AOS.js -->
  <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
  <script defer src="<%=cp%>/imal/data/main.js"></script>
<script type="text/javascript">

	function sendIt(){
		
		var f = document.myForm;
		
		str = f.subject.value;
		str = str.trim();
		if(!str){
			alert("\n제목을 입력하세요.");
			f.subject.focus();
			return;
		}
		f.subject.value = str;
		
		str = f.userName.value;
		str = str.trim();
		if(!str){
			alert("\n이름을 입력하세요.");
			f.name.focus();
			return;
		}		
		/*
		if(!isValidKorean(str)){
			alert("\n이름을 정확히 입력하세요.");
			f.name.focus();
			return;
		}
		*/
		f.userName.value = str;
		
		str = f.content.value;
		str = str.trim();
		if(!str){
			alert("\n내용을 입력하세요.");
			f.content.focus();
			return;
		}
		f.content.value = str;
		
		
		f.action = "<%=cp%>/itmall/updatenotice_ok.do";
		f.submit();		
		
	}

</script>

</head>
<body>

<div id="bbs">	
	
	<br/><br/><br/><br/><br/><br/>
	<h2 align="center">Board</h2>
	<br/><br/><br/>

	<form action="" name="myForm" method="post">
	<div id="bbsCreated">
		<div class="bbsCreated_bottomLine">
			<dl>
				<dt>제&nbsp;&nbsp;&nbsp;목</dt>
				<dd>
					<input type="text" name="subject" size="60" maxlength="100"
					class="boxTF"/>
				</dd>
			</dl>
		</div>
		
		<div class="bbsCreated_bottomLine">
			<dl>
				<dt>작성자</dt>
				<dd>
					<input type="text" name="userName" size="60" maxlength="30"
					class="boxTF" value="${sessionScope.customInfo.userName }"/>
				</dd>
			</dl>
		</div>
		
		<div id="bbsCreated_content">
			<dl>
				<dt>내&nbsp;&nbsp;&nbsp;용</dt>
				<dd>
					<textarea row="12" cols="58" name="content" class="boxTA"
					style="resize: none; background-color: #ffffff"></textarea>
				</dd>
			</dl>
		</div>
	
	</div>
	
	<br/><br/><br/>
	
	<div id="bbsCreated_footer">	
	
	<input type="hidden" name="num" value="${dto.num }"/>
	<input type="hidden" name="pageNum" value="${pageNum }"/>
	
	<input type="hidden" name="searchKey" value="${searchKey }"/>
	<input type="hidden" name="searchValue" value="${searchValue }"/>
		
	
	<input type="button" value=" 수정하기 " class="white-btn" onclick="sendIt();"/>	
	<input type="button" value=" 수정취소 " class="black-btn" 
	onclick="javascript:location.href='<%=cp%>/itmall/listnotice.do?${params }';"/>	
	</div>	
	
	</form>

</div>





</body>
</html>