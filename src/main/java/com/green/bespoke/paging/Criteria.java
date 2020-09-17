package com.green.bespoke.paging;

// Criteria : 진단이나 검정을 위한 ) 기준
public class Criteria {
	private int currPage; // 출력할(요청받은) PageNo
	private int perPageRow; // 1페이지당 보여줄 Row(Record, 튜플) 갯수
	private int sNo; // Start Row No
	private int eNo; // End Row No
	
	// 생성자료 초기화
	public Criteria() {
		this.currPage = 1;
		this.perPageRow = 15;
	}

	// 1) 출력할(요청받은) PageNo set
	public void setCurrPage(int currPage) {
		if(currPage<1 ) currPage =1;
		this.currPage = currPage;
	}

	// 2) 1페이지당 보여줄 Row(Record,튜플) 갯수 확인
	public void setPerPageRow(int perPageRow) {
		if(perPageRow<1|| perPageRow >50)
			perPageRow=15;
		this.perPageRow = perPageRow;
	}

	// 3) startRowNo, endRowNo 계산
	public void setSnoEno() {
		sNo = (currPage-1)*perPageRow;
		eNo = (sNo +perPageRow)-1;
	}

	public int getCurrPage() {
		return currPage;
	}
	
	public int getPerPageRow() {
		return perPageRow;
	}
	
	public int getSno() {
		return sNo;
	}
	
	public int getEno() {
		return eNo;
	}

	@Override
	public String toString() {
		return "Criteria [currPage=" + currPage + ", perPageRow=" + perPageRow + ", sNo=" + sNo + ", eno=" + eNo + "]";
	}

	
}// class