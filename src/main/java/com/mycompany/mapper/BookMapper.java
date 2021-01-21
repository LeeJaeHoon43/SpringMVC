package com.mycompany.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import com.mycompany.vo.Book;

public interface BookMapper {

	@Insert("INSERT INTO books (title, author, image) VALUES (#{title}, #{author}, #{image})")
	public boolean create(Book book);
	
	@Select("SELECT * FROM books")
	public List<Book> getList();
	
	@Select("SELECT * FROM books WHERE id = #{id}")
	public Book getBook(int id);
	
	@Update("UPDATE books SET title = #{title}, author = #{author}, image = #{image} WHERE id = #{id}")
	public boolean update(Book book);
	
	@Delete("DELETE FROM book WHERE id = #{id}")
	public boolean delete(int id);
	
}
