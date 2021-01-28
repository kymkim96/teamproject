package com.onemilliondreams.teamproject.dto;

public class Pager {
	public static Pager pager;
	private int totalRows;      //전체 행수
	   private int totalPageNo;    //전체 페이지 수
	   private int totalGroupNo;   //전체 그룹 수
	   private int startPageNo;    //그룹의 시작 페이스 번호 --1, 6
	   private int endPageNo;      //그룹의 끝 페이지 번호 --5, 10
	   private int pageNo;         //현재 페이지 번호 --사용자가 원하는 페이지 번호 3페이지를 누르면 3이 저장됨.
	   private int pagesPerGroup;  //그룹당 페이지 수 1~5가 있으면 5개의 페이지가 있다. 
	   private int groupNo;        //현재 그룹 번호 1~5 --1번 그룹 6~10 --2번그룹
	   private int rowsPerPage;    //페이지당 행 수  한 페이지에 얼만큼 보여지게 할 것 인가 
	   private int startRowNo;     //페이지의 시작 행 번호
	   private int endRowNo;       //페이지의 마지막 행 번호
	  
	   public Pager(int rowsPerPage, int pagesPerGroup, int totalRows, int pageNo) {//totalRows 카테고리에 해당하는 책의 개수, 현재 페이지 번호 
	      this.rowsPerPage = rowsPerPage;
	      this.pagesPerGroup = pagesPerGroup; //한번에 밑에 번호[이전] 1 2 3 4 5 [다음] 사이에 몇개의 숫자를 나타낼건지
	      this.totalRows = totalRows;//데이터안에 있는 총행의 개수
	      this.pageNo = pageNo;

	      totalPageNo = totalRows / rowsPerPage; //전페 행수의 현재 페이지를 알 것.100/10=10쪽이 나옴. ---101/10=11쪽이 나옴.
	      if(totalRows % rowsPerPage != 0) totalPageNo++;//totalPageNo = (int)Math.ceil((double)totalRows/rowsPerPage);을 풀어서 씀.
	      
	      totalGroupNo = totalPageNo / pagesPerGroup; //전체 페이지 수를 그룹장 페이지수로 나눔.
	      if(totalPageNo % pagesPerGroup != 0) totalGroupNo++;//totalPageNo
	      
	      groupNo = (pageNo - 1) / pagesPerGroup + 1;
	      
	      startPageNo = (groupNo-1) * pagesPerGroup + 1;
	      
	      endPageNo = startPageNo + pagesPerGroup - 1;
	      if(groupNo == totalGroupNo) endPageNo = totalPageNo;
	      //실습함. 한 페이지의 10개씩 보여지게 하겠다 
	      startRowNo = (pageNo - 1) * rowsPerPage + 1;
	      endRowNo = pageNo * rowsPerPage;
	   }

	   public int getTotalRows() {
	      return totalRows;
	   }

	   public int getTotalPageNo() {
	      return totalPageNo;
	   }

	   public int getTotalGroupNo() {
	      return totalGroupNo;
	   }

	   public int getStartPageNo() {
	      return startPageNo;
	   }

	   public int getEndPageNo() {
	      return endPageNo;
	   }

	   public int getPageNo() {
	      return pageNo;
	   }

	   public int getPagesPerGroup() {
	      return pagesPerGroup;
	   }

	   public int getGroupNo() {
	      return groupNo;
	   }

	   public int getRowsPerPage() {
	      return rowsPerPage;
	   }
	   
	   public int getStartRowNo() {
	      return startRowNo;
	   }

	   public int getEndRowNo() {
	      return endRowNo;
	   }   
}

