package com.app.dao;

import java.time.LocalDate;

import com.app.entity.Book;
import com.app.enums.BookCategoryEnum;
import com.app.exceptions.BookStoreException;

public interface BookDao {

	void addBook(String bookTitle, BookCategoryEnum bookCategory, double bookPrice, LocalDate bookPublishDate,
			int bookQuantity, int bookRating);

	void addAuthorDetails(Book.Author[] authorDetails);

	void displayBook();

	void removeBook(String bookTitle);

	void addBookToCart(String bookTitle, int quantity) throws BookStoreException;

	void viewCart();

	void removeBookFromCart(String bookTitle) throws BookStoreException;

	double calculateCartValue();
}