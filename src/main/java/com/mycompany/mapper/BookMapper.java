package com.mycompany.mapper;

import org.apache.ibatis.annotations.Insert;

import com.mycompany.vo.Book;

public interface BookMapper {

	@Insert("INSERT INTO books (title, author, image) VALUES (#{title}, #{author}, #{image})")
	public boolean create(Book book);
	
}
