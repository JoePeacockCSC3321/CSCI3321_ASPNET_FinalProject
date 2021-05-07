1. Pages that don't just use strings don't reset properly after btn_SubmitClick is pressed. However, this is actually a feature, so if you need to add a bunch of database entries with similar metadata, you can just change one or two text fields instead of having to re-enter every single one. For example, AddBooks.aspx will not reset after submit is clicked since it has drop down boxes, so the user would not be using the software efficiently if they haven't prepared their data for entry grouped by either Author or Genre while using this page. 

2. My SQL strings are formated in a way that might appear intimidating at first. However, since this project was done in Visual Studio, I reccomend viewing the statement is dealing with in the dropdown menu on the left edge while parsing my SQL statements. You will find that they are named very similarly and called in very similar orders to the dropdown list on the left. For example, the books database goes "Title, FirstName, LastName, Price, PublishDate, PublisherName, GenreName, Wordcount"

The SQL statement in Addbook.aspx.cs is:

"INSERT INTO Books VALUES ('" 
                + txtBooksTitle.Text
                + "', " 
                + ddBooksAuthor.SelectedValue 
                + ", " 
                + txtBooksPrice.Text 
                + ", '" 
		+ txtBooksPublishDate.Text 
                + "', " 
                + ddBooksPublisher.SelectedValue 
                + " , " 
                + ddBooksGenre.SelectedValue 
                + ", " 
                + txtBooksWordCount.Text 
                + ")";


So, in order, Title, Author (FirstName, LastName), Price, Publish date, PublisherName, GenreName, WordCount. The dropdown menu on the left will list it in the same, vertical order on the left for easy parsing by human eyes. 

3. There are a bunch of System.UI calls in the database for title entries from when I was troubleshooting. However, whenever I tried to drop them from the database, I messed everything up and had to restore from a backup. 