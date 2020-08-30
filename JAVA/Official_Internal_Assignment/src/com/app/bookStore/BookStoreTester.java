package com.app.bookStore;

import static com.app.utils.Validations.bookCategoryValidation;
import static java.time.LocalDate.parse;

import java.util.Scanner;

import com.app.entity.Book;
import com.app.enums.UserTypeEnum;
import com.app.exceptions.BookException;
import com.app.exceptions.UserException;
import com.app.service.impl.BookServiceImpl;
import com.app.service.impl.UserServiceImpl;

public class BookStoreTester {

	public static void main(String[] args) throws UserException, BookException {
		try (Scanner in = new Scanner(System.in)) {

			boolean mainExit, exit;
			mainExit = exit = false;

			UserServiceImpl user = new UserServiceImpl();
			BookServiceImpl book = new BookServiceImpl();

			while (!mainExit) {
				System.out.println("Enter the Email Id & Password to LOGIN");

				try {
					UserTypeEnum userType = user.userLoginService(in.next(), in.next());

					while (!exit) {
						try {
							switch (userType) {

							case ADMIN:
								System.out.println("\n-------Enter 1 to ADD A BOOK-------");
								System.out.println("-------Enter 2 to VIEW ALL BOOKS-------");
								System.out.println("-------Enter 3 to REMOVE A BOOK-------");
								System.out.println("-------Enter 4 to LOGOUT-------\n");

								switch (in.nextInt()) {

								case 1:
									System.out.println(
											"Enter the Book Title, Category, Price, Publishing Date, Quantity and Rating");
									book.addBookService(in.next(), bookCategoryValidation(in.next().toUpperCase()),
											in.nextDouble(), parse(in.next()), in.nextInt(), in.nextInt());

									System.out.println("Enter the Number of Authors");
									int numberOfAuthors = in.nextInt();

									Book.Author[] authorDetails = new Book.Author[numberOfAuthors];
									Book books = new Book();

									for (int i = 0; i < numberOfAuthors; ++i) {
										System.out.println("Enter the Author's Name and Email ID");
										authorDetails[i] = books.new Author(in.next(), in.next());
									}
									book.addAuthorDetails(authorDetails);
									System.out.println("\nBook Added\n");
									break;

								case 2:
									book.displayBookService();
									break;

								case 3:
									System.out.println("Enter the Name of The Book to be Removed");
									book.removeBookService(in.next());
									break;

								case 4:
									exit = true;
									break;
								}
								break;

							case CUSTOMER:
								System.out.println("\n-------Enter 1 to VIEW ALL BOOKS-------");
								System.out.println("-------Enter 2 to ADD A BOOK TO YOUR CART-------");
								System.out.println("-------Enter 3 to VIEW YOUR CART CONTENTS-------");
								System.out.println("-------Enter 4 to REMOVE BOOKS FROM YOUR CART-------");
								System.out.println("-------Enter 5 to LOGOUT-------\n");

								switch (in.nextInt()) {

								case 1:
									book.displayBookService();
									break;

								case 2:
									System.out.println("Enter the Title of the Book and the Quantity");
									book.addBookToCartService(in.next(), in.nextInt());
									break;

								case 3:
									book.viewCartService();
									break;

								case 4:
									System.out.println("Enter the Title of the Book");
									book.removeBookFromCartService(in.next());
									break;

								case 5:
									System.out.println("Total Cost is : " + book.calculateCartValueService());
									exit = true;
									break;
								}
								break;
							}
						} catch (Exception exception) {
							System.out.println(exception);
						} finally {
							in.nextLine();
						}
					}
				} catch (Exception exception) {
					System.out.println(exception);
				} finally {
					in.nextLine();
				}

				System.out.println("Enter 1 to CONTINUE");
				System.out.println("Enter 2 to EXIT");
				if (in.nextInt() != 1)
					mainExit = true;
				else
					exit = false;
			}
		}
	}
}