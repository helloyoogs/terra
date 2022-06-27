package com.terra_board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.terra_board.dto.BDto;

public class BDao {

	DataSource datasource;
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	//BDao 생성하자마자 db 연결에 필요한 객체 생성
	//datasource 통하여 db접속
	public BDao() {
		try {
			Context ctx = new InitialContext();
			datasource = (DataSource)ctx.lookup("java:comp/env/jdbc/mariadb");			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//글목록보기
	public ArrayList<BDto> list() {
		//BDto를 import하는 이유 : BDao랑 다른 패키지 안에 있기 때문이다.
		ArrayList<BDto> dtos = new ArrayList<BDto>();
		
		try {
			//mvc_board 테이블 읽어 들여서, dtos에 값을 담고, 그 dto를 반환할 것!
			conn = datasource.getConnection();
			
			String sql = "select bId, bName, bTitle, bContent, bDate, bHit, bGroup, bStep, bIndent "
					+ "from terra_board1 order by bGroup desc, bStep asc";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery(); //executeQuery = select문, executeUpdate = insert, update, delete문
			while(rs.next()) {
				int bId = rs.getInt("bId"); //컬럼 bid의 값 읽어옴
				String bName = rs.getString("bName");
				String bTitle = rs.getString("bTitle");
				String bContent = rs.getString("bContent");
				Timestamp bDate = rs.getTimestamp("bDate");
				int bHit = rs.getInt("bHit");
				int bGroup = rs.getInt("bGroup");
				int bStep = rs.getInt("bStep");
				int bIndent = rs.getInt("bIndent");
				
				BDto dto = new BDto(bId, bName, bTitle, bContent, bDate, bHit, bGroup, bStep, bIndent);
				dtos.add(dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		
		
		
		return dtos;
	}
	
	public BDto contentView(String strID) {
		upHit(strID);
		BDto dto = null;
		
		try {
			conn = datasource.getConnection();
			String sql = "select * from terra_board1 where bid = ?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(strID)); //글번호
			rs = pstmt.executeQuery();
			
			//해당 글이 존재할 경우에만 dto에 값을 넣음
			if(rs.next()) {
				int bId = rs.getInt("bId");
				String bName = rs.getString("bName");
				String bTitle = rs.getString("bTitle");
				String bContent = rs.getString("bContent");
				
				Timestamp bDate = rs.getTimestamp("bDate");
				
				int bHit = rs.getInt("bHit");
				int bGroup = rs.getInt("bGroup");
				int bStep = rs.getInt("bStep");
				int bIndent = rs.getInt("bIndent");
				
				dto = new BDto(bId, bName, bTitle, bContent, bDate, bHit, bGroup, bStep, bIndent);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return dto;
	}
	//조회수 올리기
	private void upHit(String bId) {
		try {
			conn = datasource.getConnection();
			String sql = "update terra_board1 set bHit = bHit+1 where bid=?"; //오타 조심
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,bId); //setNString 아님~!
			pstmt.executeUpdate(); //executeLargeUpdate 아님!
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}

	public void modify(String bId, String bName, String bTitle, String bContent) {
		try {
			conn = datasource.getConnection();
			//bId를 기준으로 글쓴이(=bName), 제목(=bTitle), 내용(bContent) 부분을 변경하고자 함.
			String sql = "update terra_board1 set bName=?, bTitle=?, bContent=? where bid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,bName);
			pstmt.setString(2,bTitle);
			pstmt.setString(3,bContent);
			pstmt.setInt(4, Integer.parseInt(bId));//bId값은 int이므로 setString대신 setInt를 쓴다.
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}	
	
	
	//insert into 문 통해서 db에 데이터 추가(=글추가)
	public void write(String bName, String bTitle, String bContent) {
		try {
			conn=datasource.getConnection();
			String sql = "insert into terra_board1(bId, bName, bTitle, bContent, bHit, bGroup, bStep, bIndent) values "
					+ "(nextval('terra_board1'), ?,?,?,0,currval('terra_board1'),0,0)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bName);
			pstmt.setString(2, bTitle);
			pstmt.setString(3, bContent);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}
	
	public void delete(String bId) {
		try {
			System.out.println(bId);
			conn = datasource.getConnection();
			String sql = "delete from terra_board1 where bId=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(bId));
			pstmt.executeUpdate(); 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				//rs를 close하는 건 rs가 null인지 아닌지 체크도 해야 하고, select를 할 거 아니면 rs는 아예 쓰지도 않음.
				pstmt.close();
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}

	public BDto reply_view(String bId) {
		BDto dto = null;
		try {
			conn = datasource.getConnection();
			String sql = "select * from terra_board1 where bId=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(bId));
			rs = pstmt.executeQuery();
			
			//만약 데이터가 존재하고 있다면, dto에 값이 들어감
			//없다면 dto는 null일거고, 결국 이 메소드는 null을 반환한다.
			if(rs.next()) {
				int bIdnum = Integer.parseInt(bId);//rs.getInt("bId");
				String bName = rs.getString("bName");
				String bTitle = rs.getString("bTitle");
				String bContent = rs.getString("bContent");
				Timestamp bDate = rs.getTimestamp("bDate");
				int bHit = rs.getInt("bHit");
				int bGroup = rs.getInt("bGroup");
				int bStep = rs.getInt("bStep");
				int bIndent = rs.getInt("bIndent");
				
				dto = new BDto(bIdnum, bName, bTitle, bContent, bDate, bHit, bGroup, bStep, bIndent);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return dto;
	}
	
	public void reply(String bId, String bName, String bTitle, String bContent, String bGroup, 
			String bStep, String bIndent) {
		replyShape(bGroup, bStep); //기존 글들을 밑으로 내림
		try {
			conn = datasource.getConnection();
			String sql = "insert into terra_board1(bId, bName, bTitle, bContent, bGroup, bStep, bIndent) values "
					+ "(nextval('terra_board1'),?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, bName);
			pstmt.setString(2, bTitle);
			pstmt.setString(3, bContent);
			pstmt.setInt(4, Integer.parseInt(bGroup));
			pstmt.setInt(5, Integer.parseInt(bStep)+1);
			pstmt.setInt(6, Integer.parseInt(bIndent)+1);
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
	}

	private void replyShape(String bGroup, String bStep) {
		try {
			conn = datasource.getConnection();
			String sql = "update terra_board1 set bStep=bStep+1 where bGroup=? and bStep>?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(bGroup));
			pstmt.setInt(2, Integer.parseInt(bStep));
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
	}
	
	
	
	
}








