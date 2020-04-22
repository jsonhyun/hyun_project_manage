package com.yi.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class ProjectVO {
	private int pNo;
	private String pName;
	private String pContent;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date pStart;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date pEnd;
	private String pStatus;

	public ProjectVO() {
		// TODO Auto-generated constructor stub
	}

	public ProjectVO(int pNo, String pName, String pContent, Date pStart, Date pEnd, String pStatus) {
		this.pNo = pNo;
		this.pName = pName;
		this.pContent = pContent;
		this.pStart = pStart;
		this.pEnd = pEnd;
		this.pStatus = pStatus;
	}

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getpContent() {
		return pContent;
	}

	public void setpContent(String pContent) {
		this.pContent = pContent;
	}

	public Date getpStart() {
		return pStart;
	}

	public void setpStart(Date pStart) {
		this.pStart = pStart;
	}

	public Date getpEnd() {
		return pEnd;
	}

	public void setpEnd(Date pEnd) {
		this.pEnd = pEnd;
	}

	public String getpStatus() {
		return pStatus;
	}

	public void setpStatus(String pStatus) {
		this.pStatus = pStatus;
	}

	@Override
	public String toString() {
		return "ProjectVO [pNo=" + pNo + ", pName=" + pName + ", pContent=" + pContent + ", pStart=" + pStart
				+ ", pEnd=" + pEnd + ", pStatus=" + pStatus + "]";
	}

}
