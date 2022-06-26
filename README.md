# Semi Project

## 목표

### 1. 로그인 페이지 

 - 아이디 찾기 (비동기, 이름, 이메일 -> 아이디)
 - 패스워드 찾기 (비동기, 아이디, 이름 -> 패스워드)
-  bbs패스워드 중복확인부부 참고
- 다른페이지 넘어가면 안됨

### 2. 나의정보

- 사진수정 기능 추가

- 나의정보 페이지에서 사진수정기능이 필요
  - 사진정보 수정할떄 기존사진은 지우면 안됨

### 3. 관리자페이지 상품조회(read) 기능추가

- 관리자페이지에서 확인해야 되는 부분
  - view페이지가 있어야됨

### 4. 상품상세페이지에서 -> review 기능 추가하기 

- bbs의 댓글 기능 참조

- review 테이블 생성 

  ```sql
  create table review(
  rnum int not null auto_increment primary key,
  content varchar(500) not null,
  regdate date not null,
  id varchar(10) not null,
  contentsno int(7) not null,
  foreign key (contentsno) references contents(contentsno)
  );
  ```

- 로그인해야 댓글 쓰기가능한 기능 구현

- 본인이 쓴 댓글만 지우고, 수정

- 상세페이지 리플라이 기능 말고 리뷰기능 추가

- 로그인창 이동하는 기능 넣어줄것

- 댓글은 본인이 쓴것만 지울수 있도록

### 5. community 에 Notice 기능 생성

-  notice 프로젝트 참조
- 생성,수정,삭제 => 관리자만
- 목록, 조회 => 모두
