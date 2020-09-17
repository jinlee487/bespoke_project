package com.green.bespoke.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;

import com.green.bespoke.domain.admin.OrdertRepository;
import com.green.bespoke.domain.admin.Ordert;

@Service
@RequiredArgsConstructor
public class OrderTService {

	private final OrdertRepository orderRepository;
	
	@Transactional(readOnly = true)
	public List<Ordert> findByCid(String cid){ 
		return orderRepository.findByCid(cid);
	}
	
	@Transactional
	public Long countByCid(String cid){
		return orderRepository.countByCid(cid);
	}
}
	
//	    public OrderTListResponseDto findBycid(String customer_id) {
//	    	OrderT entity = orderRepository.findBycid(customer_id);
//		 	return new findBycid(entity);
//	    			orderRepository.findBycid(customer_id).stream()
//		 			.map(OrderTListResponseDto::new).collect(Collectors.toList());
//	    	.stream().map(OrderListResponseDto::new).collect(Collectors.toList());
//	    			.orElseThrow(() -> new IllegalArgumentException("customer_id 없음 = " + customer_id));
//	    	return new OrderListResponseDto(entity);
	
//	@Transactional
//	public String save(OrderTSaveRequestDto requestDto, String cid) {
//		return orderRepository.save(requestDto.toEntity()).getcid();
//	}
