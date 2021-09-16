package bookmark;

import java.util.ArrayList;

import com.google.gson.Gson;

public class CommonService {
	private BookmarkDao dao;
	private Gson gson;
	
	public CommonService() {
		dao = new BookmarkDao();
		gson = new Gson();
	}
	// 북마크 설정/취소
	public void bmInsert(String id,String classcode) {
		dao.bmInsert(id, classcode);
	}
	// 북마트 상세정보 불러오기
	public Bookmark bookmarkInfo(String id,String classcode) {
		return dao.bookmarkInfo(id, classcode);
	}
	// 북마크 리스트
	public ArrayList<BookmarkInfo> bookmarkList(String id){
		return dao.bookmarkList(id);
	}
	
}
