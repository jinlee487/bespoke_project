package com.green.bespoke.paging;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class PageMaker {
	private int totalRow ; // Table의 전체 row 갯수
	private int sPageNo ; // View에 표시할 첫 PageNo
	private int ePageNo ; // View에 표시할 끝 PageNo
	private boolean prev; // 이전 Page 블럭으로 
	private boolean next ; // 다음 Page 블럭으로
	private int displayPageNo=10; // View에 표시할 PageNo의 갯수
	private int lastPageNo; // 출력가능한 마지막 PageNo( totalRow, perPageRow)로 계산
	//private Criteria cri;
	private SearchCriteria cri;
	
	// Page Block 처리
	// => sPageNo, ePageNo 계산
	//	=> prev,next 계산
	//	=> calcData() 메서드로 처리
	
	
	// 1) Set
	public void setCri(SearchCriteria cri) {
		this.cri = cri;
	}
	
	public void setTotalRow(int totalRow) {
		this.totalRow = totalRow;
		calcData();
		// => totalRow를 이용해서 sPageNo, ePageNo, prev,next 처리		
	}//setTotalRow
	
	public void calcData() {
		// CurrPageNo() 가 속한 Page Block 의 ePageNo를 계산
		//	=> 모든 출력할 PageBlock의 ePageNo 는 displayPageNo의 배수임.
		//		displayPageNo =3이면 3,6,9,12.....
		//	=> 예) 17page 요청,  displayPageNo =3, 일때 17이 몇번째 그룹인지 계산하려면,
		//			17/3 -> 5 나머지 2  결론은 정수 나누기 나머지가 있으며 +1 이 필요함.
		//			-> Math.ceil(17/3) -> 5.73... -> 6.0 -> 6번째 그룹 16,17,18
		//		 즉, 7의 몇번째 그룹 먼저 계산하고, 여기에 *displayPageNo를 하면됨.
		ePageNo = (int)(Math.ceil(cri.getCurrPage()/(double)displayPageNo)*displayPageNo);
		// Math.Ceil(c) : 올림 함수,  매개변수 c 보다 크거나 같은 가장 작은 정수를 double 형태로 반환
		
		sPageNo = (ePageNo-displayPageNo)+1 ;
		
		// 계산된 ePageNo가 totalRow로 계산된 전체 page 갯수가 totalPageNo 보다 큰경우에는 
		//	 totalPageNo를 ePage로 함.
		//	=> 예를 들면 lastPageNo= 8 인데, ePage=9 인 경우 등등,,,
		lastPageNo = (int)Math.ceil(totalRow/(double)cri.getPerPageRow());
		
		if( ePageNo > lastPageNo ) ePageNo = lastPageNo;
		prev = sPageNo==1 ? false: true;
		next = ePageNo==lastPageNo    ? false: true;
				
		
	}// clacData
	
	// 2) Get
	public int getTotalRow() {
		return totalRow;
	}
	public int getsPageNo() {
		return sPageNo;
	}
	public int getePageNo() {
		return ePageNo;
	}
	public boolean isPrev() {
		return prev;
	}
	public boolean isNext() {
		return next;
	}
	public int getDisplayPageNo() {
		return displayPageNo;
	}
	public int getlastPageNo() {
		return lastPageNo;
	}
	public SearchCriteria getCri() {
		return cri;
	}
	
	
	// Query String 만들기
	//	패키지 org.springframework.web.util
	//	=> 웹개발에 필요한 많은 유틸리티 클래스 제공
	//	=> UriComponents, UriComponentsBuilder
	//			Uri를 동적으로 생성해주는 클래스,
	//			파라미터가 조합된 uri를 손수비게 만들어줌
	//	=> ?currPage=8&perPageNum=10 이것들을 만들어줌
	
	public String makeQuery(int currPage) {
		UriComponents uriComponents = UriComponentsBuilder.newInstance()
				.queryParam("currPage", currPage)
//				.queryParam("perPageRow", cri.getPerPageRow())
				.build();
		return uriComponents.toUriString();
	}//makeQuery	
	
	public String makeSearch(int currPage) {
		UriComponents uriComponents = UriComponentsBuilder.newInstance()
				.queryParam("currPage", currPage)
				.queryParam("perPageRow", cri.getPerPageRow())
				.queryParam("searchType",cri.getSearchType())
				.queryParam("keyword", cri.getKeyword())
				.queryParam("fromDate", cri.getfromDate().toString())
				.queryParam("toDate", cri.gettoDate().toString())
				.build();
		System.out.println(uriComponents.toUriString());
		return uriComponents.toUriString();
	}//makeSearch	
	
	
	@Override
	public String toString() {
		return "PageMaker [totalRow=" + totalRow + ", sPageNo=" + sPageNo + ", ePageNo=" + ePageNo + ", prev=" + prev
				+ ", next=" + next + ", displayPageNo=" + displayPageNo + ", lastPageNo=" + lastPageNo + ", cri=" + cri
				+ "]";
	}
	
	
}