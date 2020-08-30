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
		booksSampleData.add(new Book("C", valueOf("YOGA"), 500.00, parse("2002-03-17"), 25, 3));
		authorDetials[0] = book.new Author("C", "c@c.com");
		booksSampleData.get(2).setAuthorDetails(authorDetials);

		authorDetials = new Book.Author[1];
		booksSampleData.add(new Book("D", valueOf("YOGA"), 700.00, parse("2003-04-18"), 10, 4));
		authorDetials[0] = book.new Author("D", "d@d.com");
		booksSampleData.get(3).setAuthorDetails(authorDetials);

		authorDetials = new Book.Author[1];
		booksSampleData.add(new Book("E", valueOf("FINANACE"), 100.00, parse("2004-05-19"), 5, 2));
		authorDetials[0] = book.new Author("E", "e@e.com");
		booksSampleData.get(4).setAuthorDetails(authorDetials);

		authorDetials = new Book.Author[1];
		booksSampleData.add(new Book("F", valueOf("FINANACE"), 300.00, parse("2005-12-20"), 35, 1));
		authorDetials[0] = book.new Author("F", "f@f.com");
		booksSampleData.get(5).setAuthorDetails(authorDetials);

		authorDetials = new Book.Author[1];
		booksSampleData.add(new Book("G", valueOf("MEDITATION"), 200.00, parse("2006-11-11"), 30, 2));
		authorDetials[0] = book.new Author("G", "g@g.com");
		booksSampleData.get(6).setAuthorDetails(authorDetials);

		authorDetials = new Book.Author[1];
		booksSampleData.add(new Book("H", valueOf("MEDITATION"), 1500.00, parse("2007-10-12"), 45, 5));
		authorDetials[0] = book.new Author("H", "h@h.com");
		booksSampleData.get(7).setAuthorDetails(authorDetials);

		authorDetials = new Book.Author[2];
		booksSampleData.add(new Book("I", valueOf("SCIENCE"), 600.00, parse("2008-09-13"), 40, 4));
		authorDetials[0] = book.new Author("I", "i@i.com");
		authorDetials[1] = book.new Author("J", "j@j.com");
		booksSampleData.get(8).setAuthorDetails(authorDetials);

		authorDetials = new Book.Author[2];
		booksSampleData.add(new Book("J", valueOf("SCIENCE"), 700.00, parse("2009-08-14"), 50, 3));
		authorDetials[0] = book.new Author("K", "k@k.com");
		authorDetials[1] = book.new Author("L", "l@l.com");
		booksSampleData.get(9).setAuthorDetails(authorDetials);

		authorDetials = new Book.Author[3];
		booksSampleData.add(new Book("K", valueOf("YOGA"), 50.00, parse("2010-07-09"), 55, 2));
		authorDetials[0] = book.new Author("M", "m@m.com");
		authorDetials[1] = book.new Author("N", "n@n.com");
		authorDetials[2] = book.new Author("O", "o@o.com");
		booksSampleData.get(10).setAuthorDetails(authorDetials);

		return booksSampleData;
	}

	public static HashMap<String, User> populateSampleUserData() {
		HashMap<String, User> userSampleData = new HashMap<>();

		userSampleData.put("admin", new User("admin", "admin123", UserTypeEnum.valueOf("ADMIN")));
		userSampleData.put("a@a.com", new User("a@a.com", "1111111111", UserTypeEnum.valueOf("CUSTOMER")));
		userSampleData.put("b@b.com", new User("b@b.com", "2222222222", UserTypeEnum.valueOf("CUSTOMER")));
		userSampleData.put("c@c.com", new User("c@c.com", "3333333333", UserTypeEnum.valueOf("CUSTOMER")));
		userSampleData.put("d@d.com", new User("d@d.com", "4444444444", UserTypeEnum.valueOf("CUSTOMER")));
		userSampleData.put("e@e.com", new User("e@e.com", "5555555555", UserTypeEnum.valueOf("CUSTOMER")));
		userSampleData.put("f@f.com", new User("f@f.com", "6666666666", UserTypeEnum.valueOf("CUSTOMER")));

		return userSampleData;
	}
}