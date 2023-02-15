package com.example.demo.dao;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.model.IssueDetail;

public interface IssueDetailsRepo extends CrudRepository<IssueDetail,String>
{
	

}
