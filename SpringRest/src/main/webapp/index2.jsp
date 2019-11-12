<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>RESTful 웹서비스 클라이언트(JSON)</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		boardList();//모든 사용자 정보 요청
		boardSelect();//한 사람 선택시 처리할 이벤트 등록
		boardDelete();//한 사람 삭제시 처리할 이벤트 등록
		boardUpdate();//한 사람 정보 수정시 처리할 이벤트 등록
		boardInsert();//새 고객 정보 추가시 처리할 이벤트 등록
		boardAll();
		boardSearch();
		init();
	});
	
	//모든 사용자 목록 조회 요청
	function boardList() {//REST 서버에 모든 고객정보에 대한 ajax 요청 보내기	
		$.ajax({
			url:'board',
			type:'get',
			dataType:'json',//서버가 보내주는 데이터 타입
			success: function(data){
				boardListResult(data);
			},
			error: function(xhr, status, msg){
				alert("상태값:" + status + " http 에러 메시지: " + msg);	
			}			
		});
	}//boardList
	
	function boardListResult(data){
		$('tbody').empty();
		$.each(data, function(idx, item){
			$('<tr>').append($('<td>').html(item.num))
					 .append($('<td>').html(item.pass))
					 .append($('<td>').html(item.name))
					 .append($('<td>').html(item.wdate))
					 .append($('<td>').html(item.title))
					 .append($('<td>').html(item.content))
					 .append($('<td>').html(item.count))
					 .append($('<td>').html('<button id="btnSelect">조회</button>'))
					 .append($('<td>').html('<button id="btnDelete">삭제</button>'))
					 .append($('<input type="hidden" id="hidden_num">').val(item.num))
					 .appendTo('tbody');
		});
	}
	
	//사용자 조회 요청
	function boardSelect() {
		$('body').on('click', '#btnSelect', function(){
			var num = $(this).closest('tr').find('#hidden_num').val();
			$.ajax({
				url:'board/' + num,
				type:'get',
				dataType:'json',
				success: boardSelectResult
			});
		});
	}//boardelect

	function boardSelectResult(data){
		$('#num').val(data.num);
		$('#pass').val(data.pass);
		$('#name').val(data.name);
		$('#wdate').val(data.wdate);
		$('#title').val(data.title);
		$('#content').val(data.content);
		$('#count').val(data.count);
	}
	//사용자 삭제 요청
	function boardDelete() {
		$('body').on('click', '#btnDelete', function(){
			var num = $(this).closest('tr').find('#hidden_num').val();
			$.ajax({
				url:'board/' + num,
				type:'delete',
				dataType:'json',
				success: boardList
			});
		});
	}//boardDelete
	
	
	//사용자 수정 요청
	function boardUpdate() {
		$('#btnUpdate').on('click', function(){
			var num = $('#num').val();
			var name = $('#name').val();
			
			$.ajax({
				url : 'board/',
				type : 'put',
				dataType : 'json',
				data : JSON.stringify({
					num : num,
					name : name,
				}),
				contentType: 'application/json',
				success: function(){
					clear();
					boardList();
				}			
			});
		});
		
	}//boardUpdate

	//사용자 등록 요청
	function boardInsert() {
        $('#btnInsert').on('click',function(){
            //1. 입력값 받아오기
            var num= $('#num').val();
            var pass = $('#num').val();
            var name=$('#name').val();
    		var wdate = $('#wdate').val();
    		var title = $('#title').val();
    		var content = $('#content').val();
    		var count = $('#count').val();
    		
            //2. ajax 요청 보내기
            $.ajax({
                url : 'board/',
                type: 'post',
                dataType : 'json', //from server
                data: JSON.stringify({
                    num: num,
					pass : pass,                    
                    name: name,
                    wdate : wdate,
                    title : title,
                    content : content,
                    count : count
                }),
                contentType: 'application/json', // to server
                success: function(){
                	clear();
                	boardList(); //3. 성공시 화면 refresh
                }
            });
        });   
    }//boardInsert
    
    function boardAll(){
    	$('#btnAll').on('click', function(){
    		$.ajax({
    			url:'board',
    			type:'get',
    			dataType:'json',//서버가 보내주는 데이터 타입
    			success: function(data){
    				boardListResult(data);
    			},
    			error: function(xhr, status, msg){
    				alert("상태값:" + status + " http 에러 메시지: " + msg);	
    			}			
    		});
    	});
    }
   	function boardSearch(){
   		$('#btnSearch').on('click', function(){
   			var condition = $('#condition').val();
   			var word = $('#word').val();
	   			$.ajax({
   					url : 'board/' + condition + '/' + word,
   					type : 'get',
   					dataType : 'json',
   					success: function(data){
	   					boardListResult(data);
  					},
  	    			error: function(){
  	    				alert("값을 입력해주세요");
  	    				clear();
  	                	boardList(); 
  	    			}	
  				});
   			});
   		}
    
    function clear(){
    	$('#num').val('');
    	$('#pass').val('');
    	$('#name').val('');
    	$('#wdate').val('');
    	$('#title').val('');
    	$('#content').val('');
    	$('#count').val('');
    }
	//초기화
	function init() {
		//초기화 버튼 클릭
		$('#btnInit').on('click', function() {	
			  claer();
		});
	}
</script>
</head>
<body>
	<div class="container">
		<form id="form1" class="form-horizontal">
			<h2>board Management</h2>
			<div class="form-group">
				<label>번호:</label> <input type="text" class="form-control"	id="num">
			</div>
			<div class="form-group">
				<label>비밀번호:</label> <input type="text" class="form-control"	id="pass">
			</div>
			<div class="form-group">
				<label>이름:</label> <input type="text" class="form-control"	id="name">
			</div>
			<div class="form-group">
				<label>날짜:</label> <input type="text" class="form-control"	id="wdate">
			</div>
			<div class="form-group">
				<label>타이틀:</label> <input type="text" class="form-control" id="title">
			</div>
			<div class="form-group">
				<label>내용:</label> <input type="text" class="form-control"	id="content">
			</div>

			<div class="form-group">
				<label>카운트:</label> <input type="text" class="form-control" id="count">
			</div>

			<div class="btn-group">
				<input type="button" value="등록"	 id="btnInsert" /> 
				<input type="button" value="수정" id="btnUpdate" /> 
				<input type="button" value="초기화" id="btnInit" />
				<input type="button" value="전체" id="btnAll" />
				<select id="condition">
					<option value="title">제목</option>
					<option value="name">이름</option>
				</select> 
				<input type="text" id="word"/> 
				<input type="button" value="검색" id="btnSearch" />
			</div>
		</form>
	</div>
	<hr />
	<div class="container">
		<h2>보드 목록</h2>
		<table class="table text-center">
			<thead>
				<tr>
					<th class="text-center">번호</th>
					<th class="text-center">비밀번호</th>
					<th class="text-center">이름</th>
					<th class="text-center">날짜</th>
					<th class="text-center">타이틀</th>
					<th class="text-center">내용</th>
					<th class="text-center">카운트</th>
				</tr>
			</thead>
			<tbody>
			
			
			
			</tbody>
		</table>
	</div>
</body>
</html>