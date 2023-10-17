// Select mydb database
use mydb

// Some tests on persons collections
function personsDemo() {
    var persons = db.persons.find();
    var len = persons.length();
    
    // Display persons collection size
    print("persons collection size: " + len);
    
//     print(persons.pretty());
    
    // Display all documents in persons collection
    return persons;
}

personsDemo()