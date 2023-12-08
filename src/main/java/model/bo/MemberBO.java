package model.bo;

import model.bean.Member;
import model.dao.MemberDAO;

public class MemberBO {
	MemberDAO memberDAO=new MemberDAO();
	public Member getMemberById(String id)
	{
		return memberDAO.getMemberById(id);
		
		
	}
	public Member getMemberByLogin(String username,String password)
	{
		return memberDAO.getMemberByLogin(username, password);
	}
	public void updateMember(Member t)
	{
		memberDAO.updateMember(t);
	}
}
