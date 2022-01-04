package com.spring.project.model.board;

public class pagingDTO {
	private int nowPage; //현재페이지
	private int startPage; //시작페이지
	private int endPage; //끝페이지
	private int total; //게시글 총 개수
	private int cntPerPage; //페이지당 글 갯수
	private int lastPage; //마지막 페이지
	private int start; //sql문
	private int end; //sql문
	private int cntPage=5;
	
	public pagingDTO() {
	}
	

	public pagingDTO(int total, int nowPage, int cntPerPage) {
		setNowPage(nowPage);
		setCntPerPage(cntPerPage);
		setTotal(total);
		calcLastPage(getTotal(), getCntPerPage());
		calcStartEndPage(getNowPage(), cntPage);
		calcStartEnd(getNowPage(), getCntPerPage());
	}
	
	//제일 마지막 페이지  검사
	public void calcLastPage(int total, int cntPerPage) {
		setLastPage((int) Math.ceil((double)total/(double)cntPerPage));
	}
	
	//시작과 끝 페이지 계산
	public void calcStartEndPage(int nowPage, int cntPage) {
		setEndPage(((int)Math.ceil((double)nowPage/(double)cntPage))*cntPage);
		if(getLastPage() < getEndPage()) {
			setEndPage(getLastPage());
		}
		setStartPage(getEndPage() - cntPage + 1);
		if(getStartPage()<1) {
			setStartPage(1);
		}
	}
	
	public void calcStartEnd(int nowpage, int cntPerPage) {
		setEnd(cntPerPage);
		setStart(nowpage*cntPerPage);
	}
	
	public int getNowPage() {
		return nowPage;
	}
	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getCntPerPage() {
		return cntPerPage;
	}
	public void setCntPerPage(int cntPerPage) {
		this.cntPerPage = cntPerPage;
	}
	public int getLastPage() {
		return lastPage;
	}
	public void setLastPage(int lastPage) {
		this.lastPage = lastPage;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public int getCntPage() {
		return cntPage;
	}
	public void setCntPage(int cntPage) {
		this.cntPage = cntPage;
	}
	
	
}
