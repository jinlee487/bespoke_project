package com.green.bespoke.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.green.bespoke.paging.SearchCriteria;
import com.green.bespoke.vo.ShowcaseVO;

@Repository
@Mapper
public interface ShowcaseMapper {
	/*
	 * CustomerVO selectCustomer(); ArrayList<CustomerVO> cList();
	 */
	ArrayList<ShowcaseVO> searchList(SearchCriteria cri); //criList()
	int searchRowCount(SearchCriteria cri); // pageRowCount()
	ShowcaseVO selectOne(ShowcaseVO vo); // selectOne
	ShowcaseVO selectOneLast(ShowcaseVO vo); // selectOne
	ShowcaseVO selectMaxId(ShowcaseVO vo); // selectOne	
	
//	ArrayList<CgroupVO> groupList(); // groupList
	int update(ShowcaseVO vo); // update
	int insert(ShowcaseVO vo); // insert
	int insertAll(ShowcaseVO vo); // insert
//	String 	lastC_id();//newC_id
}

