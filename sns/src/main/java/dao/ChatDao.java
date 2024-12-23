package dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import vo.ChatRoomVO;

@Repository
public class ChatDao implements IF_ChatDao {
	@Inject
	SqlSession sql;
	
	private static String mapperQuery = "dao.IF_ChatDao";

	//chatRoom table에 insert
	@Override
	public void chatRoomInsert(ChatRoomVO cVO) throws Exception {
		sql.insert(mapperQuery+".chatRoomInsert", cVO);
	}

	//chatMember table에 insert
	@Override
	public void chatMemberInsert(ChatRoomVO cVO) throws Exception {
		sql.insert(mapperQuery+".chatMemberInsert", cVO);
	}

	//chatmember table count select 
	@Override
	public int chatMemberSelect(String id) throws Exception {
		return sql.selectOne(mapperQuery+".chatMemberSelect", id);
	}

	//chatmember table의 nickanme select
	@Override
	public List<String> select(String id) throws Exception {
		return sql.selectList(mapperQuery+".select", id);
	}

	//chatlist select
	@Override
	public List<ChatRoomVO> chatList(String nickName) throws Exception {
		return sql.selectList(mapperQuery+".chatList", nickName);
	}

	//chatMember list
	@Override
	public List<ChatRoomVO> chatMemberList(String chatNum) throws Exception {
		return sql.selectList(mapperQuery+".chatMemberList", chatNum);
	}

	//채팅방 수정
	@Override
	public void chatRoomUpdate(ChatRoomVO cVO) throws Exception {
		sql.update(mapperQuery+".chatRoomUpdate", cVO);
	}

	//채팅맴버 삭제
	@Override
	public void chatDel(ChatRoomVO cVO) throws Exception {
		sql.delete(mapperQuery+".chatDel", cVO);
	}

	//남은 맴버 수 확인
	@Override
	public int chatMemberCnt(String chatNum) throws Exception {
		return sql.selectOne(mapperQuery+".chatMemberCnt", chatNum);
	}

	//채팅방 삭제
	@Override
	public void chatRoomDel(String chatNum) throws Exception {
		sql.delete(mapperQuery+".chatRoomDel", chatNum);
	}
	
}
