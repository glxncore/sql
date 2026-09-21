insert into mobiles values(1,'samsung','galaxt',1200,30),(2,'redmi''note1',1500,25);
select brand,model from mobile where cost >13000 or stock<15;
update mobile set  stock=stock+5,price=12500 where model=narzo50;
delete from mobile where id =2;
select max(price) as highest_price , min(price) as lowest_price from mobile ;
select sum(stock) from mobile;
select brand,mobile from mobile orderby price desc limit 2;