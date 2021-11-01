package vo;

import lombok.Data;

@Data
public class Page {
private int currentPage; 
private int totalCount; 
private int pageSize; 

private int totalPage; 
private int startPage; 
private int endPage;

private int startNo;

public Page(int currentPage, int totalCount, int pageSize){	
	this.totalCount=totalCount;
	this.pageSize=pageSize;
	totalPage = (totalCount-1)/pageSize + 1;
	this.currentPage=(currentPage> totalPage)? totalPage:currentPage;
	this.currentPage=(currentPage<1)? 1:currentPage;
	
	startNo=(this.currentPage-1)*pageSize; 
	startPage=(this.currentPage-1)/5*5+1;  
	endPage = startPage+5; 
	endPage = endPage>totalPage? totalPage:endPage; 
	
	}
}
