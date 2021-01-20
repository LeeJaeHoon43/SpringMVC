package com.mycompany.myapp;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.mycompany.mapper.BookMapper;
import com.mycompany.vo.Book;

@Controller
public class BookController {

	@Autowired
	private BookMapper bookMapper;
	
	@RequestMapping(value = "/books", method = RequestMethod.GET)
	public String index(Model model) {
		List<Book> books = bookMapper.getList();
		model.addAttribute("books", books);
		return "books/index";
	}
	
	@RequestMapping(value = "/books/new", method = RequestMethod.GET)
	public String newBook() {
		return "books/new";
	}
	
	@RequestMapping(value = "/books", method = RequestMethod.POST)
	public String create(@ModelAttribute Book book) {
		bookMapper.create(book);
		return "redirect:/books";
	}
}
