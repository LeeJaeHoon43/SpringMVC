package com.mycompany.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import com.mycompany.vo.Book;

public interface BookMapper {

	@Insert("INSERT INTO books (title, author, image) VALUES (#{title}, #{author}, #{image})")
	public boolean create(Book book);
	
	@Select("SELECT * FROM books")
	public List<Book> getList();
	
}
