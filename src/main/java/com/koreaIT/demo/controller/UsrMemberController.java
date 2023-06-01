package com.koreaIT.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.koreaIT.demo.service.MemberService;
import com.koreaIT.demo.util.Util;
import com.koreaIT.demo.vo.ResultData;

@Controller
public class UsrMemberController {
	
	private MemberService memberService;
	
	@Autowired
	public UsrMemberController(MemberService memberService) {
		this.memberService = memberService;
	}
	@RequestMapping("/usr/member/join")
	public String join() {
		return "usr/member/join";
	}
	
	@RequestMapping("/usr/member/doJoin")
	@ResponseBody
	public ResultData doJoin(String loginId, String loginPw, String name, String nickname, String cellphoneNum, String email) {
		
		if(Util.empty(loginId)) {
			return ResultData.from("F-1", "아이디를 입력해주세요");
		}
		if(Util.empty(loginPw)) {
			return ResultData.from("아이디를 입력해주세요", loginPw);
		}
		if(Util.empty(name)) {
			return ResultData.from("아이디를 입력해주세요", name);
		}
		if(Util.empty(nickname)) {
			return ResultData.from("아이디를 입력해주세요", nickname);
		}
		if(Util.empty(cellphoneNum)) {
			return ResultData.from("아이디를 입력해주세요", cellphoneNum);
		}
		if(Util.empty(email)) {
			return ResultData.from("아이디를 입력해주세요", email);
		}
		
		ResultData doJoinRd = memberService.doJoin(loginId, loginPw, name, nickname, cellphoneNum, email);
		
		if (doJoinRd.isFail()) {
			return doJoinRd;
		}
		
		return ResultData.from(doJoinRd.getResultCode(), doJoinRd.getMsg(), memberService.getMemberById((int)doJoinRd.getData1()));
	}

}
