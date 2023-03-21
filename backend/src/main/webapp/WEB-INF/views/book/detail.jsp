<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
		<title>책 상세</title>
		
	    <link href="${pageContext.request.contextPath}/resources/css/header.css" rel="stylesheet" type="text/css" />
	    <link href="${pageContext.request.contextPath}/resources/css/book-detail.css" rel="stylesheet" type="text/css" />  
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
	                    <td>일본</td>
	                </tr>
	                <tr>
	                    <td>장르</td>
	                    <td>소년만화</td>
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
					<input type="submit" value="삭제" 
	        			   style="width: 100px; height: 40px; margin: auto; color: purple; 
	        		      	 	  font-size: 18px; margin-right: 10px; background-color: white;
					  	  	 	  border-radius: 0.5ch; border: 2px solid purple; cursor: pointer;"/>
				</form>
	        </div>
			<a href="/list" id="tolist" style="margin-left:20px; font-size: 18px; color: purple; font-weight: 700;">목록으로</a>
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
	</body>
</html>