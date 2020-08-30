package com.app.dao.impl;

import static com.app.utils.CollectionUtils.populateSampleBookData;
import static com.app.utils.Validations.bookExitsInCartValidation;
import static com.app.utils.Validations.bookStockAvailable;
import static com.app.utils.Validations.cartContainsBook;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;

import com.app.dao.BookDao;
import com.app.entity.Book;
import com.app.enums.BookCategoryEnum;
import com.app.exceptions.BookException;

public class BookDaoImpl implements BookDao {

	public static ArrayList<Book> bookDetails;
	public static HashMap<String, Integer> cart;

	static {
		bookDetails = null;
		cart = null;
	}

	public BookDaoImpl() {
		bookDetails = populateSampleBookData();
		cart = new HashMap<>();
	}

	@Override
	public void addBook(String bookTitle, BookCategoryEnum bookCategory, double bookPrice, LocalDate bookPublishDate,
			int bookQuantity, int bookRating) {
		bookDetails.add(new Book(bookTitle, bookCategory, bookPrice, bookPublishDate, bookQuantity, bookRating));
	}

	@Override
	public void addAuthorDetails(Book.Author[] authorDetails) {
		bookDetails.get(bookDetails.size() - 1).setAuthorDetails(authorDetails);
	}

	@Override
	public void displayBook() {
		for (Book entity : bookDetails)
			System.out.println(entity);
	}

	@Override
	public void removeBook(String bookTitle) {
		bookDetails.remove(new Book(bookTitle));
	}

	@Override
	public void addBookToCart(String bookTitle, int quantity) throws BookException {

		if (bookExitsInCartValidation(bookDetails, bookTitle)) {
			int index = bookDetails.indexOf(new Book(bookTitle));
			boolean flag = false;

			if (bookStockAvailable(bookDetails, bookTitle)) {

				if ((bookDetails.get(index).getBookQuantity() - quantity) < 0) {
					quantity = bookDetails.get(index).getBookQuantity();
					bookDetails.get(index).setBookQuantity(0);
					flag = true;
				}

				if (!(cart.putIfAbsent(bookTitle, quantity) == null))
					cart.replace(bookTitle, (cart.get(bookTitle) + quantity));
				else
					cart.putIfAbsent(bookTitle, quantity);
			}
			if (!flag)
				bookDetails.get(index).setBookQuantity(bookDetails.get(index).getBookQuantity() - quantity);
		}
	}

	@Override
	public void viewCart() {
		System.out.println(cart.entrySet());
	}

	@Override
	public void removeBookFromCart(String bookTitle) throws BookException {
		if (cartContainsBook(cart, bookTitle)) {
			int index = bookDetails.indexOf(new Book(bookTitle));
			bookDetails.get(index).setBookQuantity(bookDetails.get(index).getBookQuantity() + cart.get(bookTitle));
			cart.remove(bookTitle);
		}
	}

	@Override
	public double calculateCartValue() {
		int index = 0;
		double totalCost = 0.0;

		if (cart.isEmpty())
			return totalCost;

		ArrayList<String> bookTitleList = new ArrayList<>(cart.keySet());
		ArrayList<Integer> bookQuantityList = new ArrayList<>(cart.values());

		for (int i = 0; i < bookTitleList.size(); ++i) {
			System.out.println(bookTitleList.get(i) + " X " + bookQuantityList.get(i));
			index = bookDetails.indexOf(new Book(bookTitleList.get(i)));
			totalCost += (bookQuantityList.get(i) * bookDetails.get(index).getBookPrice());
		}
		return totalCost;
	}
}