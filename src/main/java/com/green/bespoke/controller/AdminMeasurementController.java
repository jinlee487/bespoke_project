package com.green.bespoke.controller;

import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import lombok.RequiredArgsConstructor;

import com.green.bespoke.domain.admin.Measurement;
import com.green.bespoke.dto.admin.MeasurementResponseDto;
import com.green.bespoke.service.CustomerService;
import com.green.bespoke.service.MeasurementService;
import com.green.bespoke.vo.CustomerVO;

@RestController
@RequiredArgsConstructor
public class AdminMeasurementController {
	
	private final CustomerService customerService;
	private final MeasurementService measurementService;
	
	@RequestMapping(value = "/admin/customerMeasure")
	public ModelAndView customerMeasure(final ModelAndView mv, final String c_id, CustomerVO vo) {
		vo = customerService.selectOne(vo);
		final List<Measurement> measureList = measurementService.findByCid(c_id);
		final int measureCount = measureList.size();
		System.out.println("mid없음");
		mv.addObject("measureCount", measureCount);
		mv.addObject("cData", vo);
		mv.addObject("measureList",measureList);
		mv.setViewName("/admin/customer-measure");
		return mv;
	}

	@RequestMapping(value ="/admin/customerMeasure/detail1")
	public ModelAndView measureDetail1(final ModelAndView mv,
			@RequestParam(value="mid", required= false) final String mid
			) {
		if(mid != null) {
		final MeasurementResponseDto measureDetail1 = measurementService.findByMid(mid);
		mv.addObject("measureDetail1", measureDetail1);
		mv.setViewName("/notiles/measure-detail1");
		}
		return mv;
	}

	@RequestMapping(value ="/admin/customerMeasure/detail2")
	public ModelAndView measureDetail2(final ModelAndView mv,
			@RequestParam(value="mid", required= false) final String mid
			) {
		if(mid != null) {
		final MeasurementResponseDto measureDetail2 = measurementService.findByMid(mid);
		mv.addObject("measureDetail2", measureDetail2);
		mv.setViewName("/notiles/measure-detail2");
		}
		return mv;
	}

	@RequestMapping(value ="/admin/customerMeasure/detailInsert")
	public ModelAndView measureDetailInsert(final ModelAndView mv,
			@RequestParam(value="mid", required= false) final String mid
			) {
		if(mid != null) {
		final MeasurementResponseDto measureDetail = measurementService.findByMid(mid);
		mv.addObject("measureDetail", measureDetail);
		mv.setViewName("/notiles/measure-detail-insert");
		}
		return mv;
	}

	@RequestMapping(value ="/admin/customerMeasure/save")
	public ModelAndView measureSave(final ModelAndView mv, CustomerVO vo
	) {
		vo = customerService.selectOne(vo);
		final String c_id = vo.getC_id();
		mv.addObject("customerid", c_id);
		mv.setViewName("/notiles/measure-save");
		return mv;
	}
	

}
