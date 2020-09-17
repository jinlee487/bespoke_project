package com.green.bespoke.service.help;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.green.bespoke.domain.help.Notice;
import com.green.bespoke.domain.help.NoticeRepository;
import com.green.bespoke.dto.help.NoticeListResponseDto;
import com.green.bespoke.dto.help.NoticeResponseDto;
import com.green.bespoke.dto.help.NoticeSaveRequestDto;
import com.green.bespoke.dto.help.NoticeUpdateRequestDto;
import com.sun.istack.Nullable;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class NoticeService {
	private final NoticeRepository noticeRepository;
	
	@Transactional
	public Long save(NoticeSaveRequestDto requestDto) {
		return noticeRepository.save(requestDto.toEntity()).getId();
	} // save

	@Transactional
	public Long update(Long id, NoticeUpdateRequestDto requestDto) {
		Notice notice = noticeRepository.findById(id)
				.orElseThrow(() -> new IllegalArgumentException("게시글 없음. id = " + id));
		notice.update(requestDto.getTitle(), requestDto.getContent(), requestDto.getCount());
		return id;
	} // update
	
    @Transactional
    public void delete (Long id) {
    	Notice notice = noticeRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("게시글 없음. id=" + id));
        noticeRepository.delete(notice);
    } // delete

    @Transactional(readOnly = true)
    public NoticeResponseDto findById(Long id) {
    	Notice entity = noticeRepository.findById(id)
    			.orElseThrow(() -> new IllegalArgumentException("게시글 없음. id = " + id));
    	return new NoticeResponseDto(entity);
    } // detail
    
	@Transactional(readOnly = true)
	public List<NoticeListResponseDto> noticeList(Pageable pageable) {
		return noticeRepository.findAll(PageRequest.of(pageable.getPageNumber(), pageable.getPageSize(), Sort.by("id").descending()))
				.stream().map(NoticeListResponseDto::new).collect(Collectors.toList());
	}
	
	@Transactional(readOnly = true)
	public Page<Notice> noticePage(Pageable pageable) {
		int page = (pageable.getPageNumber() == 0) ? 0 : (pageable.getPageNumber() - 1); // 페이지 1부터 시작하도록
		return noticeRepository.findAll(PageRequest.of(page, pageable.getPageSize(), Sort.by("id").descending()));
	} // findAll
	
	/*** Search ***/
	
	@Transactional
	public Page<Notice> categorySearch(String category, Pageable pageable){
		int page = (pageable.getPageNumber() == 0) ? 0 : (pageable.getPageNumber() - 1); // 페이지 1부터 시작하도록
		return noticeRepository.findByCategoryContaining(category, PageRequest.of(page, pageable.getPageSize(), Sort.by("id").descending()));
	} // 카테고리 검색
	
	@Transactional
	public Page<Notice> titleSearch(String title, Pageable pageable){
		int page = (pageable.getPageNumber() == 0) ? 0 : (pageable.getPageNumber() - 1); // 페이지 1부터 시작하도록
		return noticeRepository.findByTitleContaining(title, PageRequest.of(page, pageable.getPageSize(), Sort.by("id").descending()));
	} // 제목 검색
	
	@Transactional
	public Page<Notice> contentSearch(String content, Pageable pageable){
		int page = (pageable.getPageNumber() == 0) ? 0 : (pageable.getPageNumber() - 1); // 페이지 1부터 시작하도록
		return noticeRepository.findByContentContaining(content, PageRequest.of(page, pageable.getPageSize(), Sort.by("id").descending()));
	} // 내용 검색

	@Transactional
	public Page<Notice> titleOrContentSearch(String title, @Nullable String content, Pageable pageable){
		int page = (pageable.getPageNumber() == 0) ? 0 : (pageable.getPageNumber() - 1); // 페이지 1부터 시작하도록
		return noticeRepository.findByTitleOrContentContaining(title, content, PageRequest.of(page, pageable.getPageSize(), Sort.by("id").descending()));
	} // 제목 + 내용 검색
	
	@Transactional
	public Page<Notice> categoryAndTitleOrContentSearch(@Nullable String category, @Nullable String title, @Nullable String content, Pageable pageable){
		int page = (pageable.getPageNumber() == 0) ? 0 : (pageable.getPageNumber() - 1); // 페이지 1부터 시작하도록
		return noticeRepository.findByCategoryAndTitleOrContentContaining(category, title, content, PageRequest.of(page, pageable.getPageSize(), Sort.by("id").descending()));
	} // 카테고리 내 제목 + 내용 검색 (결과 내 재검색)
	
	
	
		
	

	
	

}
