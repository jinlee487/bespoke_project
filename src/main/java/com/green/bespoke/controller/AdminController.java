package com.green.bespoke.controller;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.green.bespoke.domain.admin.Measurement;
import com.green.bespoke.paging.PageMaker;
import com.green.bespoke.paging.SearchCriteria;
import com.green.bespoke.s3.S3Services;
import com.green.bespoke.service.CustomerService;
import com.green.bespoke.service.MeasurementService;
import com.green.bespoke.service.MemberService;
import com.green.bespoke.service.OrderTService;
import com.green.bespoke.vo.CgroupVO;
import com.green.bespoke.vo.CustomerVO;
import com.green.bespoke.vo.MemberVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class AdminController {
	
	private final CustomerService customerService;
	private final MeasurementService measurementService;
	private final MemberService memberService;
	private final OrderTService orderService;
	
//	@Autowired
//	private JavaMailSender mailSender;
	
	@Autowired
	private S3Services s3Services;
	
	
    
	@RequestMapping(value = "/admin/admin")
	public ModelAndView admin() {
		final ModelAndView mv = new ModelAndView("/admin/admin");
		return mv;
	}

	@RequestMapping(value = "/admin/cad")
	public ModelAndView cad() {
		ModelAndView mv = new ModelAndView("/admin/cad");
		return mv;
	}

	@RequestMapping(value = "/admin/memberList")
	public ModelAndView memberlist(final ModelAndView mv, final SearchCriteria cri) {

		cri.setSnoEno();
		mv.addObject("memberList", memberService.searchList(cri));

		final PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		pageMaker.setTotalRow(memberService.searchRowCount(cri));
		mv.addObject("pageMaker", pageMaker);

		if (pageMaker.getTotalRow() > 0) {
			mv.addObject("message", "Total : " + pageMaker.getTotalRow() + " 명의 고객이 검색되었습니다.");
		} else {
			mv.addObject("message", "~~ 검색된 고객이 없습니다. ~~");
		}
		mv.setViewName("/admin/member-list");
		return mv;
	}// memberList

	@RequestMapping(value = "/admin/memberData")
	public ModelAndView memberData(final ModelAndView mv, final String email, MemberVO vo) {

		vo = memberService.findByEmail(email);

		if (null != vo && vo.getEmail().length() > 10) {
			mv.addObject("message", vo.getName() + "님의 회원 정보입니다.");
		} else { // 고객 정보가 null 일 경우 신규 고객 등록
			mv.addObject("message", "존재하지 않는 이메일 주소 입니다.");
		}
		mv.addObject("cData", vo);
		mv.setViewName("/admin/member-data");
		return mv;
	}// memberData

	@RequestMapping(value = "/admin/memberUpdate")
	public ModelAndView memberUpdate(final ModelAndView mv, MemberVO vo) throws IOException {

		final int test = memberService.update(vo);

		if (test > 0) {
			// update 성공
			vo = memberService.findByEmail(vo.getEmail());
			mv.addObject("cData", vo);
			mv.addObject("message", vo.getName() + "님의 정보를 업데이트하였습니다.");
		} else {
			mv.addObject("message", "고객 정보를 업데이트하는데 실패하였습니다.");
		}
		mv.setViewName("/admin/member-data");
		return mv;
	}// memberUpdate

	@RequestMapping(value = "/memberAuth")
	public ModelAndView memberAuth(final ModelAndView mv, final String email, final String cname, final String c_id,
			final HttpServletRequest request) {

		mv.setViewName("jsonView");
		final String title = "Bespoke 회원 연동 안내입니다.";
		final String content = "안녕하세요 ~ " + cname + " 고객님 <br>" + "<br>" + "저희 Bespoke 서비스를 이용해 주셔서 감사합니다<br>" + "<br>"
				+ "본 메일은 Bespoke 홈페이지에서 고객님의 주문 정보를 확인하실 수 있도록 연동을 안내해드리는 메일입니다.<br>" + "<br>"
				+ "저희 <a href=`https://www.gftailor.co.kr'>Bespoke 홈페이지</a>에 연결 하신 후, 회원 가입 또는 회원 정보 보기에서 <b> 회원번호 </b> 란에 <br>"
				+ "<br>" + "<h3>" + c_id + " </h3>" + "<br>" + "를 입력하시면, 그동안 고객님의 사이즈 및 주문 정보를 확인 하실 수 있습니다.<br>"
				+ "<br>" + "앞으로 Bespoke 서비스를 많은 이용해 주세요~. <br>" + "<br>" + "항상 최선을 다하는 Bespoke 서비스가 되겠습니다. 감사합니다. <br>";

		customerService.sendMail(email, title, content);
		return mv;
	}

	@RequestMapping(value = "/admin/addCustomer")
	public ModelAndView addCustomer(final ModelAndView mv, final CustomerVO vo) {
		final ArrayList<CgroupVO> cgvo = customerService.groupList();
		mv.addObject("groupList", cgvo); // 그룹 리스트

		mv.addObject("isNew", true); // 신규 설정
		String lastC_id = customerService.lastC_id(); // 최종 고객 번호 가져오기
		final String today = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyMMdd")).toString();
		int lastC_idNum = Integer.parseInt(lastC_id.substring(6, 8));

		if (today.equals(lastC_id.substring(0, 6))) {
			lastC_idNum = Integer.parseInt(lastC_id.substring(6, 8)) + 1;
			lastC_id = today + String.format("%02d", lastC_idNum);
		} else {
			lastC_id = today + String.format("%02d", 1); // 동일한 날짜의 신규 고객이 없으면 1번으로 시작함.
		}
		vo.setC_id(lastC_id);// 신규 고객 번호 설정
		mv.addObject("message", "신규 고객 등록 화면입니다.~~");

		mv.addObject("cData", vo);
		mv.setViewName("/admin/customer-data");
		return mv;
	}// customerData

	@RequestMapping(value = "/admin/customerData")
	public ModelAndView customerData(final ModelAndView mv, CustomerVO vo, final String c_id) {

		final CustomerVO cvo = customerService.selectOne(vo);
		final ArrayList<CgroupVO> cgvo = customerService.groupList();
		final List<Measurement> measureList = measurementService.findByCid(c_id);

		if (null != cvo && vo.getC_id().length() > 7) {
			// 로그인한 담당자 권한 과 해당 고객 담당자 매칭하여 같을 경우 만 정보 표시 -> 작업 필요
			vo = cvo;
			mv.addObject("message", cvo.getC_name() + "님의 고객 정보입니다.");
		} else { // 고객 정보가 null 일 경우 신규 고객 등록
			mv.addObject("message", "존재하지 않는 고객 번호입니다.");
		}

		System.out.println("Measure Index TEST::::::::::::::::::::::");

		final Long measureCount = measurementService.countByCid(c_id);
		final Long orderCount = orderService.countByCid(c_id);

		mv.addObject("measureList",measureList);
		mv.addObject("measureCount", measureCount);
		mv.addObject("orderCount", orderCount);
		mv.addObject("groupList", cgvo); // 그룹 리스트
		mv.addObject("cData", vo);
		mv.setViewName("/admin/customer-data");
		return mv;
	}// customerData

	@RequestMapping(value = "/admin/customerInsert")
	public ModelAndView customerInsert(final ModelAndView mv, CustomerVO vo) throws IOException {

		final ArrayList<CgroupVO> cgvo = customerService.groupList();
		mv.addObject("groupList", cgvo); // 그룹 리스트

		String file1, file2;
		if (!vo.getC_photo_filef().isEmpty()) {
			file1 = s3Services.upload(vo.getC_photo_filef());
			if (file1.length() < 500) {
				vo.setC_photo_file(file1); // 파일명이 500byte 이하일 경우만 저장
			} else {
				mv.addObject("message", "고객 정보를 업데이트하는데 실패하였습니다. 고객 사진의 파일명이 500byte를 초과했습니다.");
				return mv;
			}
		} // !getC_photo_filef.isEmpty()
		if (!vo.getProjectf().isEmpty()) {
			file2 = s3Services.upload(vo.getProjectf());
			if (file2.length() < 500) {
				vo.setProject(file2);// 파일명이 500byte 이하일 경우만 저장
			} else {
				mv.addObject("message", "고객 정보를 업데이트하는데 실패하였습니다. 프로젝트 파일명이 500byte를 초과했습니다.");
				return mv;
			}
		} // !getProjectf.isEmpty()

		// 최종 수정일 입력
		LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
		// System.out.println("---------->
		// "+LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd
		// HH:mm:ss")));
		vo.setLast_edit_day(LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")));
		
		final int test = customerService.insert(vo);

		if (test > 0) {
			// update 성공
			vo = customerService.selectOne(vo);
			mv.addObject("cData", vo);
			mv.addObject("message", vo.getC_name() + "님의 정보를 업데이트하였습니다.");
		} else {
			mv.addObject("message", "고객 정보를 업데이트하는데 실패하였습니다.");
		}
		mv.setViewName("/admin/customer-data");
		return mv;
	}// customerUpdate

	@RequestMapping(value = "/admin/customerUpdate")
	public ModelAndView customerUpdate(final ModelAndView mv, CustomerVO vo) throws IOException {

		final ArrayList<CgroupVO> cgvo = customerService.groupList();
		mv.addObject("groupList", cgvo); // 그룹 리스트

		String file1, file2;
		if (!vo.getC_photo_filef().isEmpty()) {
			file1 = s3Services.upload(vo.getC_photo_filef());
			if (file1.length() < 500) {
				vo.setC_photo_file(file1); // 파일명이 500byte 이하일 경우만 저장
			} else {
				mv.addObject("message", "고객 정보를 업데이트하는데 실패하였습니다. 고객 사진의 파일명이 500byte를 초과했습니다.");
				return mv;
			}
		}
		if (!vo.getProjectf().isEmpty()) {
			file2 = s3Services.upload(vo.getProjectf());
			if (file2.length() < 500) {
				vo.setProject(file2);// 파일명이 500byte 이하일 경우만 저장
			} else {
				mv.addObject("message", "고객 정보를 업데이트하는데 실패하였습니다. 프로젝트 파일명이 500byte를 초과했습니다.");
				return mv;
			}
		}
		// 최종 수정일 입력
		vo.setLast_edit_day(LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")));
		final int test = customerService.update(vo);

		if (test > 0) {
			// update 성공
			vo = customerService.selectOne(vo);
			mv.addObject("cData", vo);
			mv.addObject("message", vo.getC_name() + "님의 정보를 업데이트하였습니다.");
		} else {
			mv.addObject("message", "고객 정보를 업데이트하는데 실패하였습니다.");
		}
		mv.setViewName("/admin/customer-data");
		return mv;
	}// customerUpdate

	@RequestMapping(value = "/admin/customerList")
	public ModelAndView customerList(final ModelAndView mv, final SearchCriteria cri) {

		cri.setSnoEno();
		mv.addObject("customerList", customerService.searchList(cri));

		final PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		pageMaker.setTotalRow(customerService.searchRowCount(cri));
		mv.addObject("pageMaker", pageMaker);

		if (pageMaker.getTotalRow() > 0) {
			mv.addObject("message", "Total : " + pageMaker.getTotalRow() + " 명의 고객이 검색되었습니다.");
		} else {
			mv.addObject("message", "~~ 검색된 고객이 없습니다. ~~");
		}
		mv.setViewName("/admin/customer-list");
		return mv;
	}

	@RequestMapping(value = "/admin/popupCustomerList")
	public ModelAndView popupCustomerList(final ModelAndView mv, final SearchCriteria cri) {

		cri.setSnoEno();
		mv.addObject("customerList", customerService.searchList(cri));

		final PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		
		pageMaker.setTotalRow(customerService.searchRowCount(cri));
		mv.addObject("pageMaker",pageMaker);
		
		if (pageMaker.getTotalRow() > 0 ) {
			mv.addObject("message", "Total : "+pageMaker.getTotalRow()+" 명의 고객이 검색되었습니다." );  
		} else {
			mv.addObject("message", "~~ 검색된 고객이 없습니다. ~~");
		}
		mv.setViewName("/notiles/popup-customer");
		return mv;
	}
}
