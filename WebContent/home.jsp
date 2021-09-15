<%@page import="day1.MyUser"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 기본적으로 인코딩 한 것 들어가겠단 의미. (페이지 지시자) -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME</title>
</head>
<body>
	<!-- html 파일과 JSP 파일의 차이점 : JSP 페이지 지시자
	ㄴ> JAVA프로그래밍 -> 웹 애플리케이션 서버(was) -> 서버가 컴파일 -> HTML문서로 응답.
	index.html -> 웹서버 -> 서버에 배포되어 있는 존재하는 파일들을 요청에 대해 바로 응답.
	
	요청 http://localhost:8082/jsp1/파일명(경로) 들어오면 웹서버가 받고 웹서버가 바로 줄 수 없는건 was에 넘기고,
	DB서버까지 가고 다시 DB에서 조회된 쿼리갖고 was로 오고 다시 웹서버로 오며 이제 사용자에게 응답이 간다.
C:\Users\이지환\OneDrive\바탕 화면\JCP0716\jsp_workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\work\Catalina\localhost\jsp1\org\apache\jsp
			.jsp파일은 자바로 변환되고 컴파일되서 바이트 코드로 변환된 후 실행되고 html 문서형식으로 우리에게 나타남
			 --> 
			 
		<!-- 이 소스파일에 자바 코드를 작성할 수 있다. 이를 '스크립 트릿'이라 부름 -->
		<%	// 얘는 스크립트 , <%= 이건 표현식
				LocalDate now = LocalDate.now();		//java.lang 패키지가 아닌 클래스 임포트
				String message = "hello world";
		
		%>
	<h4>I AM JSP</h4>
	<ul>
	<li><%= now%></li>		<!-- 자바코드의 변수값(표현식 - 변수, 수식 등 결과값이 나오는 것이기 때문에
										한 표현식 안에서 두 결과를 쓰지는 못해여.) 출력 해보기 -->
							<%-- <li><%= names[i] + (i+1) 이런식으로 수식은 가능%></li> --%>
	<li><%= message%></li>	<!-- 앞으론 바로 ${message} 기호 사용할 예정이다. -->
	
	<%
		String[] names = {"박세리","김연경","허재","안정환"};
		for(int i = 0; i < names.length; i++){
	%>
		<li><%= i+1 %> : <%= names[i] %></li>	<!-- 한줄에 나오게 하는 것. -->
		<%-- <li><%= names[i] %></li> --%>		<!-- 이 주석 풀고 위에 : 뒤를 지우면 두줄에 나오게 하는 것. -->
		<%
			}
		MyUser my = new MyUser();
		my.setAge(23); 
		my.setName("사나");
		my.setLocation("SEOUL");
		out.print(my);	// 처음 하는 코딩임.
		%>	
	</ul>
	
</body>
</html>