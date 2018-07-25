package com.khd.admin.ManagerDAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.khd.admin.ManagerModel.Manager;
import com.khd.branch.Branch;
	
@Repository
public class ManagerDaoImpl implements ManagerDao{
	
	@Autowired
	private SqlSession sql;
	private String ns = "query.Manager";
	
	@Override
	public boolean join(Manager manager1) {
		
		int insert = sql.insert(ns+".managerresist", manager1);
		return false;
	}

	@Override
	public List<Branch> post(String branch) {
		System.out.println("������"+branch);
		List<Branch> Select = sql.selectList(ns+".branchcheck", branch);
		System.out.println("1241��"+Select.size());
		return Select;
	}

	@Override
	public int idcheck(String manager_id) {
		int Select = sql.selectOne(ns+".idcheck", manager_id);
		return Select;
	}

	@Override
	public int emailcheck(String manager_email) {
		int Select = sql.selectOne(ns+".emailcheck", manager_email);
		return Select;
	}

}