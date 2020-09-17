package com.green.bespoke.service.help;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.green.bespoke.domain.help.Faq;
import com.green.bespoke.domain.help.FaqRepository;
import com.green.bespoke.dto.help.FaqListResponseDto;
import com.green.bespoke.dto.help.FaqResponseDto;
import com.green.bespoke.dto.help.FaqSaveRequestDto;
import com.green.bespoke.dto.help.FaqUpdateRequestDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class FaqService {
	private final FaqRepository faqRepository;

	@Transactional
	public Long save(FaqSaveRequestDto requestDto) {
		return faqRepository.save(requestDto.toEntity()).getId();
	}

	@Transactional
	public Long update(Long id, FaqUpdateRequestDto requestDto) {
		Faq faq = faqRepository.findById(id)
				.orElseThrow(() -> new IllegalArgumentException("게시글 없음. id = " + id));

		faq.update(requestDto.getTitle(), requestDto.getContent());
		return id;
	}

	public FaqResponseDto findById(Long id) {
		Faq entity = faqRepository.findById(id)
				.orElseThrow(() -> new IllegalArgumentException("게시글 없음. id = " + id));
		return new FaqResponseDto(entity);
	}

	@Transactional(readOnly = true)
	public List<FaqListResponseDto> faqList(Pageable pageable) {
		return faqRepository.findAll(PageRequest.of(pageable.getPageNumber(), pageable.getPageSize(), Sort.by("id").descending()))
				.stream().map(FaqListResponseDto::new).collect(Collectors.toList());
	}
	
	public Page<Faq> faqPage(Pageable pageable) {
		
		int page = (pageable.getPageNumber() == 0) ? 0 : (pageable.getPageNumber() - 1); // page는 index 처럼 0부터 시작하므로 jsp와 일치시키기
		return faqRepository.findAll(PageRequest.of(page, pageable.getPageSize(), Sort.by("id").descending()));
	}
	

}
