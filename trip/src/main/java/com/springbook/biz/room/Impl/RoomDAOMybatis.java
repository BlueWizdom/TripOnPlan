package com.springbook.biz.room.Impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springbook.biz.room.RoomVO;

@Repository
public class RoomDAOMybatis {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	//(업주) 숙소 등록
	public void insertRoom(RoomVO rvo) {
		System.out.println("마이바티스 숙소 등록 insertRoom 기능 처리");
		mybatis.insert("RoomDAO.insertRoom", rvo);
	}
	
	//(업주) 숙소 수정
	public void updateRoom(RoomVO rvo) {
		System.out.println("마이바티스 숙소 수정 updateRoom 기능 처리");
		mybatis.update("RoomDAO.updateRoom", rvo);
	}
	
	//(업주) 숙소 삭제
	public void deleteRoom(RoomVO rvo) {
		System.out.println("마이바티스 숙소 삭제 deleteRoom 기능 처리");
		mybatis.delete("RoomDAO.deleteRoom", rvo);
	}
	
	//(업주, 회원) 숙소 상세 조회
	public RoomVO getRoom(RoomVO rvo) {
		System.out.println("마이바티스 숙소 상세 조회 getRoom 기능 처리");
		return (RoomVO) mybatis.selectOne("RoomDAO.getRoom", rvo);
	}
	
	//(업주, 회원) 숙소 여러개 정보 리스트 조회
	public List<RoomVO> getRoomList(RoomVO rvo) {
		System.out.println("마이바티스 숙소 목록 조회 getRoomList 기능 처리");
		return mybatis.selectList("RoomDAO.getRoomList", rvo);
	}
	
	//(업주, 회원) 숙소 정보 전체 갯수 조회
	public int totalRoomListCnt(RoomVO rvo) {
		System.out.println("마이바티스 전체 숙소 목록 개수 조회 totalRoomListCnt 기능 처리");
		return mybatis.selectOne("RoomDAO.totalRoomListCnt", rvo);
	}
	
	//(회원) 장승연 숙소 검색필터
    	public List<RoomVO> u_searchRoomList(RoomVO rvo) {
      		System.out.println("장승연 숙소 검색 필터");
      		return mybatis.selectList("RoomDAO.ugetRoomList", rvo);
	}
    
    	public List<RoomVO> mainRoomList(){
    		System.out.println("mainRoomList 메소드 실행");
    		return mybatis.selectList("RoomDAO.mainRoomList");
   	}
    
    	public List<RoomVO> mainRoomThemeList(RoomVO vo){
    		System.out.println("mainRoomList 메소드 실행");
    		return mybatis.selectList("RoomDAO.mainRoomThemeList" , vo);
    }

		 //(회원) 숙소 좋아요 등록/좋아요 해제
		 public void updateLikeRoom(RoomVO rvo) {
			System.out.println("마이바티스 숙소 좋아요 등록/좋아요 해제 updateLikeRoom 기능 처리");
			mybatis.update("RoomDAO.updateLikeRoom", rvo); 
	}
	
}
