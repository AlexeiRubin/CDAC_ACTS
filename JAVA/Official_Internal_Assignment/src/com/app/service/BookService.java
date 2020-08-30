package com.app.service;

import java.time.LocalDate;

import com.app.entity.Book;
import com.app.enums.BookCategoryEnum;
import com.app.exceptions.BookStoreException;

public interface BookService {

	void addBookService(String bookTitle, BookCategoryEnum bookCategory, double bookPrice, LocalDate bookPublishDate,
			int bookQuantity, int bookRating);

	void addAuthorDetails(Book.Author[] authorDetails);

	void displayBookService();

	void removeBookService(String bookTitle);

	void addBookToCartService(String bookTitle, int quantity) throws BookStoreException;

	void viewCartService();

	void removeBookFromCartService(String bookTitle) throws BookStoreException;

	double calculateCartValueService();
}