<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="MAIN" />
<%@ include file="../common/head.jsp" %>

<section class="mt-8 text-xl">
	<div class="container mx-auto px-3">
		<form action="doJoin" method="POST" onsubmit="join_submitForm(this); return false;">
			<div class="table-box-type-1">
				<table>
					<colgroup>
						<col width="200" />
					</colgroup>
					<tbody>
						<tr height="105">
							<th>아이디</th>
							<td>
								<input class="input input-bordered w-full max-w-xs" type="text" name="loginId" placeholder="아이디를 입력해주세요" onblur="loginIdDupCheck(this);"/>
								<div id="loginIdDupCheckMsg" class="text-sm mt-2 h-5 text-red-500"></div>
							</td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td><input class="w-96 input input-bordered" type="text" name="loginPw"
								placeholder="비밀번호를 입력해주세요" /></td>
						</tr>
						<tr>
							<th>비밀번호 확인</th>
							<td><input class="w-96 input input-bordered" type="text" name="loginPwChk"
								placeholder="비밀번호를 입력해주세요" /></td>
						</tr>
						<tr>
							<th>이름</th>
							<td><input class="w-96 input input-bordered" type="text" name="name"
								placeholder="이름을 입력해주세요" /></td>
						</tr>
						<tr>
							<th>닉네임</th>
							<td><input class="w-96 input input-bordered" type="text" name="nickname"
								placeholder="닉네임을 입력해주세요" /></td>
						</tr>
						<tr>
							<th>전화번호</th>
							<td><input class="w-96 input input-bordered" type="text" name="cellphoneNum"
								placeholder="전화번호를 입력해주세요" /></td>
						</tr>
						<tr>
							<th>이메일</th>
							<td><input class="w-96 input input-bordered" type="text" name="email"
								placeholder="이메일을 입력해주세요" /></td>
						</tr>
						<tr>
							<td colspan="2"><button>회원가입</button></td>
						</tr>
					</tbody>

				</table>
			</div>
		</form>
		<div class="btns">
			<button class="btn-text-link" type="button" onclick="history.back();">뒤로가기</button>
		</div>
	</div>
</section>




<%@ include file="../common/foot.jsp" %>