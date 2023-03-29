<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
		<title>책 상세</title>
		
	    <link href="${pageContext.request.contextPath}/resources/css/header.css" rel="stylesheet" type="text/css" />
	    <link href="${pageContext.request.contextPath}/resources/css/book-detail.css" rel="stylesheet" type="text/css" />  
	</head>
	<body>
	    <header>
	        <div class="top_menu">
	            <h1>OK24 Comics</h1>
	            <nav>
	                <ul class="sub_menu">
	                    <li> 
	                        <a href="javascript:void(0)">HOME</a>
	                    </li>
	                    <li> 
	                        <a href="javascript:void(0)">로그인</a>
	                    </li>
	                    <li> 
	                        <a href="javascript:void(0)">회원가입</a>
	                    </li>
	                    <li> 
	                        <a href="javascript:void(0)">고객센터</a>
	                    </li>
	                    <li> 
	                        <a href="javascript:void(0)">제휴문의</a>
	                    </li>
	                    <li> 
	                        <a href="javascript:void(0)">회사소개</a>
	                    </li>
	                </ul>
	            </nav>
	        </div>
	        <nav>
				<form method="POST">
		            <ul class="main_menu">
	                    <li> 
	                        <a href="/home">HOME</a>
	                    </li>
		                <li class="item">
                   			<div class="item_name">국내만화</div>
		                    <ul class="item_contents">
		                        <li>
									<a href="/category?country=대한민국&genre=순정만화">
										순정만화
									</a>
								</li>
		                        <li>
									<a href="/category?country=대한민국&genre=소년만화">
										소년만화
									</a>
								</li>
		                        <li>
									<a href="/category?country=대한민국&genre=성인만화">
										성인만화
									</a>
								</li>
		                        <li>
									<a href="/category?country=대한민국&genre=기획도서">
										기획도서
									</a>
								</li>
		                        <li>
									<a href="/category?country=대한민국&genre=만화잡지">
										만화잡지
									</a>
								</li>
		                    </ul>
		                </li>
		                <li class="item">
                   			<div class="item_name">일본만화</div>
		                    <ul class="item_contents">
		                        <li>
									<a href="/category?country=일본&genre=순정만화">
										순정만화
									</a>
								</li>
		                        <li>
									<a href="/category?country=일본&genre=소년만화">
										소년만화
									</a>
								</li>
		                        <li>
									<a href="/category?country=일본&genre=성인만화">
										성인만화
									</a>
								</li>
		                        <li>
									<a href="/category?country=일본&genre=기획도서">
										기획도서
									</a>
								</li>
		                    </ul>
		                </li>
		                <li class="item">
                   			<div class="item_name">미국만화</div>
		                    <ul class="item_contents">
		                        <li>
									<a href="/category?country=미국&genre=DC 코믹스마블">
										DC 코믹스마블
									</a>
								</li>
		                        <li>
									<a href="/category?country=미국&genre=코믹스리터러리">
										코믹스 리터러리
									</a>
								</li>
		                        <li>
									<a href="/category?country=미국&genre=그래픽노블">
										그래픽노블
									</a>
								</li>
		                    </ul>
		                </li>
		            </ul>
				</form>
	        </nav>
	    </header>

	    <section>
	        <h3>▸ 책 상세</h3>
	        <table>
	            <tbody class="detail">
	                <tr>
	                    <td>제목</td> 
	                    <td>${ data.title }</td>
	                </tr>
	                <tr>
	                    <td>카테고리</td>
	                    <td>${ data.category }</td>
	                </tr>
	                <tr>
	                    <td>국가</td>
	                    <td>${ data.country }</td>
	                </tr>
	                <tr>
	                    <td>장르</td>
	                    <td>${ data.genre }</td>
	                </tr>
	                <tr>
	                    <td>가격</td>
	                    <td><fmt:formatNumber type="number" maxFractionDigits="3" value="${data.price}" /> 원 </td>
	                </tr>
	                <tr class="last_tr">
	                    <td>입력일</td>
	                    <td><fmt:formatDate value="${data.insert_date}" pattern="yyyy.MM.dd HH:mm:ss" /></td>
	                </tr>
	            </tbody>
	        </table>
	        <div class="btn">
	            <button onClick="location.href='/update?bookId=${bookId}'">수정</button>
				<form method="POST" action="/delete">
					<input type="hidden" name="bookId" value="${bookId}" />
					<input id="button" type="submit" value="삭제"/>
				</form>
	        </div>
			<a href="/home" id="tolist">
				홈으로
			</a>
	    </section>
	    
		<%@ include file="footer.jsp" %>
	</body>
</html>