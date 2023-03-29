<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<html>
	<head>
		<title>책 생성</title>
		
	    <link href="${pageContext.request.contextPath}/resources/css/header.css" rel="stylesheet" type="text/css" />
	    <link href="${pageContext.request.contextPath}/resources/css/slide.css" rel="stylesheet" type="text/css"/>  
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
	        <h3>▸ 책 생성</h3>
			<form method="POST">
		        <table>
		            <tbody>
		                <tr>
		                    <td>제목</td> 
		                    <td>
		                        <input type="text" name="title" required/>
		                    </td>
		                </tr>
		                <tr>
		                    <td>카테고리</td>
		                    <td>
		                        <input type="text" name="category"/>
		                    </td>
		                </tr>
		                <tr>
		                    <td>국가</td>
		                    <td>
		                        <select class="nation" name="country" onchange="showValue(this)" required>
		                            <option value="" disabled selected>국가를 선택하시오</option>
		                            <option value="대한민국">대한민국</option>
		                            <option value="일본">일본</option>
		                            <option value="미국">미국</option>
		                        </select>
		                    </td>
		                </tr>
		                <tr>
		                    <td>장르</td>
		                    <td>
		                        <select class="kor" name="genre">
		                            <option value="" disabled selected>장르를 선택하시오</option>
		                            <option value="순정만화">순정만화</option>
		                            <option value="소년만화">소년만화</option>
		                            <option value="성인만화">성인만화</option>
		                            <option value="기획도서">기획도서</option>
		                            <option value="만화잡지">만화잡지</option>
		                        </select>
		
		                        <select class="jap" name="genre">
		                            <option value="" disabled selected>장르를 선택하시오</option>
		                            <option value="순정만화">순정만화</option>
		                            <option value="소년만화">소년만화</option>
		                            <option value="성인만화">성인만화</option>
		                            <option value="기획도서">기획도서</option>
		                        </select>
		
		                        <select class="usa" name="genre">
		                            <option value="" disabled selected>장르를 선택하시오</option>
		                            <option value="DC 코믹스마블">DC 코믹스마블</option>
		                            <option value="코믹스리터러리">코믹스리터러리</option>
		                            <option value="그래픽노블">그래픽노블</option>
		                        </select> 
		                    </td>
		                </tr>
		                <tr class="last_tr">
		                    <td>가격</td>
		                    <td>
		                        <input type="number" name="price" required/>
		                    </td>
		                </tr>
		            </tbody>
		        </table>
	        	<input id="button" type="submit" value="저장" />
			</form>
	    </section>
	    
		<%@ include file="footer.jsp" %>
	    <script src="${pageContext.request.contextPath}/resources/js/book-category.js"></script>
	</body>
</html>