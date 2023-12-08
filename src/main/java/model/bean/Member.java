package model.bean;

import java.sql.Date;

public class Member {
	private String id;
	private String hoten;
	private Date ngaysinh;
	private String sdt;
	private String email;
	private String diachi;
	private String noidung;
	private String anh;
	
	public void setId(String id)
	{
		this.id=id;
	}
	public String getId()
	{
		return id;
	}
	public void setName(String name)
	{
		this.hoten=name;
	}
	public String getName()
	{
		return hoten;
	}
	public void setBirthday(Date n)
	{
		this.ngaysinh=n;
	}
	public Date getBirthday()
	{
		return ngaysinh;
	}
	public void setPhone(String i)
	{
		this.sdt=i;
	}
	public String getPhone()
	{
		return sdt;
	}
	public void setEmail(String i)
	{
		this.email=i;
	}
	public String getEmail()
	{
		return email;
	}
	public void setAddress(String i)
	{
		this.diachi=i;
	}
	public String getAddress()
	{
		return diachi;
	}
	public void setContent(String i)
	{
		this.noidung=i;
	}
	public String getContent()
	{
		return noidung;
	}
	public void setImage(String i)
	{
		this.anh=i;
	}
	public String getImage()
	{
		return anh;
	}
}
