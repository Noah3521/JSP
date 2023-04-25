package service;

public class Paging {
	private int offset;			// 게시글을 가져올 위치
	private int totalCount;		// 총 개시글 수
	private int totalPage;		// 총 페이지 수
	private int perCount = 10;	// 한 페이지에 출력된 게시글 수
	private int perPage = 10;	// 한 화면에 출력할 페이지 수
	private int reqPage;		// 사용자가 요청한 페이지 번호
	private int section;		// 페이지 묶음 번호(1 : 1 ~ 10, 2 ~ 11 ~ 20 ...)
	private int begin;			// 시작 페이지 번호
	private int end;			// 마지막 페이지 번호
	private boolean next;		// 다음 페이지 여부
	private boolean prev;		// 이전 페이지 여부
	
	public Paging(int reqPage, int totalCount) {
		this.reqPage = reqPage;
		this.totalCount = totalCount;
		
		offset = (reqPage - 1) * perCount;
		
		totalPage = totalCount / perCount;
		totalPage += (totalCount % perCount == 0) ? 0 : 1;
		
		section = ((reqPage - 1) / perPage) + 1;
		
		begin = (section - 1) * 10 + 1;
		end = section * 10;

		end = (end < totalPage) ? end : totalPage;
		
		prev = section != 1;
		next = (reqPage / 10 != totalPage / 10);
	}
	
	public int getOffset() {
		return offset;
	}
	public void setOffset(int offset) {
		this.offset = offset;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getPerCount() {
		return perCount;
	}
	public void setPerCount(int perCount) {
		this.perCount = perCount;
	}
	public int getPerPage() {
		return perPage;
	}
	public void setPerPage(int perPage) {
		this.perPage = perPage;
	}
	public int getReqPage() {
		return reqPage;
	}
	public void setReqPage(int reqPage) {
		this.reqPage = reqPage;
	}
	public int getSection() {
		return section;
	}
	public void setSection(int section) {
		this.section = section;
	}
	public int getBegin() {
		return begin;
	}
	public void setBegin(int begin) {
		this.begin = begin;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	
}
