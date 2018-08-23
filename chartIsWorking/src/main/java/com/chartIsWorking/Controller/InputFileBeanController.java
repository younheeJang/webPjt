package com.chartIsWorking.Controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.chartIsWorking.model.InputFileBean;
import com.chartIsWorking.repository.InputFileRepository;

@Controller
@RequestMapping("/inputFileBean")
public class InputFileBeanController {

	@Autowired
	private InputFileRepository inputFileRepository;
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String inputFileAdd() {
		return "inputFileBean/add";
	}
	
	@RequestMapping(value="/inputName/{id}", method=RequestMethod.GET)
	public String inputName(@PathVariable int id, Model model) {
		InputFileBean inputFileBean =inputFileRepository.findOne(id);
		model.addAttribute("data", inputFileBean);
		return "inputFileBean/inputName";
	}
}
