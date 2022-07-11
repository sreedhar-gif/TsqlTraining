//There is a book library.Define classes respectively for a book and a library. The library 
//must contain a name and a list of books. The books must contain the title, author,
//publisher, release date and ISBN-number. In the class, which describes the library, create 
//methods to add a book to the library, to search for a book by a predefined author, to 
//display information about a book and to delete a book from the library. Write a test 
//class, which creates an object of type library, adds several books to it and displays 
//information about each of them. Implement a test functionality, which finds all books 
//authored by Stephen King and deletes them. Finally, display information for each of the 
//remaining books.


//book library created with fields as allthe details.
class Book
{
    public string Title;
    public string Author;
    public string Publisher;
    public DateTime ReleaseDate;
    public string ISBNnumber;

}
//library book with add,delete method and search method
class Library
{
    public string Name;
    public List<Book> Books = new List<Book>();
    public void AddBook(string title, string author, string publisher, DateTime releaseDate, string iSBNnumber)
    {
        Book newBook = new Book
        {
            Author = author,
            Title = title,
            ISBNnumber = iSBNnumber,
            Publisher = publisher,
            ReleaseDate = releaseDate
        };
        Books.Add(newBook);
    }
    public void DisplayBookInfo(Book book)
    {
        Console.WriteLine($"Title-{book.Title}, Author-{book.Author}, ISBNnumber-{book.ISBNnumber}");
    }
    public void DeleteBook(Book book)
    {
        Books.Remove(book);
    }
    public List<Book> SearchBook()
    {
        var authorName = "Stephen King";
        return Books.Where(x => x.Author == authorName).ToList();

    }
}
//test class
class Test
{
    static void Main(string[] args)
    {
        Library library = new Library();//Create Library object  
        library.AddBook("CSharp Programming", "Stephen King", "Pub1", DateTime.Now, "ISBN001"); //Add book 1  
        library.AddBook("Java Programming", "Avnish", "Pub1", DateTime.Now, "ISBN002"); //Add book 2  
        library.AddBook("Php Programming", "Avnish", "Pub1", DateTime.Now, "ISBN003"); //Add book 3  
        library.AddBook("Ml Programming", "Stephen King", "Pub1", DateTime.Now, "ISBN004");  
        Console.WriteLine("Total books in Library");
        if (library.Books.Count > 0)
        {
            foreach (var book in library.Books)
            {
                library.DisplayBookInfo(book);// display all books  
            }

            Console.WriteLine("Search for all books authored by Stephen King");
            var seachedBooks = library.SearchBook();
            Console.WriteLine(seachedBooks.Count + " books found and deleted");
            foreach (var book in seachedBooks)
            {
                library.DeleteBook(book);// delete books  
            }
            Console.WriteLine("Remaining books in Library");
            foreach (var book in library.Books)
            {
                library.DisplayBookInfo(book);// display all books  
            }
        }
        Console.ReadKey();
    }

}
