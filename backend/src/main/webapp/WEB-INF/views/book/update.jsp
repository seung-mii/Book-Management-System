<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<html>
	<head>
		<title>Modify</title>
	    
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
	        <h3>▸ 책 수정</h3>
			<form method="POST">
		        <table>
		            <tbody>
		                <tr>
		                    <td>제목</td> 
		                    <td>
		                        <input type="text" name="title" value="${ data.title }" required/>
		                    </td>
		                </tr>
		                <tr>
		                    <td>카테고리</td>
		                    <td>
		                        <input type="text" name="category"  value="${ data.category }" />
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
		                        <input type="number" name="price" value="${ data.price }" required/>
		                    </td>
		                </tr>
		            </tbody>
		        </table>
		        <input id="button" type="submit" value="저장" />
			</form>
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