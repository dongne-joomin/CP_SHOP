package com.koreaIT.demo.repository;

import org.apache.ibatis.annotations.Mapper;

import com.koreaIT.demo.vo.Member;
import com.koreaIT.demo.vo.ResultData;

@Mapper
public interface MemberRepository {

	public void doJoin(String loginId, String loginPw, String name, String nickname, String cellphoneNum,
			String email); 

	public int getLastInsertId() ;

	public Member getMemberById(int id);

	public Member getMemberByLoginId(String loginId);

	public Member getMemberByNickname(String nickname);

	public Member getMemberByNameAndEmail(String name, String email);

	public void doModify(int loginedMemberId, String nickname, String cellphoneNum, String email);

	public void doPasswordModify(int loginedMemberId, String loginPw);


}
