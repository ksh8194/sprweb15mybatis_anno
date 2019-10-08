package pack.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import pack.model.SangpumDto;
import pack.model.SangpumInter;

@Controller
public class ListController {
		
	@Autowired
	@Qualifier("sangpumImpl")
	private SangpumInter sangpumInter;
	
	@RequestMapping("list")
	public ModelAndView listProcess() {
		ArrayList<SangpumDto> list = (ArrayList<SangpumDto>)sangpumInter.list();
		
		ModelAndView view = new ModelAndView("list");
		view.addObject("datas",list);
		return view;
		
	}
		
}