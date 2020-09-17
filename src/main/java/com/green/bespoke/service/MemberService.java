package com.green.bespoke.service;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.green.bespoke.mapper.MemberMapper;
import com.green.bespoke.paging.SearchCriteria;
import com.green.bespoke.vo.MemberVO;

@Service
public class MemberService {
	
	@Autowired
	private MemberMapper mapper;
	
	@Autowired
	private JavaMailSender mailSender;

	public ArrayList<MemberVO> searchList(SearchCriteria cri){
		return mapper.searchList(cri);
	} //searchList
	
	public ArrayList<MemberVO> requestList(SearchCriteria cri){
		return mapper.requestList(cri);
	} //searchList
	
	public int searchRowCount(SearchCriteria cri){
		return mapper.searchRowCount(cri);
	}//searchRowCount
	
	
	public List<MemberVO> memberList(){
		return mapper.memberList();
	}
	
	public MemberVO homepageLogin(String email) {
		return mapper.homepageLogin(email);
	}
	
	public MemberVO findByEmail(String email) {
		return mapper.findByEmail(email);
	}
	
	public MemberVO findByMember(String email,String social) {
		return mapper.findByMember(email,social);
	}

	public int update(MemberVO vo) {
		return mapper.update(vo);
	}; // update
	
	
	public int sign_up(MemberVO vo){
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		
		if (vo.getC_id() == "") {
			vo.setRole("ROLE_GUEST");
		} else {
			vo.setRole("ROLE_USER");
		}
		
		vo.setPassword(passwordEncoder.encode(vo.getPassword()));
		vo.setCreated_date(LocalDateTime.now());
		
		return mapper.sign_up(vo);
	}
	
	public String make_pattern() {
		
		Random random = new Random();
		String pattern = "";
		int dice;
		
        for (int i = 0; i < 10; i++) {
        	dice = random.nextInt(2);
        	if (dice == 0) {
            	pattern = pattern + (char)(random.nextInt(26) + 65);
            } else {
            	pattern = pattern + random.nextInt(10);
            }
        }
        
		return pattern;
	}
	
	public void sendMail(String email, String title, String content) {
		
		String setfrom = "bespokeofficial1@gmail.com";
        
        try {
        	MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper messageHelper = new MimeMessageHelper(message,
                    true, "UTF-8");
            messageHelper.setFrom(setfrom);
            messageHelper.setTo(email);
            messageHelper.setSubject(title);
            messageHelper.setText(content);
            mailSender.send(message);
        } catch (Exception e) {
            System.out.println("emailSend Exception => " +e.toString());
        }
	}
	
	public int updatePassword(String email, String pattern) {
		return mapper.updatePassword(email, pattern);
	}
	

//    @Transactional(readOnly = true)
//    public MyInfoResponseDto findById(Long id) {
//    	Member entity = memberRepository.findById(id)
//    			.orElseThrow(() -> new IllegalArgumentException("이메일 정보가 없습니다."));
//    	return new MyInfoResponseDto(entity);
//    } // detail
}