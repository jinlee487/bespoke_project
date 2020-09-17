package com.green.bespoke.controller;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;

import com.green.bespoke.dto.admin.MeasurementSaveRequestDto;
import com.green.bespoke.dto.admin.MeasurementUpdateRequestDto;
import com.green.bespoke.service.MeasurementService;

@RestController
@RequiredArgsConstructor
public class AdminMeasurementApiController {
	
	private final MeasurementService measurementService;
	
	@PostMapping("/api/customerMeasure")
	public String save(@RequestBody final MeasurementSaveRequestDto requestDto) {
		return measurementService.save(requestDto);
	}

	@PutMapping("/api/customerMeasure/{mid}")
	public String update(@PathVariable final String mid, @RequestBody final MeasurementUpdateRequestDto requestDto) {
		return measurementService.update(mid, requestDto);
	}

	@DeleteMapping("/api/customerMeasure/{mid}")
	public String delete(@PathVariable("mid") final String mid) {
		measurementService.delete(mid);
        return mid;
    }
	
}
