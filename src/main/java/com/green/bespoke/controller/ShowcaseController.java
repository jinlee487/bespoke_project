package com.green.bespoke.controller;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import lombok.RequiredArgsConstructor;

import com.green.bespoke.paging.PageMaker;
import com.green.bespoke.paging.SearchCriteria;
import com.green.bespoke.service.ShowcaseChoicesService;
import com.green.bespoke.service.ShowcaseService;
import com.green.bespoke.vo.ShowcaseVO;

@RestController
@RequiredArgsConstructor
public class ShowcaseController {
	
	private final ShowcaseService showcaseService;
	private final ShowcaseChoicesService showcaseChoicesService;
		
//	private final S3Services s3Services;
    

//	@RequestMapping(value = "/admin/showcaseSize")
//	public ModelAndView showcaseSize(ModelAndView mv) {
//		/*
//		 * vo = showcaseService.selectOne(vo); ArrayList<CgroupVO> cgvo =
//		 * showcaseService.groupList(); if (vo.getC_id().length() > 7 ) {
//		 * mv.addObject("cData",vo); mv.addObject("groupList",cgvo);
//		 * mv.addObject("message", vo.getC_name() + "님의 고객 정보입니다." ); } else {
//		 * mv.addObject("message", "일치하는 고객 번호가 없습니다. ~~"); }
//		 */		
//		mv.setViewName("/admin/showcaseSize");
//		return mv;
//	}//showcaseSize
//
//	
//	@RequestMapping(value = "/admin/addshowcase")
//	public ModelAndView addshowcase(ModelAndView mv,showcaseVO vo) {
//		ArrayList<CgroupVO> cgvo = showcaseService.groupList();
//		mv.addObject("groupList",cgvo); // 그룹 리스트
//		
//		mv.addObject("isNew",true); // 신규 설정
//		String lastC_id = showcaseService.lastC_id(); // 최종 고객 번호 가져오기
//		String today = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyMMdd")).toString();
//		int lastC_idNum = Integer.parseInt(lastC_id.substring(6,8));
//
//		if(today.equals(lastC_id.substring(0,6))){
//			lastC_idNum = Integer.parseInt(lastC_id.substring(6,8))+1;
//			lastC_id = today + String.format("%02d", lastC_idNum); 
//		}else {
//			lastC_id = today +  String.format("%02d", 1); // 동일한 날짜의 신규 고객이 없으면 1번으로 시작함.
//		}
//		vo.setC_id(lastC_id);// 신규 고객 번호 설정
//			mv.addObject("message", "신규 고객 등록 화면입니다.~~");
//
//		mv.addObject("cData",vo);
//		mv.setViewName("/admin/showcaseData");
//		return mv;
//	}//showcaseData
//	
//	@RequestMapping(value = "/admin/showcaseData")
//	public ModelAndView showcaseData(ModelAndView mv,showcaseVO vo) {
//		
//		showcaseVO cvo = showcaseService.selectOne(vo);
//		ArrayList<CgroupVO> cgvo = showcaseService.groupList();
//		mv.addObject("groupList",cgvo); // 그룹 리스트
//		
//		if (null != cvo && vo.getC_id().length() > 7 ) {		
//			// 로그인한 담당자 권한 과 해당 고객 담당자 매칭하여 같을 경우 만 정보 표시 -> 작업 필요
//			vo = cvo;
//			mv.addObject("message", cvo.getC_name() + "님의 고객 정보입니다." );
//		} else {		// 고객 정보가 null 일 경우 신규 고객 등록
//			mv.addObject("message", "존재하지 않는 고객 번호입니다.");
//		}
//		mv.addObject("cData",vo);
//		mv.setViewName("/admin/showcaseData");
//		return mv;
//	}//showcaseData
//	
////	@RequestMapping(value = "/admin/newshowcase")
////	public ModelAndView newshowcase(ModelAndView mv) {
////		ArrayList<CgroupVO> cgvo = showcaseService.groupList();
////		mv.addObject("groupList",cgvo); // 그룹 리스트
////		mv.addObject("isNew",true); // 신규 정보 확인
////		mv.addObject("message", "신규 고객 정보를 입력해 주세요.");
////		mv.setViewName("/admin/showcaseData");
////		return mv;
////	}//newshowcase 신규 고객 등록
//
	@RequestMapping(value = "/admin/addShowcase")
	public ModelAndView showcaseInsert(ModelAndView mv,ShowcaseVO vo, final Authentication authentication) throws IOException {

//		String file1,file2 ;
//		if(!vo.getC_photo_filef().isEmpty()) {
//			file1=s3Services.upload(vo.getC_photo_filef());
//			if(file1.length()<500) {
//				vo.setC_photo_file(file1); // 파일명이 500byte 이하일 경우만 저장
//			}
//			else {
//				mv.addObject("message", "고객 정보를 업데이트하는데 실패하였습니다. 고객 사진의 파일명이 500byte를 초과했습니다.");
//				return mv;
//			}
//		}//!getC_photo_filef.isEmpty()
//		if(!vo.getProjectf().isEmpty()) {
//			file2=s3Services.upload(vo.getProjectf());
//			if(file2.length()<500) {
//				vo.setProject(file2);// 파일명이 500byte 이하일 경우만 저장
//			}
//			else {
//				mv.addObject("message", "고객 정보를 업데이트하는데 실패하였습니다. 프로젝트 파일명이 500byte를 초과했습니다.");
//				return mv;
//			}
//		}//!getProjectf.isEmpty()
		
		//최종 수정일 입력 
		LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
		//System.out.println("----------> "+LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")));		
		vo.setCreatedDate((LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"))));
		vo.setModifiedDate((LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"))));
//		vo.setLastEditor(authentication.getName());
		vo.setAuthor(authentication.getName());
		vo.setFeaturedImage("/images/showcase/Bespoke_Winwter_overcoat_012_gftailor.jpg");
		int test = showcaseService.insert(vo);
		
		if(test >0){
			// update 성공
			vo.setId(showcaseService.selectMaxId(vo).getId());
			vo = showcaseService.selectOne(vo);
			mv.addObject("sData", vo);
			mv.addObject("message", vo.getTitle() + "의 정보를 입력하였습니다.");
		}else {
			mv.addObject("message", "정보를 입력 하는데 실패하였습니다.");
		}		
		mv.addObject("workList",showcaseChoicesService.selectListWork());
		mv.addObject("brandList",showcaseChoicesService.selectListBrand());
		mv.addObject("ageList",showcaseChoicesService.selectListAge());
		mv.addObject("bodyTypeList",showcaseChoicesService.selectListBodyType());
		mv.addObject("fabricPatternList",showcaseChoicesService.selectListFabricPattern());
		mv.addObject("lapelWidthList",showcaseChoicesService.selectListLapelWidth());
		mv.addObject("lapelList",showcaseChoicesService.selectListLapel());
		mv.addObject("pocketList",showcaseChoicesService.selectListPocket());
		mv.addObject("sleeveLengthList",showcaseChoicesService.selectListSleeveLength());
		mv.addObject("slitList",showcaseChoicesService.selectListSlit());
		mv.addObject("stichingList",showcaseChoicesService.selectListStiching());
		mv.addObject("extraDesignList",showcaseChoicesService.selectListExtraDesign());
		
		mv.setViewName("/admin/showcaseData");
		return mv;
	}//showcaseUpdate
	
	
	
	@RequestMapping(value = "/admin/showcaseUpdate")
	public ModelAndView showcaseUpdate(ModelAndView mv,ShowcaseVO vo, final Authentication authentication) throws IOException {
		
		mv.addObject("workList",showcaseChoicesService.selectListWork());
		mv.addObject("brandList",showcaseChoicesService.selectListBrand());
		mv.addObject("ageList",showcaseChoicesService.selectListAge());
		mv.addObject("bodyTypeList",showcaseChoicesService.selectListBodyType());
		mv.addObject("fabricPatternList",showcaseChoicesService.selectListFabricPattern());
		mv.addObject("lapelWidthList",showcaseChoicesService.selectListLapelWidth());
		mv.addObject("lapelList",showcaseChoicesService.selectListLapel());
		mv.addObject("pocketList",showcaseChoicesService.selectListPocket());
		mv.addObject("sleeveLengthList",showcaseChoicesService.selectListSleeveLength());
		mv.addObject("slitList",showcaseChoicesService.selectListSlit());
		mv.addObject("stichingList",showcaseChoicesService.selectListStiching());
		mv.addObject("extraDesignList",showcaseChoicesService.selectListExtraDesign());

//		String file1,file2 ;
//		if(!vo.getC_photo_filef().isEmpty()) {
//			file1=s3Services.upload(vo.getC_photo_filef());
//			if(file1.length()<500) {
//				vo.setC_photo_file(file1); // 파일명이 500byte 이하일 경우만 저장
//			}
//			else {
//				mv.addObject("message", "고객 정보를 업데이트하는데 실패하였습니다. 고객 사진의 파일명이 500byte를 초과했습니다.");
//				return mv;
//			}
//		}//!getC_photo_filef.isEmpty()
//		if(!vo.getProjectf().isEmpty()) {
//			file2=s3Services.upload(vo.getProjectf());
//			if(file2.length()<500) {
//				vo.setProject(file2);// 파일명이 500byte 이하일 경우만 저장
//			}
//			else {
//				mv.addObject("message", "고객 정보를 업데이트하는데 실패하였습니다. 프로젝트 파일명이 500byte를 초과했습니다.");
//				return mv;
//			}
//		}//!getProjectf.isEmpty()
//		파일명 변경은 미완성! 
		
		//최종 수정일 입력 
//		LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
//		System.out.println("----------> "+LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")));		
		vo.setModifiedDate((LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"))));
		vo.setLastEditor(authentication.getName());
		int test = showcaseService.update(vo);
		
		if(test >0){
			// update 성공
			vo = showcaseService.selectOne(vo);
			mv.addObject("sData", vo);
			mv.addObject("message", vo.getTitle() + "의 정보를 업데이트하였습니다.");
		}else {
			mv.addObject("message", "정보를 업데이트하는데 실패하였습니다.");
		}		
		mv.setViewName("/admin/showcaseData");
		return mv;
	}//showcaseUpdate

	
	@RequestMapping(value = "/admin/showcaseList")
	public ModelAndView showcaselist(ModelAndView mv,SearchCriteria cri) {
		
		cri.setSnoEno();
		System.out.println("this is sno => \n" +cri.getSno());
		System.out.println("this is perpage => \n" +cri.getPerPageRow());
		System.out.println("this is from date => \n" + cri.getfromDate());
		System.out.println("this is todate => \n " + cri.gettoDate());
		List<ShowcaseVO> list = showcaseService.searchList(cri); 
		System.out.println("this is list => \n" + list);
		mv.addObject("showcaseList",list);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		
		pageMaker.setTotalRow(showcaseService.searchRowCount(cri));
		mv.addObject("pageMaker",pageMaker);
		
		if (pageMaker.getTotalRow() > 0 ) {
			mv.addObject("message", "Total : "+pageMaker.getTotalRow()+" 개의 쇼케이스가 검색되었습니다." );  
		} else {
			mv.addObject("message", "~~ 검색된 고객이 없습니다. ~~");
		}
		mv.setViewName("/admin/showcaseList");
		return mv;
	}
	@RequestMapping(value = "/admin/showcaseData")
	public ModelAndView showcaseData(ModelAndView mv,ShowcaseVO vo) {
		
		vo = showcaseService.selectOne(vo);
		System.out.println("this is vo => \n" + vo);
		mv.addObject("workList",showcaseChoicesService.selectListWork());
		mv.addObject("brandList",showcaseChoicesService.selectListBrand());
		mv.addObject("ageList",showcaseChoicesService.selectListAge());
		mv.addObject("bodyTypeList",showcaseChoicesService.selectListBodyType());
		mv.addObject("fabricPatternList",showcaseChoicesService.selectListFabricPattern());
		mv.addObject("lapelWidthList",showcaseChoicesService.selectListLapelWidth());
		mv.addObject("lapelList",showcaseChoicesService.selectListLapel());
		mv.addObject("pocketList",showcaseChoicesService.selectListPocket());
		mv.addObject("sleeveLengthList",showcaseChoicesService.selectListSleeveLength());
		mv.addObject("slitList",showcaseChoicesService.selectListSlit());
		mv.addObject("stichingList",showcaseChoicesService.selectListStiching());
		mv.addObject("extraDesignList",showcaseChoicesService.selectListExtraDesign());
		mv.addObject("sData",vo);
		mv.setViewName("/admin/showcaseData");
		return mv;
	}//showcaseData
}
