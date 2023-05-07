package com.orders;

public class OrdersDTO {
	
	private String userId;
	private int goods_num;
	private String days;  //도착시간
	private String ordeq; //주문 요청사항
	private String title; //제품 이름
	
	
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getGoods_num() {
		return goods_num;
	}
	public void setGoods_num(int goods_num) {
		this.goods_num = goods_num;
	}
	public String getDays() {
		return days;
	}
	public void setDays(String days) {
		this.days = days;
	}
	public String getOrdeq() {
		return ordeq;
	}
	public void setOrdeq(String ordeq) {
		this.ordeq = ordeq;
	}
	
	
	

}
