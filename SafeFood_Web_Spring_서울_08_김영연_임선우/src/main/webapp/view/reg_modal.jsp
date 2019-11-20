<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Modal ==================================================== -->
<div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="registerModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="registerModalLabel">회원가입</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<form action="insert.mem" method="post">
				<div class="modal-body">
					<div class="form-group">
						<label for="id">아이디</label>
						<input type="text" class="form-control" id="id" name="id" aria-describedby="emailHelp" placeholder="이메일을 입력하세요">
					</div>
					<div class="form-group">
						<label for="pw">비밀번호</label>
						<input type="password" class="form-control" id="pw" name="password" placeholder="비밀번호를 입력하세요"> <small id="emailHelp" class="form-text text-muted"></small>
					</div>
					<div class="form-group">
						<label for="name">이름</label>
						<input type="text" class="form-control" id="name" name="name" placeholder="이름을 입력하세요.">
					</div>
					<div class="form-group">
						<label for="addr">주소</label>
						<input type="text" class="form-control" id="addr" name="address" placeholder="주소를 입력해주세요">
					</div>
					<div class="form-group">
						<label for="phone">전화번호</label>
						<input type="number" class="form-control" id="phone" name="phone" placeholder="010-XXX-XXXX">
					</div>
					<div class="form-group">
						<label for="allergy">알레르기</label>
						<div class="btn-group-toggle" data-toggle="buttons" id="allergy">
							<label class="btn btn-sm btn-primary">
								<input name="allergy" type="checkbox" value="대두">대두
							</label>
							<label class="btn btn-sm btn-primary">
								<input name="allergy" type="checkbox" value="땅콩">땅콩
							</label>
							<label class="btn btn-sm btn-primary">
								<input name="allergy" type="checkbox" value="우유">우유
							</label>
							<label class="btn btn-sm btn-primary">
								<input name="allergy" type="checkbox" value="게">게
							</label>
							<label class="btn btn-sm btn-primary">
								<input name="allergy" type="checkbox" value="새우">새우
							</label>
							<label class="btn btn-sm btn-primary">
								<input name="allergy" type="checkbox" value="참치">참치
							</label>
							<label class="btn btn-sm btn-primary">
								<input name="allergy" type="checkbox" value="연어">연어
							</label>
							<label class="btn btn-sm btn-primary">
								<input name="allergy" type="checkbox" value="쑥">쑥
							</label>
							<label class="btn btn-sm btn-primary">
								<input name="allergy" type="checkbox" value="소고기">소고기
							</label>
							<label class="btn btn-sm btn-primary">
								<input name="allergy" type="checkbox" value="닭고기">닭고기
							</label>
							<label class="btn btn-sm btn-primary">
								<input name="allergy" type="checkbox" value="돼지고기">돼지고기
							</label>
							<label class="btn btn-sm btn-primary">
								<input name="allergy" type="checkbox" value="복숭아">복숭아
							</label>
							<label class="btn btn-sm btn-primary">
								<input name="allergy" type="checkbox" value="민들레">민들레
							</label>
							<label class="btn btn-sm btn-primary">
								<input name="allergy" type="checkbox" value="계란흰자">계란흰자
							</label>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="reset" class="btn btn-light btn-sm" data-dismiss="modal">취소</button>
					<button type="submit" class="btn btn-light btn-sm">회원가입</button>
				</div>
			</form>
		</div>
	</div>
</div>
<!-- /Modal =================================================== -->