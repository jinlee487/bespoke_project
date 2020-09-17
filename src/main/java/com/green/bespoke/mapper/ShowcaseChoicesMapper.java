package com.green.bespoke.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.green.bespoke.vo.ShowcaseChoicesVO;

@Repository
@Mapper
public interface ShowcaseChoicesMapper {

	ArrayList<ShowcaseChoicesVO> selectListWork(); //criList()
	ArrayList<ShowcaseChoicesVO> selectListBrand(); //criList()
	ArrayList<ShowcaseChoicesVO> selectListAge(); //criList()
	ArrayList<ShowcaseChoicesVO> selectListBodyType(); //criList()
	ArrayList<ShowcaseChoicesVO> selectListFabricPattern(); //criList()
	ArrayList<ShowcaseChoicesVO> selectListLapelWidth(); //criList()	
	ArrayList<ShowcaseChoicesVO> selectListLapel(); //criList()
	ArrayList<ShowcaseChoicesVO> selectListPocket(); //criList()
	ArrayList<ShowcaseChoicesVO> selectListSleeveLength(); //criList()	
	ArrayList<ShowcaseChoicesVO> selectListSlit(); //criList()
	ArrayList<ShowcaseChoicesVO> selectListStiching(); //criList()
	ArrayList<ShowcaseChoicesVO> selectListExtraDesign(); //criList()


}

