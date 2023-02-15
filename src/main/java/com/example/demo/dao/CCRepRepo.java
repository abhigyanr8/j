package com.example.demo.dao;



import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.example.demo.model.CCRepresentative;

import java.util.List;



public interface CCRepRepo extends CrudRepository<CCRepresentative,Integer>
{
	List <CCRepresentative> findByIssuesInProgress(int issuesInProgress);
	
	@Query("select min(issuesInProgress) from CCRepresentative")
	int findminissue();
	
	

}
