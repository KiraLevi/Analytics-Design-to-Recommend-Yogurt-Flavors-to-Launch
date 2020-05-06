show databases;
use retailer1;
show tables;


describe hshldDemograph;
describe itemsAttributes;
describe randItemSales;
describe storeItemSales;
describe survItemSales;

select * from hshldDemograph;
select * from itemsAttributes;
select * from randItemSales;
select * from storeItemSales;
select * from survItemSales;


select Flavor1,sum(sales) from 
storeItemSales join itemsAttributes on `storeItemSales`.`Item.Num` = `itemsAttributes`.`Item.Num`
where class = 'GREEK'
group by Flavor1;


select * from 
storeItemSales join itemsAttributes on `storeItemSales`.`Item.Num` = `itemsAttributes`.`Item.Num`
where class = 'GREEK';



select Flavor1,
    sum(sales),
    sales / sum(sales) over(partition by date_trunc('month', dt))
from storeItemSales join itemsAttributes on `storeItemSales`.`Item.Num` = `itemsAttributes`.`Item.Num`;

