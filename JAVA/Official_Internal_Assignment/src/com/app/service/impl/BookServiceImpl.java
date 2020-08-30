package com.app.service.impl;

import java.time.LocalDate;

import com.app.dao.impl.BookDaoImpl;
import com.app.entity.Book;
import com.app.enums.BookCategoryEnum;
import com.app.exceptions.BookStoreException;
import com.app.service.BookService;

public class BookServiceImpl implements BookService {

	public BookDaoImpl bookDaoImpl;

	public BookServiceImpl() {
		bookDaoImpl = new BookDaoImpl();
	}

	@Override
	public void addBookService(String bookTitle, BookCategoryEnum bookCategory, double bookPrice,
			LocalDate bookPublishDate, int bookQuantity, int bookRating) {
		bookDaoImpl.addBook(bookTitle, bookCategory, bookPrice, bookPublishDate, bookQuantity, bookRating);
	}

	@Override
	public void addAuthorDetails(Book.Author[] authorDetails) {
		bookDaoImpl.addAuthorDetails(authorDetails);
	}

	@Override
	public void displayBookService() {
		bookDaoImpl.displayBook();
	}

	@Override
	public void removeBookService(String bookTitle) {
		bookDaoImpl.removeBook(bookTitle);
	}

	@Override
	public void addBookToCartService(String bookTitle, int quantity) throws BookStoreException {
		bookDaoImpl.addBookToCart(bookTitle, quantity);
	}

	@Override
	public void viewCartService() {
		bookDaoImpl.viewCart();
	}

	@Override
	public void removeBookFromCartService(String bookTitle) throws BookStoreException {
		bookDaoImpl.removeBookFromCart(bookTitle);
	}

	@Override
	public double calculateCartValueService() {
		return bookDaoImpl.calculateCartValue();
	}
}