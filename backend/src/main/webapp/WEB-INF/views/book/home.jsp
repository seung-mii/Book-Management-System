<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<head>
		<title>HomePage</title>
	    
	    <!-- SWIPER -->
	    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
	    <script src="https://unpkg.com/swiper@6.8.4/swiper-bundle.min.js"></script>
	
	    <!-- ScrollMagic -->
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.8/ScrollMagic.min.js"></script>
	    
	    <link href="${pageContext.request.contextPath}/resources/css/header.css" rel="stylesheet" type="text/css" />
	    <link href="${pageContext.request.contextPath}/resources/css/silde.css" rel="stylesheet" type="text/css"/>  
	    <link href="${pageContext.request.contextPath}/resources/css/book-list.css?after" rel="stylesheet" type="text/css" />  
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
	            <ul class="main_menu">
	                <li>HOME</li>
	                <li>국내 만화
	                    <ul class="cartoon_type_1">
	                        <li>순정만화</li>
	                        <li>소년만화</li>
	                        <li>성인만화</li>
	                        <li>기획도서</li>
	                        <li>만화잡지</li>
	                    </ul>
	                </li>
	                <li>일본 만화
	                    <ul class="cartoon_type_2">
	                        <li>순정만화</li>
	                        <li>소년만화</li>
	                        <li>성인만화</li>
	                        <li>기획도서</li>
	                    </ul>
	                </li>
	                <li>미국 만화
	                    <ul class="cartoon_type_3">
	                        <li>DC 코믹스마블</li>
	                        <li>코믹스리터러리</li>
	                        <li>그래픽노블</li>
	                    </ul>
	                </li>
	            </ul>
	        </nav>
	    </header>
	
	    <section>
	        <h3>▸ 추천도서</h3>
	        <!-- <div class="inner">
	            <div class="swiper">
	                <div class="swiper-wrapper">
	                    <div class="swiper-slide">
	                        <img src="../image/flower.jpg" alt=""/>
	                    </div>
	                    <div class="swiper-slide">
	                        <img src="../image/fox.jpg" alt=""/>
	                    </div>
	                    <div class="swiper-slide">
	                        <img src="../image/lightning.jpg" alt=""/>
	                    </div>
	                    <div class="swiper-slide">
	                        <img src="../image/moon.jpg" alt=""/>
	                    </div>
	                    <div class="swiper-slide">
	                        <img src="../image/nature.jpg" alt=""/>
	                    </div>
	                    <div class="swiper-slide">
	                        <img src="../image/space.jpg" alt=""/>
	                    </div>
	                    <div class="swiper-slide">
	                        <img src="../image/flower.jpg" alt=""/>
	                    </div>
	                    <div class="swiper-slide">
	                        <img src="../image/flower.jpg" alt=""/>
	                    </div>
	                    <div class="swiper-slide">
	                        <img src="../image/flower.jpg" alt=""/>
	                    </div>
	                    <div class="swiper-slide">
	                        <img src="../image/flower.jpg" alt=""/>
	                    </div>
	                </div>
	            </div>
	            <div class="swiper-prev">
	                <div>&lang;</div>
	            </div>
	            <div class="swiper-next">
	                <div>&rang;</div>
	            </div>
	        </div> -->
	
	        <div class="book_setting">
	            <div>
				    <form>
				        <input type="text" placeholder="검색" name="keyword" value="${keyword}" />
				        <input type="submit" value="검색" />
				    </form>	
	                <button onclick="location.href='/search'">검색</button>
	                <button onclick="location.href='/create'">생성</button>
	            </div>
	        </div>
	
	        <h3>▸ HOME</h3>
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
	
	    <footer>
	        <ul>
	            <li>
	                <a href="javascript:void(0)">회사소개</a>
	            </li>
	            <li>
	                <a href="javascript:void(0)">인재채용</a>
	            </li>
	            <li>
	                <a href="javascript:void(0)">원고접수</a>
	            </li>
	            <li>
	                <a href="javascript:void(0)">제휴문의</a>
	            </li>
	            <li>
	                <a href="javascript:void(0)">고객센터</a>
	            </li>
	            <li>
	                <a href="javascript:void(0)">개인정보취급방침</a>
	            </li>
	            <li>
	                <a href="javascript:void(0)">이용약관</a>
	            </li>
	        </ul>
	        <hr />
	        <p>Copyright © JSS Inc. All Rights Reserved</p>
	    </footer>
	    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/header.js"></script>
	    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/home.js"></script>
	    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/slide.js"></script>
	</body>
</html>