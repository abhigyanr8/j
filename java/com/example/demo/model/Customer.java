package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Id;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import com.sun.istack.NotNull;

@Entity
@Table
public class Customer 
{
	@Id
	@NotBlank(message="cantb be empty")
	private String Id;
	@NotBlank(message="cantb be empty")
	private String Name;
	@NotBlank(message="cantb be empty")
	private String Address;
	@NotBlank(message="cantb be empty")
	private String Phone;
	@NotBlank(message="cantb be empty")
	private String LoginId;
	@NotBlank(message="cantb be empty")
	private String Pass;
	
	public String getId() {
		return Id;
	}
	public void setId(String id) {
		Id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public String getLoginId() {
		return LoginId;
	}
	public void setLoginId(String loginId) {
		LoginId = loginId;
	}
	public String getPass() {
		return Pass;
	}
	@Override
	public String toString() {
		return "Customer [Id=" + Id + ", Name=" + Name + ", Address=" + Address + ", Phone=" + Phone + ", LoginId="
				+ LoginId + ", Pass=" + Pass + "]";
	}
	public void setPass(String pass) {
		Pass = pass;
	}

}
