package com.green.bespoke.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

import com.green.bespoke.mapper.ShowcaseChoicesMapper;
import com.green.bespoke.vo.ShowcaseChoicesVO;


@Service
@RequiredArgsConstructor
public class ShowcaseChoicesService {
	
	public final ShowcaseChoicesMapper mapper;
	
	public List<ShowcaseChoicesVO> selectListWork(){
		System.out.println("work");
		return mapper.selectListWork();
	}
	public List<ShowcaseChoicesVO> selectListBrand(){
		System.out.println("brand");
		return mapper.selectListBrand();
	}	
	public List<ShowcaseChoicesVO> selectListAge(){
		System.out.println("age");
		return mapper.selectListAge();
	}		
	public List<ShowcaseChoicesVO> selectListBodyType(){
		System.out.println("body");
		return mapper.selectListBodyType();
	}	
	public List<ShowcaseChoicesVO> selectListFabricPattern(){
		System.out.println("pattern");
		return mapper.selectListFabricPattern();
	}	
	public List<ShowcaseChoicesVO> selectListLapelWidth(){
		System.out.println("width");
		System.out.println("this is width => \n" + mapper.selectListLapelWidth());
		return mapper.selectListLapelWidth();
	}	
	public List<ShowcaseChoicesVO> selectListLapel(){
		System.out.println("lapel");
		return mapper.selectListLapel();
	}	
	public List<ShowcaseChoicesVO> selectListPocket(){
		System.out.println("pocket");
		return mapper.selectListPocket();
	}	
	public List<ShowcaseChoicesVO> selectListSleeveLength(){
		System.out.println("sleeve");
		return mapper.selectListSleeveLength();
	}	
	public List<ShowcaseChoicesVO> selectListSlit(){
		System.out.println("slit");
		return mapper.selectListSlit();
	}	
	public List<ShowcaseChoicesVO> selectListStiching(){
		System.out.println("stich");
		return mapper.selectListStiching();
	}
	public List<ShowcaseChoicesVO> selectListExtraDesign(){
		System.out.println("design");
		return mapper.selectListExtraDesign();
	}	
}
