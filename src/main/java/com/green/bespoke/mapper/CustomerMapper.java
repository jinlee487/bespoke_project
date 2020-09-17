package com.green.bespoke.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.green.bespoke.paging.SearchCriteria;
import com.green.bespoke.vo.CgroupVO;
import com.green.bespoke.vo.CustomerVO;

@Repository
@Mapper
public interface CustomerMapper {
	/*
	 * CustomerVO selectCustomer(); ArrayList<CustomerVO> cList();
	 */
	ArrayList<CustomerVO> searchList(SearchCriteria cri); //criList()
	int searchRowCount(SearchCriteria cri); // pageRowCount()
	CustomerVO selectOne(CustomerVO vo); // selectOne
	ArrayList<CgroupVO> groupList(); // groupList
	int update(CustomerVO vo); // update
	int insert(CustomerVO vo); // insert
	String 	lastC_id();//newC_id
}

