package com.green.bespoke.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestBody;

import com.green.bespoke.domain.admin.Measurement;
import com.green.bespoke.domain.admin.MeasurementRepository;
import com.green.bespoke.dto.admin.MeasurementResponseDto;
import com.green.bespoke.dto.admin.MeasurementSaveRequestDto;
import com.green.bespoke.dto.admin.MeasurementUpdateRequestDto;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MeasurementService {
	public final MeasurementRepository measurementRepository;
	
	@Transactional
	public String save(@RequestBody final MeasurementSaveRequestDto requestDto) {
		return measurementRepository.save(requestDto.toEntity()).getCid();
	} // save

	@Transactional
	public String update(final String mid, final MeasurementUpdateRequestDto requestDto) {
		final Measurement measurement = measurementRepository.findByMid(mid)
				.orElseThrow(() -> new IllegalArgumentException("치수 없음. 업데이트 실패 mid = " + mid));
		measurement.update(

			requestDto.getMid(),
			requestDto.getCid(),
			requestDto.getM_day(),
			requestDto.getMemo(),
			requestDto.getManager_id(),
			requestDto.getHeight(),
			requestDto.getTotal_l(),
			requestDto.getTotal_al(),
			requestDto.getArmhole_l(),
			requestDto.getArmhole_al(),
			requestDto.getBacka_l(),
			requestDto.getBacka_al(),
			requestDto.getFronta_l(),
			requestDto.getFronta_al(),
			requestDto.getShoulder_w(),
			requestDto.getShoulder_aw(),
			requestDto.getSleeve_l(),
			requestDto.getSleevel_l(),
			requestDto.getSleever_l(),
			requestDto.getBack_w(),
			requestDto.getBack_aw(),
			requestDto.getFront_w(),
			requestDto.getFront_aw(),
			requestDto.getChest_s(),
			requestDto.getChest_as(),
			requestDto.getBelly_s(),
			requestDto.getBelly_as(),
			requestDto.getWaist_s(),
			requestDto.getWaist_as(),
			requestDto.getHip_s(),
			requestDto.getHip_as(),
			requestDto.getPants_l(),
			requestDto.getPants_al(),
			requestDto.getLeg_l(),
			requestDto.getLeg_al(),
			requestDto.getPbottom_w(),
			requestDto.getPbottom_aw(),
			requestDto.getSdrop_s(),
			requestDto.getSdropl_s(),
			requestDto.getSdropr_s(),
			requestDto.getNeck_d(),
			requestDto.getNeck_ad(),
			requestDto.getHip_d(),
			requestDto.getHip_ad(),
			requestDto.getWaist_d(),
			requestDto.getWaist_ad(),
			requestDto.getBelly_d(),
			requestDto.getBelly_ad(),
			requestDto.getChest_d(),
			requestDto.getChest_ad(),
			requestDto.getWeight_s(),
			requestDto.getWeight_as(),
			requestDto.getNeck_s(),
			requestDto.getNeck_as(),
			requestDto.getSshoulder_s(),
			requestDto.getSsleeve_l(),
			requestDto.getSsleevel_l(),
			requestDto.getSsleever_l(),
			requestDto.getShirts_l());

		return mid;
		
	}
	
    @Transactional
    public void delete (final String mid) {
    	final Measurement measurement = measurementRepository.findByMid(mid)
                .orElseThrow(() -> new IllegalArgumentException(mid));
    	measurementRepository.delete(measurement);
    }
	
	
	@Transactional
	public List<Measurement> findByCid(final String cid){
		return measurementRepository.findByCidOrderByMidDesc(cid);
	}
	
	@Transactional
	public MeasurementResponseDto findByMid(final String mid){
		final Measurement entity = measurementRepository.findByMid(mid)
			.orElseThrow(() -> new IllegalArgumentException("해당되는 mid가 없습니다. = " + mid));
		return new MeasurementResponseDto(entity);
	}
	
	@Transactional
	public Long countByCid(final String cid){
		return measurementRepository.countByCid(cid);
	}
	
	
}
