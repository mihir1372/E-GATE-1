package com.bean;

public class GuestBean {
	private Integer guestid;
	private String memberName;
	private String houseNumber;
	private String blockNumber;
	private String time;
	private String purpose;
	private String guestName;
	private String noofGuests;
	private String logdate;
	private Boolean visitedInd;
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getHouseNumber() {
		return houseNumber;
	}
	
	public String getLogdate() {
		return logdate;
	}
	public void setLogdate(String logdate) {
		this.logdate = logdate;
	}
	public void setHouseNumber(String houseNumber) {
		this.houseNumber = houseNumber;
	}
	public String getBlockNumber() {
		return blockNumber;
	}
	public void setBlockNumber(String blockNumber) {
		this.blockNumber = blockNumber;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getPurpose() {
		return purpose;
	}
	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}
	public String getGuestName() {
		return guestName;
	}
	public void setGuestName(String guestName) {
		this.guestName = guestName;
	}
	public String getNoofGuests() {
		return noofGuests;
	}
	public void setNoofGuests(String noofGuests) {
		this.noofGuests = noofGuests;
	}
	public Integer getGuestid() {
		return guestid;
	}
	public void setGuestid(Integer guestid) {
		this.guestid = guestid;
	}
	public Boolean getVisitedInd() {
		return visitedInd;
	}
	public void setVisitedInd(Boolean visitedInd) {
		this.visitedInd = visitedInd;
	}
	
	
	
}
