package com.app.entity;

import java.time.LocalDate;
import java.util.Arrays;

import com.app.enums.BookCategoryEnum;

public class Book {

	private String bookTitle;
	private Author[] authorDetails;
	private BookCategoryEnum bookCategory;
	private double bookPrice;
	private LocalDate bookPublishDate;
	private int bookQuantity, bookRating;

	public Book() {
		this.bookTitle = null;
		authorDetails = null;
		this.bookCategory = null;
		this.bookPrice = 0.0;
		this.bookPublishDate = null;
		this.bookQuantity = 0;
		this.bookRating = 0;
	}

	public Book(String bookTitle) {
		this.bookTitle = bookTitle;
	}

	public Book(String bookTitle, BookCategoryEnum bookCategory, double bookPrice, LocalDate bookPublishDate,
			int bookQuantity, int bookRating) {
		this.bookTitle = bookTitle;
		this.bookCategory = bookCategory;
		this.bookPrice = bookPrice;
		this.bookPublishDate = bookPublishDate;
		this.bookQuantity = bookQuantity;
		this.bookRating = bookRating;
	}

	public String getBookTitle() {
		return bookTitle;
	}

	public void setBookTitle(String bookTitle) {
		this.bookTitle = bookTitle;
	}

	public Author[] getAuthorDetails() {
		return authorDetails;
	}

	public void setAuthorDetails(Author[] authorDetails) {
		this.authorDetails = authorDetails;
	}

	public BookCategoryEnum getBookCategory() {
		return bookCategory;
	}

	public void setBookCategory(BookCategoryEnum bookCategory) {
		this.bookCategory = bookCategory;
	}

	public double getBookPrice() {
		return bookPrice;
	}

	public void setBookPrice(double bookPrice) {
		this.bookPrice = bookPrice;
	}

	public LocalDate getBookPublishDate() {
		return bookPublishDate;
	}

	public void setBookPublishDate(LocalDate bookPublishDate) {
		this.bookPublishDate = bookPublishDate;
	}

	public int getBookQuantity() {
		return bookQuantity;
	}

	public void setBookQuantity(int bookQuantity) {
		this.bookQuantity = bookQuantity;
	}

	public int getBookRating() {
		return bookRating;
	}

	public void setBookRating(int bookRating) {
		this.bookRating = bookRating;
	}

	@Override
	public String toString() {
		return "TITLE : " + bookTitle + ", AUTHOR : " + Arrays.toString(authorDetails) + ", CATEGORY : " + bookCategory
				+ ", PRICE : " + bookPrice + ", PUBLISH DATE : " + bookPublishDate + ", QUANTITY : " + bookQuantity
				+ ", RATING = " + bookRating;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!(obj instanceof Book))
			return false;
		Book other = (Book) obj;
		if (bookTitle == null) {
			if (other.bookTitle != null)
				return false;
		} else if (!bookTitle.equals(other.bookTitle))
			return false;
		return true;
	}

	public class Author {
		private String authorName, authorEmailId;

		public Author() {
			this.authorName = null;
			this.authorEmailId = null;
		}

		public Author(String authorName, String authorEmailId) {
			this.authorName = authorName;
			this.authorEmailId = authorEmailId;
		}

		public String getAuthorName() {
			return authorName;
		}

		public void setAuthorName(String authorName) {
			this.authorName = authorName;
		}

		public String getAuthorEmailId() {
			return authorEmailId;
		}

		public void setAuthorEmailId(String authorEmailId) {
			this.authorEmailId = authorEmailId;
		}

		@Override
		public String toString() {
			return "NAME : " + authorName + ", EMAIL ID : " + authorEmailId;
		}
	}
}