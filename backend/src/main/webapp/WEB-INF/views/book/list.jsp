<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<html>  
	<head>  
		<title>책 목록</title>  
	</head>  
	<body> 
		<section>
	        <div class="book_setting">
			    <form>
			        <input id="search" type="text" placeholder="검색" name="keyword" value="${keyword}" />
			        <input id="button" type="submit" value="검색" />
			    </form>
                <button onclick="location.href='/create'">생성</button>
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
	</body>  
</html>  