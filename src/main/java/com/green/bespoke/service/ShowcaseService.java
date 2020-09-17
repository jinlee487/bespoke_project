package com.green.bespoke.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

import com.green.bespoke.mapper.ShowcaseMapper;
import com.green.bespoke.paging.SearchCriteria;
import com.green.bespoke.vo.ShowcaseVO;


@Service
@RequiredArgsConstructor
public class ShowcaseService {
	
	private final ShowcaseMapper mapper;
	
	/*
	 * public CustomerVO selectCustomer(){ return mapper.selectCustomer(); }
	 * 
	 * public ArrayList<CustomerVO> cList(){ return mapper.cList(); }
	 */	
	// search Criteria
	public int searchRowCount(final SearchCriteria cri) {
		return mapper.searchRowCount(cri);
	}//searchRowCount

	public ArrayList<ShowcaseVO> searchList(final SearchCriteria cri){
		return mapper.searchList(cri);
	} //searchList

	public ShowcaseVO selectOne(final ShowcaseVO vo) {
		return mapper.selectOne(vo);
	} // selectOne
	public ShowcaseVO selectOneLast(final ShowcaseVO vo) {
		return mapper.selectOneLast(vo);
	} // selectOne	
	public ShowcaseVO selectMaxId(final ShowcaseVO vo) {
		return mapper.selectMaxId(vo);
	} // selectOne		
//	
//	public ArrayList<SgroupVO> groupList() {
//		return mapper.groupList();
//	} // groupList
//
//	public String 	lastC_id(){
//		return mapper.lastC_id();
//	}//newC_id
//
	public int update(final ShowcaseVO vo) {
		return mapper.update(vo);
	} // update
	
	public int insert(final ShowcaseVO vo) {
		return mapper.insert(vo);
	} // insert
	public int insertAll(final ShowcaseVO vo) {
		return mapper.insertAll(vo);
	} // insert
}
