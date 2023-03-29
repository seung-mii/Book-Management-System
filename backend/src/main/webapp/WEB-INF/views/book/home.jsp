<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<head>
		<title>HomePage</title>
	    
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/> 
        <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
        
	    <link href="${pageContext.request.contextPath}/resources/css/header.css" rel="stylesheet" type="text/css" />
	    <link href="${pageContext.request.contextPath}/resources/css/slide.css" rel="stylesheet" type="text/css"/>  
	    <link href="${pageContext.request.contextPath}/resources/css/book-list.css" rel="stylesheet" type="text/css" />  
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
	                        <a href="/home" style="font-weight: 700;">HOME</a>
	                    </li>
		                <li class="item">
		                	<c:if test="${item.country eq '국내만화'}">
                    			<div class="item_name" style="font-weight: 700;">국내만화</div>
		                	</c:if>
		                	<c:if test="${item.country ne '국내만화'}">
                    			<div class="item_name">국내만화</div>
		                	</c:if>
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
		                	<c:if test="${item.country eq '일본만화'}">
                    			<div class="item_name" style="font-weight: 700;">일본만화</div>
		                	</c:if>
		                	<c:if test="${item.country ne '일본만화'}">
                    			<div class="item_name">일본만화</div>
		                	</c:if>
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
		                	<c:if test="${item.country eq '미국만화'}">
                    			<div class="item_name" style="font-weight: 700;">미국만화</div>
		                	</c:if>
		                	<c:if test="${item.country ne '미국만화'}">
                    			<div class="item_name">미국만화</div>
		                	</c:if>
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
	
        <h3>▸ 추천도서</h3>
        <section class="slide">
            <div class="inner">
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <img src="${pageContext.request.contextPath}/resources/image/image1.jpeg" alt="" />
                        </div>
                        <div class="swiper-slide">
                            <img src="${pageContext.request.contextPath}/resources/image/image2.jpeg" alt="" />
                        </div>
                        <div class="swiper-slide">
                            <img src="${pageContext.request.contextPath}/resources/image/image3.jpeg" alt="" />
                        </div>
                        <div class="swiper-slide">
                            <img src="${pageContext.request.contextPath}/resources/image/image4.jpeg" alt="" />
                        </div>
                        <div class="swiper-slide">
                            <img src="${pageContext.request.contextPath}/resources/image/image5.jpeg" alt="" />
                        </div>
                        <div class="swiper-slide">
                            <img src="${pageContext.request.contextPath}/resources/image/image6.jpeg" alt="" />
                        </div>
                        <div class="swiper-slide">
                            <img src="${pageContext.request.contextPath}/resources/image/image7.jpeg" alt="" />
                        </div>
                        <div class="swiper-slide">
                            <img src="${pageContext.request.contextPath}/resources/image/image8.jpeg" alt="" />
                        </div>
                        <div class="swiper-slide">
                            <img src="${pageContext.request.contextPath}/resources/image/image1.jpeg" alt="" />
                        </div>
                        <div class="swiper-slide">
                            <img src="${pageContext.request.contextPath}/resources/image/image2.jpeg" alt="" />
                        </div>
                        <div class="swiper-slide">
                            <img src="${pageContext.request.contextPath}/resources/image/image3.jpeg" alt="" />
                        </div>
                        <div class="swiper-slide">
                            <img src="${pageContext.request.contextPath}/resources/image/image4.jpeg" alt="" />
                        </div>
                        <div class="swiper-slide">
                            <img src="${pageContext.request.contextPath}/resources/image/image5.jpeg" alt="" />
                        </div>
                        <div class="swiper-slide">
                            <img src="${pageContext.request.contextPath}/resources/image/image6.jpeg" alt="" />
                        </div>
                        <div class="swiper-slide">
                            <img src="${pageContext.request.contextPath}/resources/image/image7.jpeg" alt="" />
                        </div>
                        <div class="swiper-slide">
                            <img src="${pageContext.request.contextPath}/resources/image/image8.jpeg" alt="" />
                        </div>
                    </div>
                    <div class="swiper-prev">
                        &lang;
                    </div>
                    <div class="swiper-next">
                        &rang;
                    </div>
                </div>
            </div>
	    </section>
            
		<%@ include file="list.jsp" %>
		<%@ include file="footer.jsp" %>
	    <script src="${pageContext.request.contextPath}/resources/js/slide.js"></script>
	</body>
</html>