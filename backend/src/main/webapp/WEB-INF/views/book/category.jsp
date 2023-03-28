<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<head>
		<title>책 목록</title>
		
		<link href="${pageContext.request.contextPath}/resources/css/header.css" rel="stylesheet" type="text/css" />
	    <link href="${pageContext.request.contextPath}/resources/css/slide.css" rel="stylesheet" type="text/css"/>  
	    <link href="${pageContext.request.contextPath}/resources/css/book-list.css" rel="stylesheet" type="text/css" />  
	    <link href="${pageContext.request.contextPath}/resources/css/footer.css" rel="stylesheet" type="text/css"/>
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
	        <div class="book_setting">

			    <form>
			        <input id="search" type="text" placeholder="검색" name="keyword" value="${keyword}" />
			        <input id="button" type="submit" value="검색" />
			    </form>	
	               <button onclick="location.href='/create'">생성</button>
	        </div>

			<h3>▸ ${item.country} / ${item.genre}</h3>
		    <table>
		            <thead>
		                <tr>
		                    <td>제목</td>
		                    <td>카테고리</td>
		                    <td>가격</td>
		                </tr>
		            </thead>
		            <tbody>
							<c:forEach var="row" items="${data}">
								<tr>
										<td>
											<a href="/detail?bookId=${row.book_id}">
												${row.title}
											</a>
										</td>
										<td>${row.category}</td>
										<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${row.price}" /></td>
								</tr>
							</c:forEach>
		            </tbody>
	        </table>
        </section>
		<%@ include file="footer.jsp" %>
	</body>
</html>