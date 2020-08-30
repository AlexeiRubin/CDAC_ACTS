package com.app.utils;

import static com.app.enums.BookCategoryEnum.valueOf;
import static java.time.LocalDate.parse;

import java.util.ArrayList;
import java.util.HashMap;

import com.app.entity.Book;
import com.app.entity.User;
import com.app.enums.UserTypeEnum;

public class CollectionUtils {
	public static ArrayList<Book> populateSampleBookData() {
		ArrayList<Book> booksSampleData = new ArrayList<>();

		Book.Author[] authorDetials = new Book.Author[1];
		Book book = new Book();

		booksSampleData.add(new Book("A", valueOf("FICTION"), 200.00, parse("2000-01-15"), 15, 4));
		authorDetials[0] = book.new Author("A", "a@a.com");
		booksSampleData.get(0).setAuthorDetails(authorDetials);

		authorDetials = new Book.Author[1];
		booksSampleData.add(new Book("B", valueOf("FICTION"), 250.00, parse("2001-02-16"), 20, 5));
		authorDetials[0] = book.new Author("B", "b@b.com");
		booksSampleData.get(1).setAuthorDetails(authorDetials);

		authorDetials = new Book.Author[1];
		booksSampleData.add(new Book("C", valueOf("FICTION"), 500.00, parse("2002-03-17"), 25, 3));
		authorDetials[0] = book.new Author("C", "c@c.com");
		booksSampleData.get(2).setAuthorDetails(authorDetials);

		authorDetials = new Book.Author[1];
		booksSampleData.add(new Book("D", valueOf("FICTION"), 700.00, parse("2003-04-18"), 10, 4));
		authorDetials[0] = book.new Author("D", "d@d.com");
		booksSampleData.get(3).setAuthorDetails(authorDetials);

		authorDetials = new Book.Author[1];
		booksSampleData.add(new Book("E", valueOf("FICTION"), 100.00, parse("2004-05-19"), 5, 2));
		authorDetials[0] = book.new Author("E", "e@e.com");
		booksSampleData.get(4).setAuthorDetails(authorDetials);

		authorDetials = new Book.Author[1];
		booksSampleData.add(new Book("F", valueOf("FICTION"), 300.00, parse("2005-12-20"), 35, 1));
		authorDetials[0] = book.new Author("F", "f@f.com");
		booksSampleData.get(5).setAuthorDetails(authorDetials);

		authorDetials = new Book.Author[1];
		booksSampleData.add(new Book("G", valueOf("FICTION"), 200.00, parse("2006-11-11"), 30, 2));
		authorDetials[0] = book.new Author("G", "g@g.com");
		booksSampleData.get(6).setAuthorDetails(authorDetials);

		authorDetials = new Book.Author[1];
		booksSampleData.add(new Book("H", valueOf("FICTION"), 1500.00, parse("2007-10-12"), 45, 5));
		authorDetials[0] = book.new Author("H", "h@h.com");
		booksSampleData.get(7).setAuthorDetails(authorDetials);

		authorDetials = new Book.Author[2];
		booksSampleData.add(new Book("I", valueOf("FICTION"), 600.00, parse("2008-09-13"), 40, 4));
		authorDetials[0] = book.new Author("I", "i@i.com");
		authorDetials[1] = book.new Author("J", "j@j.com");
		booksSampleData.get(8).setAuthorDetails(authorDetials);

		authorDetials = new Book.Author[2];
		booksSampleData.add(new Book("J", valueOf("FICTION"), 700.00, parse("2009-08-14"), 50, 3));
		authorDetials[0] = book.new Author("K", "k@k.com");
		authorDetials[1] = book.new Author("L", "l@l.com");
		booksSampleData.get(9).setAuthorDetails(authorDetials);

		authorDetials = new Book.Author[3];
		booksSampleData.add(new Book("K", valueOf("FICTION"), 50.00, parse("2010-07-09"), 55, 2));
		authorDetials[0] = book.new Author("M", "m@m.com");
		authorDetials[1] = book.new Author("N", "n@n.com");
		authorDetials[2] = book.new Author("O", "o@o.com");
		booksSampleData.get(10).setAuthorDetails(authorDetials);

		return booksSampleData;
	}

	public static HashMap<String, User> populateSampleUserData() {
		HashMap<String, User> userSampleData = new HashMap<>();

		userSampleData.put("admin", new User("admin", "admin123", UserTypeEnum.valueOf("ADMIN")));
		userSampleData.put("rubin@cod.com", new User("rubin@cod.com", "1111111111", UserTypeEnum.valueOf("CUSTOMER")));
		userSampleData.put("vizkov@cod.com",
				new User("vizkov@cod.com", "2222222222", UserTypeEnum.valueOf("CUSTOMER")));
		userSampleData.put("mystic@cod.com",
				new User("mystic@cod.com", "3333333333", UserTypeEnum.valueOf("CUSTOMER")));
		userSampleData.put("antonov@cod.com",
				new User("antonov@cod.com", "4444444444", UserTypeEnum.valueOf("CUSTOMER")));
		userSampleData.put("ninja@cod.com", new User("ninja@cod.com", "5555555555", UserTypeEnum.valueOf("CUSTOMER")));
		userSampleData.put("47@cod.com", new User("47@cod.com", "6666666666", UserTypeEnum.valueOf("CUSTOMER")));

		return userSampleData;
	}
}