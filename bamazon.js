var inquirer = require ("inquirer");
var mysql = require("mysql");
var connection = mysql.createConnection({
    host: "localhost",
    port : 3306,
    user : "root",
    password: "root",
    database: "bamazon_DB"
});
connection.connect(function(err){
    if (err) throw err ;
    console.log("connected:" + connection.threadId)
    console.log("bamazon_DB")
    start()
    connection.end();

})
/*function sale(){
    inquirer.prompt({
        name: "sale",
        type: "rawlist",
        message: "which product would you like to buy",
        choices: [1,2,3,4,5,6,7,8,9,10]
    })
    .then (function(answer){
        console.log(query.sql)
    })
}*/
// function which prompts the user for what action they should take
function start() {
    inquirer
      .prompt([{
        name: "itemToBuy",
        type: "input",
        message: "Which item would you like to buy?",
        choices: ["transormers", "hot wheel", "iphone","samsung phone","samsung tv","nike shoes", "adidas shoes", "under Armour shoes", "the da vinci code", "bible"," angels and demons" ],
        },{
            name: "quantity",
            type : "input",
            message: "how many would you like to buy?"
            
        }])
    .then(function (answer) {
        
        connection.query("SELECT FROM products WHERE itemId" + answer.itemId, function (err, res){
            var choicePrice = res[0].price;
            var totalCart = answer.quantity * choicePrice
            if (res[0].quantity < answers.quantity)
            {console.log ("insufficient quantity")} 
            else{
                connection.query("UPDATE products SET quantity "+ answer.quantity + "WHERE itemId"+ answer.itemId, function (err, res){
                    console.log("your total is :"  + totalCart);
  
       
                });
            }
        })
    })
}
  
    
