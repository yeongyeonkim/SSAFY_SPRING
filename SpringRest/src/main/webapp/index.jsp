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
		customerList();//모든 사용자 정보 요청
		customerSelect();//한 사람 선택시 처리할 이벤트 등록
		customerDelete();//한 사람 삭제시 처리할 이벤트 등록
		customerUpdate();//한 사람 정보 수정시 처리할 이벤트 등록
		customerInsert();//새 고객 정보 추가시 처리할 이벤트 등록
		init();
	});
	
	//모든 사용자 목록 조회 요청
	function customerList() {//REST 서버에 모든 고객정보에 대한 ajax 요청 보내기	
		$.ajax({
			url:'customers',
			type:'get',
			dataType:'json',//서버가 보내주는 데이터 타입
			success: function(data){
				customerListResult(data);
			},
			error: function(xhr, status, msg){
				alert("상태값:" + status + " http 에러 메시지: " + msg);	
			}			
		});
	}//customerList
	
	function customerListResult(data){
		$('tbody').empty();
		$.each(data, function(idx, item){
			$('<tr>').append($('<td>').html(item.num))
					 .append($('<td>').html(item.name))
					 .append($('<td>').html(item.address))
					 .append($('<td>').html('<button id="btnSelect">조회</button>'))
					 .append($('<td>').html('<button id="btnDelete">삭제</button>'))
					 .append($('<input type="hidden" id="hidden_num">').val(item.num))
					 .appendTo('tbody');
			
		});
	}
	
	//사용자 조회 요청
	function customerSelect() {
		$('body').on('click', '#btnSelect', function(){
			var num = $(this).closest('tr').find('#hidden_num').val();
			$.ajax({
				url:'customers/' + num,
				type:'get',
				dataType:'json',
				success: customerSelectResult
			});
		});
	}//customerSelect

	function customerSelectResult(data){
		$('#num').val(data.num);
		$('#name').val(data.name);
		$('#address').val(data.address);
	}
	//사용자 삭제 요청
	function customerDelete() {
		$('body').on('click', '#btnDelete', function(){
			var num = $(this).closest('tr').find('#hidden_num').val();
			$.ajax({
				url:'customers/' + num,
				type:'delete',
				dataType:'json',
				success: customerList
			});
		});
	}//customerDelete
	
	
	//사용자 수정 요청
	function customerUpdate() {
		$('#btnUpdate').on('click', function(){
			var num = $('#num').val();
			var name = $('#name').val();
			
			$.ajax({
				url : 'customers/',
				type : 'put',
				dataType : 'json',
				data : JSON.stringify({
					num : num,
					name : name,
				}),
				contentType: 'application/json',
				success: function(){
					clear();
					customerList();
				}			
			});
		});
		
	}//customerUpdate

	//사용자 등록 요청
	function customerInsert() {
        $('#btnInsert').on('click',function(){
            //1. 입력값 받아오기
            var num= $('#num').val();
            var name=$('#name').val();
            var address=$('#address').val();
            
            //2. ajax 요청 보내기
            $.ajax({
                url : 'customers/',
                type: 'post',
                dataType : 'json', //from server
                data: JSON.stringify({
                    num: num,
                    name: name,
                    address: address
                }),
                contentType: 'application/json', // to server
                success: function(){
                	clear();
                	customerList(); //3. 성공시 화면 refresh
                }
            });
        });   
    }//customerInsert
    function clear(){
    	$('#num').val('');
    	$('#name').val('');
    	$('#address').val('');
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
			<h2>Customer Management</h2>
			<div class="form-group">
				<label>번호:</label> <input type="text" class="form-control"	id="num">
			</div>
			<div class="form-group">
				<label>이름:</label> <input type="text" class="form-control"	id="name">
			</div>

			<div class="form-group">
				<label>주소:</label> <input type="text" class="form-control" id="address">
			</div>

			<div class="btn-group">
				<input type="button" class="btn btn-primary" value="등록"	 id="btnInsert" /> 
				<input type="button" class="btn btn-primary" value="수정" id="btnUpdate" /> 
				<input type="button" class="btn btn-primary" value="초기화" id="btnInit" />
			</div>
		</form>
	</div>
	<hr />
	<div class="container">
		<h2>사용자 목록</h2>
		<table class="table text-center">
			<thead>
				<tr>
					<th class="text-center">번호</th>
					<th class="text-center">이름</th>
					<th class="text-center">주소</th>
				</tr>
			</thead>
			<tbody>
			
			
			
			</tbody>
		</table>
	</div>
</body>
</html>