package kr.co.coward.contest.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.coward.contest.model.vo.Contest;

@Repository
public class ContestDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	private Contest contest;

	private Logger logger = LoggerFactory.getLogger(ContestDAO.class);

	/**
	 * 진행중인 공모전 리스트 조회 DAO
	 */
	public List<Contest> getContestList(String type) {

		String mapperPath = null;

		switch (type) {
		case "all":
			mapperPath = "contestMapper.getAllContestList";
			break;
		case "default":
			mapperPath = "contestMapper.getDefaultContestList";
			break;
		case "new":
			mapperPath = "contestMapper.getNewContestList";
			break;
		case "popular":
			mapperPath = "contestMapper.getPopularContestList";
			break;
		}

		return sqlSession.selectList(mapperPath);

	}

	/**
	 * 필터 공모전 리스트 조회 DAO
	 * 
	 * @param type
	 * @return
	 */
	public List<Contest> filterContestList(String type) {

		String mapperPath = null;

		switch (type) {
		case "all":
			mapperPath = "contestMapper.getAllContestList";
			break;
		case "recruiting":
			mapperPath = "contestMapper.getRecruitingContestList";
			break;
		case "imminent":
			mapperPath = "contestMapper.getImminentContestList";
			break;
		case "end":
			mapperPath = "contestMapper.getEndContestList";
			break;
		}
		return sqlSession.selectList(mapperPath);

	}

	/**
	 * 공모전 개최 DAO
	 * 
	 * @param paramMap
	 * @return
	 */
	public int contestCreate(Map<String, Object> paramMap) {

		int result = sqlSession.insert("contestMapper.contestCreate", paramMap);

		if (result > 0)
			result = (int) paramMap.get("contestNo");

		System.out.println(result);

		return result;

	}

	/**
	 * 공모전 디테일 DAO
	 * 
	 * @param contestNo
	 * @return
	 */
	public Contest contestDetail(int contestNo) {

		return sqlSession.selectOne("contestMapper.contestDetail", contestNo);

	}

	/**
	 * 맞춤 공모전
	 * 
	 * @param contestNo
	 * @return
	 */
	/*
	 * public List<Contest> recommendContest(int typeNo) {
	 * 
	 * logger.info("typeNo 확인: " + typeNo);
	 * 
	 * return sqlSession.selectList("contestMapper.recommendContest", typeNo);
	 * 
	 * }
	 */

	public List<Contest> getRecommendList(int typeNo) {

		logger.info("typeNo DAO 확인: " + typeNo);

		return sqlSession.selectList("contestMapper.getRecommendList", typeNo);
	}

	/**
	 * 북마크 카운트 DAO
	 * 
	 * @param contest
	 * @return
	 */
	public int bookmarkCount(Contest contest) {

		int result = sqlSession.insert("contestMapper.bookmarkCount", contest);

		if (result > 0)
			result = contest.getBookmarkCount();

		System.out.println(result);

		return result;

	}

	/**
	 * 공모전 참가 DAO
	 * 
	 * @param paramMap
	 * @return
	 */
	public int contestAttendForm(Map<String, Object> paramMap) {

		return sqlSession.insert("contestAttendMapper.contestAttend", paramMap);
	}

}
