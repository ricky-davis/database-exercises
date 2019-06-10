
select * from Users_Ads;
select * from Ads_Categories;
select * from Users;
select * from Categories;
select * from Ads;

select email from Users
where id in(
    select Users_ID from Users_Ads
    where Ads_ID = 5
);

select name from Categories
where id in(
    select Cat_ID from Ads_Categories
    where Ads_ID = 4
);

select * from Ads
where id in(
    select Ads_ID from Ads_Categories
    where Cat_ID = 5
);

select * from Ads
where id in(
    select Ads_ID from Users_Ads
    where Users_ID = 6
)