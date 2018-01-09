-- to run \i groceryitems.sql
CREATE DATABASE groceryShoppingApp;

create table ShoppingList(
  shoppingListId serial not null unique primary key,
  name varchar(50)
);

create table GroceryItem(
  groceryitemId serial not null unique primary key,
  name varchar(50),
  shoppingListId REFERENCES ShoppingList(shoppingListId),
  quantity integer,
  price decimal value
);

insert into shoppinglist(name) values ('HEB');

insert into shoppinglist(name) values ('Walmart');

insert into shoppinglist(name) values ('Kroger');

insert into groceryitem(name,shoppinglistid,quantity,price)values ('bananas','1','2','2.99');

insert into groceryitem(name,shoppinglistid,quantity,price)values ('grapes','1','4','4.99');

insert into groceryitem(name,shoppinglistid,quantity,price)values ('chicken breasts','1','9','9.99');

insert into groceryitem(name,shoppinglistid,quantity,price)values ('cereal','1','1','3.99');

insert into groceryitem(name,shoppinglistid,quantity,price)values ('tortillas','1','3','5.99');

insert into groceryitem(name,shoppinglistid,quantity,price)values ('bread','2','2','1.99');

insert into groceryitem(name,shoppinglistid,quantity,price)values ('granola bars','2','2','2.99');

insert into groceryitem(name,shoppinglistid,quantity,price)values ('protein powder','2','1','9.99');

insert into groceryitem(name,shoppinglistid,quantity,price)values ('mustard','2','1','3.99');

insert into groceryitem(name,shoppinglistid,quantity,price)values ('mayonnaise','2','1','3.99');

insert into groceryitem(name,shoppinglistid,quantity,price)values ('potatoes','3','2','2.99');

insert into groceryitem(name,shoppinglistid,quantity,price)values ('poptarts','3','1','2.99');

insert into groceryitem(name,shoppinglistid,quantity,price)values ('broccoli','3','3','2.99');

insert into groceryitem(name,shoppinglistid,quantity,price)values ('asparagus bundle','3','1','2.99');

insert into groceryitem(name,shoppinglistid,quantity,price)values ('sweet potato','3','1','1.99'


select name from shoppinglist;
select groceryitemid,name,shoppinglistid, quantity, price from groceryitem;
select groceryitemid,name,shoppinglistid, quantity, price from groceryitem WHERE price>10;
select MIN(price) from groceryitem;
select MAX(price) from groceryitem;
select SUM(price) from groceryitem;

select shoppinglist.name,groceryitem.name from shoppinglist join groceryitem on shoppinglist.shoppinglistid = groceryitem.shoppinglistid;

select shoppinglist.name, count(shoppinglist.shoppinglistid) from shoppinglist join groceryitem on shoppinglist.shoppinglistid = groceryitem.shoppinglistid group by shoppinglist.shoppinglistid;

select groceryitem.shoppinglistid, SUM(groceryitem.price) from groceryitem left join shoppinglist on groceryitem.shoppinglistid = shoppinglist.shoppinglistid group by groceryitem.shoppinglistid;

insert into groceryitem(name,shoppinglistid,quantity,price)values ('bananas','1','2','2.99');
select price from groceryitem WHERE price BETWEEN 10.00 and 20.00;

select distinct name from groceryitem;
