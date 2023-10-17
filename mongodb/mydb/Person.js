conn = new Mongo();
db = conn.getDB("mydb");

function getAllNoneGeorgePerson() {
    // Show (name, age) for all document which their name is not 'George'
    return db.person.find({
        // Name should not be 'George'
        "name": {
            "$ne": "George"
        },
        age: {
            "$lt": 50
        }
    }, {
        // Return the (name, age)
        "name": "$name",
        "age": "$age"
    });
}

var noneGeorges = getAllNoneGeorgePerson();
print("Person count: " + noneGeorges.count());
print("Person data: " + noneGeorges.pretty());