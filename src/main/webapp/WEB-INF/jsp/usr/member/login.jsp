<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="LOGIN" />
<%@ include file="../common/head.jsp"%>
<section class="mt-8 text-xl">
	<div class="container mx-auto px-3">
		<form action="doLogin" method="POST">
			<div class="table-box-type-1">
				<table>
					<colgroup>
						<col width="200" />
					</colgroup>
					<tbody>
						<tr>
							<th>로그인 아이디</th>
							<td><input class="w-96" type="text" name="loginId"
								placeholder="아이디를 입력해주세요" /></td>
						</tr>
						<tr>
							<th>로그인 비밀번호</th>
							<td><input class="w-96" type="text" name="loginPw"
								placeholder="비밀번호를 입력해주세요" /></td>
						</tr>
						<tr>
							<td colspan="2"><button>로그인</button></td>
						</tr>
					</tbody>

				</table>
			</div>
		</form>
		<div class="btns mt-2 flex justify-between">
			<button class="btn-text-link btn btn-active" type="button" onclick="history.back();">뒤로가기</button>
			<div>
					<a class="btn-text-link btn btn-active" href="findLoginId">아이디 찾기</a>
					<a class="btn-text-link btn btn-active" href="findLoginPw">비밀번호 찾기</a>
				</div>
		</div>
	</div>
</section>

<%@ include file="../common/foot.jsp"%>