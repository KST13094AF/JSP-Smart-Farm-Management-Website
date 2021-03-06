<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="css_js.jsp"%>
<title>비밀번호 변경</title>
</head>
<c:choose>
	<c:when test="${updatePwResult == 0}">
		<script>
			alert("이전 비밀번호를 확인해주세요.");
		</script>
	</c:when>
</c:choose>
<body class="bg-primary" style="background-color: #4e73df !important">
	<div id="layoutAuthentication">
		<div id="layoutAuthentication_content">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-5">
						<div class="card shadow-lg border-0 rounded-lg mt-5">
							<div class="card-header">
								<h3 class="text-center font-weight-light my-4">비밀번호 수정</h3>
							</div>
							<div class="card-body">
								<form action="pwUpdateAction.do" method="post">
									<div class="form-group">
										<label class="small mb-1" for="old pw">Old Password</label> <input
											class="form-control py-4" id="old pw" onchange="pwCheck()"
											name="pw" type="password" placeholder="새 비밀번호" />
									</div>
									<div class="form-group">
										<label class="small mb-1" for="pwN">New Password</label> <input
											class="form-control py-4" id="pwN" onchange="pwCheck()"
											name="pwN" type="password" placeholder="새 비밀번호" />
									</div>
									<div class="form-group">
										<label class="small mb-1" for="npwc">Confirm New
											Password</label> <input class="form-control py-4" id="pwN_re"
											name="pwN_re" onchange="pwCheck()" type="password"
											placeholder="새 비밀번호 확인" />
									</div>
									<div class="col-md-6">
										<span id="same" style="font-size: 0.8rem;"></span>
									</div>
									<div
										class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
										<a class="small" href="home.do">Return to main?</a> <input
											type="submit" class="btn btn-primary" value="수정">
									</div>
								</form>
							</div>
							<div class="card-footer text-center">
								<div class="small">
									<a href="join.do">Need an account? Sign up</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="js_css.jsp"%>
	<script>
		function pwCheck() {
			if (document.getElementById('pwN').value != ''
					&& document.getElementById('pwN_re').value != '') {
				if (document.getElementById('pwN').value == document
						.getElementById('pwN_re').value) {
					document.getElementById('same').innerHTML = '비밀번호가 일치합니다.';
					document.getElementById('same').style.color = "blue";
				} else {
					document.getElementById('same').innerHTML = '비밀번호가 일치하지 않습니다.';
					document.getElementById('same').style.color = "tomato";
				}
			}
		}
	</script>
</body>
</html>