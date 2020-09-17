package com.green.bespoke.paging;

import java.time.LocalDate;

public class SearchCriteria extends Criteria{
	
	private String searchType;
	private String keyword;
	private String fromDate; // 기간 검색 시 시작일
	private String toDate; // 기간 검색 시 종료일
	
	// 생성자료 초기화
	public SearchCriteria() {
		this.fromDate = LocalDate.now().minusMonths(3).toString();
		this.toDate = LocalDate.now().toString();
		//this.searchType = "led";
	}
	
	public String getfromDate() {
		return fromDate;
	}
	public void setfromDate(String fromDate) {
		this.fromDate = fromDate;
	}
	public String gettoDate() {
		return toDate;
	}
	public void settoDate(String toDate) {
		this.toDate = toDate;
	}
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	@Override
	public String toString() {
		return "SearchCriteria [searchType=" + searchType + ", keyword=" + keyword + ", fromDate=" + fromDate + ", toDate=" + toDate
				+ "]";
	}
	
	
	
}//class