# 🎨 Book Management System
📚 **Spring MVC 구조 기반 도서 관리 시스템**  
🔹 **개인 프로젝트**  
📅 **개발 기간:** 2023.03.18 ~ 2023.03.24


<br/>


## 🚀 Getting Started
### 🛠 Requirements  
For building and running the application you need:
- **JDK** `>= 11.0.0`  
- **eclipse** `2020-09`  
- **Tomcat** `>= 8.5.85`  

### 📦 Installation  
```bash
$ git clone https://github.com/seung-mii/Book-Management-System.git
$ cd Book-Management-System
```


### 🖥 Execution
``` bash
# Tomcat과 eclipse 연동 후 Tomcat 서버 실행
$ curl http://localhost:8080/home
```

<br/>

## 🔧 Tech Stack
### ⚙️ Environment  
<p align="left">
  <img src="https://img.shields.io/badge/Visual%20Studio%20Code-007ACC?style=for-the-badge&logo=visualstudiocode&logoColor=white">
  <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white">
  <img src="https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white">
</p>

### 🛠️ Development  
#### Frontend
<p align="left">
  <img src="https://img.shields.io/badge/JSP-007396?style=for-the-badge&logo=java&logoColor=white">
  <img src="https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white">
  <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black">
  <img src="https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white">
</p>


#### Backend
<p align="left">
  <img src="https://img.shields.io/badge/Spring-6DB33F?style=for-the-badge&logo=spring&logoColor=white">
  <img src="https://img.shields.io/badge/Apache%20Maven-C71A36?style=for-the-badge&logo=apachemaven&logoColor=white">
  <img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white">
  <img src="https://img.shields.io/badge/Tomcat-F8DC75?style=for-the-badge&logo=apachetomcat&logoColor=black">
</p>


<br/>

## ✨ Key Features
### 💡 책 정보 생성, 조회, 수정, 삭제
- Spring MVC 기반으로 RESTful API를 구현했습니다.
- MyBatis를 활용하여 데이터베이스를 연동했습니다.
- SQL 쿼리를 작성해 데이터 접근 객체(DAO)와 연결했습니다.


<br/>


## 🏛️ Architecture
### 📂 디렉토리 구조
```bash
├── README.md
└── backend/
    ├── pom.xml
    ├── query/
    │   ├── create_book_table.sql
    │   └── create_database.sql
    ├── src/
    │   └── main/
    │       ├── java/
    │       │   └── sample/spring/yse/
    │       │       ├── BookController.java
    │       │       ├── BookDao.java
    │       │       ├── BookService.java
    │       │       └── BookServiceImpl.java
    │       ├── resources/
    │       │   ├── log4j.xml
    │       │   └── sqlmap/book_SQL.xml
    │       └── webapp/
    │           ├── WEB-INF/
    │           │   ├── web.xml
    │           │   ├── spring/
    │           │   │   ├── root-context.xml
    │           │   │   └── appServlet/servlet-context.xml
    │           │   └── views/ # jsp 파일 저장
    │           │       └── book/
    │           │           ├── category.jsp
    │           │           ├── create.jsp
    │           │           ├── detail.jsp
    │           │           ├── footer.jsp
    │           │           ├── home.jsp
    │           │           ├── list.jsp
    │           │           ├── search.jsp
    │           │           └── update.jsp
    │           └── resources/ # css, js 파일 저장
    │               ├── css/
    │               │   ├── book-detail.css
    │               │   ├── book-list.css
    │               │   ├── footer.css
    │               │   ├── header.css
    │               │   └── slide.css
    │               ├── image/
    │               │   └── ...
    │               └── js/
    │                   ├── book-category.js
    │                   └── slide.js
    └── target/
        ├── classes/
        │   ├── sqlmap/book_SQL.xml 
        │   └── log4j.xml
        └── m2e-wtp/
            └── web-resources/META-INF/maven/sample.spring/yse/
                ├── pom.properties
                └── pom.xml


```

<br/>

<p align="right">
  <a href="https://github.com/seung-mii/Book-Management-System/tree/main">
    <img src="https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fseung-mii%2FBook-Management-System&count_bg=%23748DA6&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=hits&edge_flat=false">
  </a>
</p>
