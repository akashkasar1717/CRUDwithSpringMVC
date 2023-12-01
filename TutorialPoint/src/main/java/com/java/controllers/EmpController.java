package com.java.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.java.beans.Emp;
import com.java.dao.EmpDao;

@Controller
public class EmpController {

	@Autowired
	EmpDao dao ;

	@RequestMapping("/empform")
	public String showForm(Model m) {
		m.addAttribute("command", new Emp());
		return "empform";
	}

	@RequestMapping("/viewemp")
	public String viewemp(Model m) {
		List<Emp> list = dao.getEmployees();
		m.addAttribute("list", list);
		return "viewemp";
	}

	@RequestMapping(value = "/editemp/{id}")
	public String edit(@PathVariable("id") int id, Model m) {
		Emp emp = dao.getEmpById(id);
		System.out.println(emp);
		m.addAttribute("command", emp);
		return "empeditform";
	}

	@RequestMapping(value = "/editsave", method = RequestMethod.POST)
	public String editSave(@ModelAttribute("emp") Emp emp, Model m) {
		dao.update(emp);
		System.out.println(emp);
		m.addAttribute("em", emp);
		return "redirect:/viewemp";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(@ModelAttribute("emp") Emp emp, Model m) {
		dao.save(emp);
		m.addAttribute("em", emp);
		return "redirect:/viewemp";
	}

	@RequestMapping(value = "/deleteemp/{id}", method = RequestMethod.GET)
	public String deleteEmployee(@PathVariable("id") int id) {
		dao.deleteEmployee(id);
		System.out.println(id + " deleted");
		return "redirect:/viewemp";
	}
}
