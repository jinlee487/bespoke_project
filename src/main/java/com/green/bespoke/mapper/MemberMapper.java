package com.green.bespoke.mapper;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.green.bespoke.paging.SearchCriteria;
import com.green.bespoke.vo.MemberVO;

@Repository
@Mapper
public interface MemberMapper {
	
	ArrayList<MemberVO> searchList(SearchCriteria cri); //searchMList()
	ArrayList<MemberVO> requestList(SearchCriteria cri); //searchMList()
	int searchRowCount(SearchCriteria cri); // pageRowCount()
	int update(MemberVO vo); // update
	
	@Select("select * from bespoke.member_table")
	List<MemberVO> memberList();
	
	@Select("select * from bespoke.member_table where email = #{email}")
	MemberVO findByEmail(String email);
	
	@Select("select * from bespoke.member_table where email = #{email} and social = #{social}")
	MemberVO findByMember(String email, String social);
	
	@Select("select * from bespoke.member_table where email = #{email} and social = 'none'")
	MemberVO homepageLogin(String email);
	
	@Insert("insert into bespoke.member_table (`email`,`password`,`name`,`phone_number`,`gender`,`birth`,`c_id`,`role`,`picture`,`created_date`,`modified_date`,`request`) "
			+ "VALUES (#{email},#{password},#{name},#{phone_number},#{gender},#{birth},#{c_id},#{role},#{picture},now(),#{modified_date},#{request})")
	
	int sign_up(MemberVO vo);
	
	@Update("update bespoke.member_table set password = #{pattern} where email = #{email}")
	int updatePassword(String email, String pattern);
}