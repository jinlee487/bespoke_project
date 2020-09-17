package com.green.bespoke.vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
@Data
public class CustomerVO {
	private String c_name;
	private String c_group;
	private String c_id;
	private String hp_no;
	private String cp_no;
	private String company;
	private String title;
	private String bzp_no;
	private String fax_no;
	private int mail;
	private String home_adrs;
	private String home_adrsd;
	private String home_zipcode;
	private String bz_adrs;
	private String bz_adrsd;
	private String bz_zipcode; 
	private String birth_day;
	private int birth_lunar_b; 
	private String wedding_day;
	private String email;
	private String website;

	private String c_photo_file; // 고객사진
	private MultipartFile c_photo_filef;  // form의 inputTag의 값 전달받기위함
	private String project; // 고객 체촌 파일
	private MultipartFile projectf;  // form의 inputTag의 값 전달받기위함

	private String last_edit_day;
	private String memo;
	private int manager_id;
	private String firstvisit_day;
	private String come_route;
	private String c_age;
	private String c_body;
	private String c_feature;

}
