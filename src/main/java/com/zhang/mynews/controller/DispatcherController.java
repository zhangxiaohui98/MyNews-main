package com.zhang.mynews.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DispatcherController {
	
	/**
	 * 跳转到index页面
	 * @return
	 */
	@RequestMapping(value = "/index",method = RequestMethod.GET)
	public String index() {
		return "index";
	}
	
	/**
	 * 跳转到login页面
	 * @return
	 */
	@RequestMapping(value = "/login",method = RequestMethod.GET)
	public String login() {
		return "login";
	}
	
	/**
	 * 跳转到login页面
	 * @return
	 */
	@RequestMapping(value = "/user",method = RequestMethod.GET)
	public String user() {
		return "user";
	}
	
	/**
	 * 跳转到login页面
	 * @return
	 */
	@RequestMapping(value = "/reg",method = RequestMethod.GET)
	public String reg() {
		return "reg";
	}
	
	/**
	 * 跳转到publish页面
	 * @return
	 */
	@RequestMapping(value = "/publish",method = RequestMethod.GET)
	public String publish() {
		return "publish";
	}
	
	/**
	 * 跳转到edit页面
	 * @return
	 */
	@RequestMapping(value = "/edit",method = RequestMethod.GET)
	public String edit() {
		return "edit";
	}
	
	/**
	 * 跳转到show页面
	 * @return
	 */
	@RequestMapping(value = "/show",method = RequestMethod.GET)
	public String show() {
		return "show";
	}
}
