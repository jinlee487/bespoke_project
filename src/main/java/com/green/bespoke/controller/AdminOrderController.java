package com.green.bespoke.controller;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import lombok.RequiredArgsConstructor;

import com.green.bespoke.domain.admin.Ordert;
import com.green.bespoke.service.OrderTService;

@RestController
@RequiredArgsConstructor
public class AdminOrderController {
	
	private final OrderTService orderService;

	@GetMapping(value = "/admin/customerOrder")
	public ModelAndView customerOrder(ModelAndView mv, String c_id) {
		List<Ordert> orderlist = orderService.findByCid(c_id);
		int orderCount = orderlist.size();
		System.out.println(orderlist);
		mv.addObject("c_id",c_id);
		mv.addObject("orderCount", orderCount);
		mv.addObject("orderList", orderlist);
		mv.setViewName("/admin/customer-order");
		return mv;
	}
	
}
