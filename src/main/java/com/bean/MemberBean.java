package com.bean;

import org.springframework.web.multipart.MultipartFile;

public class MemberBean {

		private Integer memberId;
		private String firstname;
		private String lastname;
		private String gender;
		private String dob;
		private Integer houseId;
		private MultipartFile profile;
		private String profilepath;
		
		public Integer getMemberId() {
			return memberId;
		}
		public void setMemberId(Integer memberId) {
			this.memberId = memberId;
		}
		public String getFirstname() {
			return firstname;
		}
		public void setFirstname(String firstname) {
			this.firstname = firstname;
		}
		public String getLastname() {
			return lastname;
		}
		public void setLastname(String lastname) {
			this.lastname = lastname;
		}
		public String getGender() {
			return gender;
		}
		public void setGender(String gender) {
			this.gender = gender;
		}
		public String getDob() {
			return dob;
		}
		public void setDob(String dob) {
			this.dob = dob;
		}
		public Integer getHouseId() {
			return houseId;
		}
		public void setHouseId(Integer houseId) {
			this.houseId = houseId;
		}
		public MultipartFile getProfile() {
			return profile;
		}
		public void setProfile(MultipartFile profile) {
			this.profile = profile;
		}
		public String getProfilepath() {
			return profilepath;
		}
		public void setProfilepath(String profilepath) {
			this.profilepath = profilepath;
		}
		
		
		
}
