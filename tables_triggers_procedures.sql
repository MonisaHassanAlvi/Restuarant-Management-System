use master
go
use dbproject
go
create table [branch](
   [branch_id] [int] not null Primary Key,
   [address] varchar(50) not null unique,
    phone_number CHAR(11),
    CONSTRAINT chk_phone CHECK (phone_number not like
 '%[^0-9]%') -- check that no number is not a digit
)
Insert into branch(branch_id,address,phone_number) values(1,N'3328 Christie Way, Cambridge, Massachusetts','78122332751')
Insert into branch(branch_id,address,phone_number) values(2,N'3225 Brown Street, Walnut Creek, California','53021949201')

create table [manager](
   manager_id [int] not null Primary Key,
   manager_name varchar(20) not null unique,
   manager_password varchar(20) not null,
   [branch_id] [int] Foreign Key References branch(branch_id) 
   on Delete Set null on Update Cascade,
)
insert into [manager]( manager_id ,manager_name ,manager_password,[branch_id])values(1,'Song Joong Ki','abcd123',1)
insert into [manager]( manager_id ,manager_name,manager_password ,[branch_id])values(2,'Lee Seung Gi','lee989',2)

create table [cashier](
   cashier_id [int] not null Primary Key,
   cashier_name varchar(20) not null unique,
   cashier_password varchar(20) not null,
   [branch_id] [int] Foreign Key References branch(branch_id) 
   on Delete Set null on Update Cascade,
    phone_no varchar(11),
    CONSTRAINT chk_phone1 CHECK (phone_no not like
 '%[^0-9]%') ,-- check that no number is not a digit

   [address] varchar(50),
)
insert into [cashier](cashier_id ,cashier_name,cashier_password ,[branch_id],phone_no,address)values(1,'Lee Min Ho','minho012',1,'03459898067','123 6th St. Melbourne, FL 32904')
insert into [cashier](cashier_id ,cashier_name,cashier_password  ,[branch_id],phone_no,address)values(2,'Hyun Bin','1234',1,'03094567891','07 8th St. Francis, GL 32904')
insert into [cashier](cashier_id ,cashier_name,cashier_password  ,[branch_id],phone_no,address)values(3,'Lee Byung Hun','done345',1,'03214589091','4 Goldfield Rd. Honolulu, HI 96815')
insert into [cashier](cashier_id ,cashier_name,cashier_password  ,[branch_id],phone_no,address)values(4,'Sung Hoon','sung789',2,'03450987891','125 6th Shirley Ave Chicago, FL 32904')

create table [deliveryman](
   deliveryman_id [int] not null Primary Key,
   deliveryman_name varchar(20) not null unique,
   delivereyman_password varchar(20) not null,
   area varchar(30) not null,
   [branch_id] [int] Foreign Key References branch(branch_id) 
   on Delete Set null on Update Cascade,
   avaliblity [int] not null,--0 mean avaliable 1 means reserved
)
insert into [deliveryman](deliveryman_id ,deliveryman_name,delivereyman_password, area, [branch_id],avaliblity)values(1,'Yoo Jae-myung','ghf123','Melbourne',1,0)
insert into [deliveryman](deliveryman_id ,deliveryman_name,delivereyman_password, area, [branch_id],avaliblity)values(2,'Gong Lee','gonglee','Chevy Chase',1,0)
insert into [deliveryman](deliveryman_id ,deliveryman_name,delivereyman_password, area, [branch_id],avaliblity)values(3,'Park Song','song_123','South Windsor',1,0)
insert into [deliveryman](deliveryman_id ,deliveryman_name,delivereyman_password, area, [branch_id],avaliblity)values(4,'Park Jae-jung','456xyz','Honolulu',1,0)
insert into [deliveryman](deliveryman_id ,deliveryman_name,delivereyman_password, area, [branch_id],avaliblity)values(5,'Park Yoo Chun','park9898','West Chicago',2,0)
insert into [deliveryman](deliveryman_id ,deliveryman_name,delivereyman_password, area, [branch_id],avaliblity)values(6,'Ryu Si-won','ryu_012',' Melbourne',2,0)
insert into [deliveryman](deliveryman_id ,deliveryman_name,delivereyman_password, area, [branch_id],avaliblity)values(7,'Son Seung-won','don678','Orlando',2,0)
insert into [deliveryman](deliveryman_id ,deliveryman_name,delivereyman_password, area, [branch_id],avaliblity)values(8,'Yoon Hee-seok','hee_seok01','South Windsor',2,0)

create table [ordertype](
   ordertype_id [int] not null Primary Key,
   ordertype_name varchar(20) not null,
)
insert into [ordertype](ordertype_id , ordertype_name)values(1,'Dine In')
insert into [ordertype](ordertype_id , ordertype_name)values(2,'Takeaway')
insert into [ordertype](ordertype_id , ordertype_name)values(3,'Delivery')

create  table [customer](
   customer_id [int] not null Primary Key,
   customer_password varchar(20) not null,
   customer_name varchar(20) not null unique,
    phone_no varchar(11),
    CONSTRAINT chk_phone2 CHECK (phone_no not like
 '%[^0-9]%') ,-- check that no number is not a digit
   address varchar(50) not null,
)
insert into [customer](customer_id ,customer_password ,customer_name ,phone_no ,address )values(1,'123456','Ali','25154694421','123 6th St. Melbourne, FL 32904')
insert into [customer](customer_id ,customer_password ,customer_name ,phone_no ,address )values(2,'123456','Ahmed','12554644781','71 Pilgrim Avenue Chevy Chase, MD 20815')
insert into [customer](customer_id ,customer_password ,customer_name ,phone_no ,address )values(3,'123456','Huma','94956943711','70 Bowman St. South Windsor, CT 06074')
insert into [customer](customer_id ,customer_password ,customer_name ,phone_no ,address )values(4,'123456','Maheen','63044688512','4 Goldfield Rd. Honolulu, HI 96815')
insert into [customer](customer_id ,customer_password ,customer_name ,phone_no ,address )values(5,'123456','Habiba','22690627213','44 Shirley Ave. West Chicago, IL 60185')
insert into [customer](customer_id ,customer_password ,customer_name ,phone_no ,address )values(6,'123456','Sufyan','67192513525','514 S. Magnolia St. Orlando, FL 32806')

create  table [membershiptype](
    membership_name [varchar](20) not null ,
   membership_id [int] not null Primary Key
)
insert into [membershiptype]( membership_name ,membership_id)values('Regular',1)
insert into [membershiptype]( membership_name ,membership_id)values('VIP',2)
insert into [membershiptype]( membership_name ,membership_id)values('VVIP',3)

create  table [membership](
   customer_id [int] not null Foreign Key References customer(customer_id) 
    on Delete no action on Update Cascade,
   membership_id [int] not null Foreign Key References membershiptype(membership_id) 
    on Delete no action on Update Cascade,
   Primary Key(customer_id,membership_id)
)
insert into [membership](customer_id ,membership_id)values(2,1)
insert into [membership](customer_id ,membership_id)values(3,2)
insert into [membership](customer_id ,membership_id)values(4,3)


create table [bill](
	bill_id [int]not null Primary Key,
	[time] [smalldatetime]not null ,
	discount [int] null,
	cashier_id [int]Foreign Key References cashier(cashier_id) 
    on Delete set NULL on Update Cascade,
	manager_id [int]Foreign Key References manager (manager_id) 
    on Delete set NULL on Update  no action,
	customer_id [int]Foreign Key References customer (customer_id) 
    on Delete set NULL on Update Cascade,
	[status] varchar(20),
)
insert into [bill](bill_id ,[time], discount, cashier_id, manager_id, customer_id,status )values(1,'2018-12-23 12:43:10',0,1,1,1,'pending')
insert into [bill](bill_id ,[time], discount, cashier_id, manager_id, customer_id ,status)values(2,'2018-12-30 13:33:15',0,1,1,6,'pending')
insert into [bill](bill_id ,[time], discount, cashier_id, manager_id, customer_id ,status)values(3,'2018-1-2 23:35:12',10,2,1,2,'paid')
insert into [bill](bill_id ,[time], discount, cashier_id, manager_id, customer_id ,status)values(4,'2018-1-3 16:35:36',30,1,2,4,'pending')
insert into [bill](bill_id ,[time], discount, cashier_id, manager_id, customer_id ,status)values(5,'2018-1-5 02:35:36',20,2,1,3,'pending')
insert into [bill](bill_id ,[time], discount, cashier_id, manager_id, customer_id ,status)values(6,'2018-1-6 03:05:46',0,1,2,5,'paid')

create table [delivery](
   deliveryman_id [int] Foreign Key References 
  deliveryman (deliveryman_id) on Delete set NULL on Update Cascade,
   bill_id [int] Foreign Key References bill(bill_id) on Delete set NULL on Update no action,
   delivery_address varchar(50)
)
insert into [delivery](deliveryman_id, bill_id, delivery_address)values(1,3,'71 Pilgrim Avenue Chevy Chase, MD 20815')
insert into [delivery](deliveryman_id, bill_id, delivery_address)values(1,5,'70 Bowman St. South Windsor, CT 06074')

create table[itemtype](
	itemtype_id [int] not null Primary Key,
	itemtype_name varchar(20) not null
 )
 insert into [itemtype](itemtype_id , itemtype_name)values(1,'dishes')
 insert into [itemtype](itemtype_id , itemtype_name)values(2,'beverages')
 insert into [itemtype](itemtype_id , itemtype_name)values(3,'toppinges')
 insert into [itemtype](itemtype_id , itemtype_name)values(4,'deal 1')
 insert into [itemtype](itemtype_id , itemtype_name)values(5,'deal 2')
 insert into [itemtype](itemtype_id , itemtype_name)values(6,'deal 3')
 insert into [itemtype](itemtype_id , itemtype_name)values(7,'deserts')

create table [item](
   item_id [int] not null Primary Key,
   item_name varchar(20) not null,
   price [int] not null,  
 )
 insert into [item](item_id , item_name , price )values(1,'Beef Wellington',1000)
 insert into [item](item_id , item_name , price )values(2,'Black pudding',1000)
 insert into [item](item_id , item_name , price )values(3,'Cauliflower cheese',1000)
 insert into [item](item_id , item_name , price )values(4,'Cumberland sausage',1000)
 insert into [item](item_id , item_name , price )values(5,'Faggots',1000)
 insert into [item](item_id , item_name , price )values(6,'Kippers',1000)
 insert into [item](item_id , item_name , price )values(7,'green tea',1000)
 insert into [item](item_id , item_name , price )values(8,'ice tea',1000)
 insert into [item](item_id , item_name , price )values(9,'coffee',1000)
 insert into [item](item_id , item_name , price  )values(10,'cocktail',1000)
 insert into [item](item_id , item_name , price  )values(11,'Feta',1000)
 insert into [item](item_id , item_name , price  )values(12,'Shredded Mozzarella',1000)
 insert into [item](item_id , item_name , price  )values(13,'Natural Cheddar',1000)
 insert into [item](item_id , item_name , price  )values(14,'Natural Monter',1000)
 insert into [item](item_id , item_name , price  )values(15,'Natural Swiss',1000)
 insert into [item](item_id , item_name , price  )values(16,'Sweet Onion',1000)
 insert into [item](item_id , item_name , price  )values(17,'Honey Mustard',1000) 
 insert into [item](item_id , item_name , price  )values(18,'Phirni',1000) 
 insert into [item](item_id , item_name , price  )values(19,'Chicoo',1000) 
 insert into [item](item_id , item_name , price  )values(20,'Lardy cake',1000) 

create table [item_and_type](
   item_id [int] Foreign Key References item(item_id),
   itemtype_id [int] Foreign Key References itemtype(itemtype_id),
   quantity [int] not null
   Primary key (item_id,itemtype_id )
)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(1,1,1)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(2,1,1)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(3,1,1)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(4,1,1)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(5,1,1)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(6,1,1)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(7,2,1)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(8,2,1)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(9,2,1)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(10,2,1)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(11,2,1)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(12,3,1)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(13,3,1)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(14,3,1)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(15,3,1)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(16,3,1)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(17,3,1)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(18,7,1)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(19,7,1)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(20,7,1)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(1,4,1)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(2,4,1)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(16,4,1)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(17,4,1)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(10,4,2)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(3,5,1)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(4,5,1)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(16,5,2)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(15,5,1)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(9,5,2)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(20,5,1)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(5,6,1)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(6,6,1)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(14,6,1)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(13,6,1)
 insert into [item_and_type](item_id , itemtype_id, quantity )values(8,6,1)
 
 
create table [order](
   order_id [int] not null Primary Key,
   item_id [int] Foreign Key References item(item_id) 
   on Delete Set null on Update Cascade,
   quantity [int] null,
   bill_id [int] Foreign Key References bill(bill_id) 
   on Delete Set null on Update Cascade,
   ordertype_id [int] Foreign Key References ordertype(ordertype_id) on Delete Set null on Update Cascade,
)
insert into [order](order_id, item_id, quantity, bill_id, ordertype_id)values(1,1,2,1,1)
insert into [order](order_id, item_id, quantity, bill_id, ordertype_id)values(2,2,1,2,1)
insert into [order](order_id, item_id, quantity, bill_id, ordertype_id)values(3,6,2,3,3)
insert into [order](order_id, item_id, quantity, bill_id, ordertype_id)values(4,5,1,4,1)
insert into [order](order_id, item_id, quantity, bill_id, ordertype_id)values(5,1,2,5,3)


create table [table](
   table_id [int] not null Primary Key,
   seats [int] not null,
   avaliblity [int] not null,--0 mean avaliable 1 means reserved
)
insert into [table](table_id , seats , avaliblity )values(1,2,1)
insert into [table](table_id , seats , avaliblity )values(2,2,0)
insert into [table](table_id , seats , avaliblity )values(3,2,0)
insert into [table](table_id , seats , avaliblity )values(4,4,1)
insert into [table](table_id , seats , avaliblity )values(5,4,0)
insert into [table](table_id , seats , avaliblity )values(6,4,0)
insert into [table](table_id , seats , avaliblity )values(7,4,0)
insert into [table](table_id , seats , avaliblity )values(8,6,1)
insert into [table](table_id , seats , avaliblity )values(9,6,0)
insert into [table](table_id , seats , avaliblity )values(10,6,0)

create table [reservation](
   table_id [int] Foreign Key References [table](table_id) 
    on Delete no action  on Update Cascade,
   bill_id [int]  Foreign Key References bill(bill_id) 
    on Delete Cascade on Update Cascade,
	status varchar(20)
	--primary key(table_id,bill_id)
)
insert into [reservation](table_id,bill_id, status )values(1,1,'')
insert into [reservation](table_id,bill_id, status )values(1,2,'')
insert into [reservation](table_id,bill_id, status )values(1,4,'canceled')


select*from[dbo].[bill]
select*from [dbo].[branch]
select*from[dbo].[cashier]
select*from[dbo].[customer]
select*from[dbo].[deliveryman]
select*from[dbo].[item]
select*from[dbo].[item_and_type]
select*from[dbo].[itemtype]
select*from[dbo].[manager]
select*from[dbo].[ordertype]
select*from[dbo].[delivery]
select*from[dbo].[membership]
select*from[dbo].[membershiptype]
select*from[dbo].[order]
select*from[dbo].[ordertype]
select*from[dbo].[reservation]
select*from[dbo].[table]
delete from customer where customer_id=9
--triggers
go
--1 if customer doesnot exists than do insertion 
go
create trigger customer_insertion
on customer
instead of insert
as begin
declare @cname varchar(20)
declare @cid int
declare @password varchar(20)
declare @num char(11)
declare @add varchar(40)
select @cid=customer_id from inserted  
select @cname=customer_name from inserted 
select @password=customer_password from inserted 
select @num=phone_no from inserted
select @add=[address] from inserted
if not exists (select customer_id from customer where customer_id=@cid
				union
			   select customer_id from customer where customer_name=@cname and phone_no=@num and [address]=@add )
begin 
insert into [customer](customer_id ,customer_password ,customer_name ,phone_no ,[address])values(@cid,@password,@cname,@num,@add)
print' Insertion Successful'
end
else
print'This customer already exists'
end
go

--2 delete orders,delivery,reservation with specific bill id
go
create trigger del_trig_bill
on bill 
instead of delete
as begin
declare @bid int
declare @cid int
declare @d_id int
declare @tid int

select @bid=bill_id from deleted
select @cid=customer_id from deleted

select @tid=table_id from reservation where reservation.bill_id=@bid
update reservation
set status='canceled'
where reservation.bill_id=@bid
update [table]
set [avaliblity]=0 where table_id=@tid

Select @d_id=deliveryman_id from delivery where bill_id=@bid
 update deliveryman
 set [avaliblity]=0 where deliveryman_id=@d_id
 delete delivery

 delete [order]
  where bill_id=@bid
 Delete bill
 where bill_id=@bid
  print'Deletion Successfull'
 end 
 go

--3 when delivery is deleted
go
create trigger del_delviery
on delivery
instead of delete
as begin
declare @d_id int
declare @bid int
select @bid=bill_id from deleted
select @d_id=deliveryman_id from deleted

 delete delivery
 where bill_id=@bid 
  update deliveryman
 set avaliblity=0 where deliveryman_id=@d_id
 print'Your Delivery is Deleted Successfully'
 end
 
 go

--4 update delivery
 go
create trigger update_delivery
  on delivery
  after update
  as begin 
  select* from inserted
  print'Updation Successful'
  end
   
   go

--5 update orders
  go
 create trigger update_order
  on [order]
  after update
  as begin
declare @oid int
declare @item_id int
declare @quantity int
declare @bid int
declare @ot_id int
declare @name varchar(20)
declare @tid int
declare @rid int
declare @del_id int =null
declare @br_id int

select @oid=order_id from inserted
select @item_id=item_id from inserted
select @quantity=quantity from inserted
select @bid=bill_id from inserted
select @ot_id=ordertype_id from inserted
select @name=ordertype_name from ordertype where ordertype_id=@ot_id

if(@name='Dine In')
begin
	select top 1 @tid=table_id from [table] where avaliblity=0 and seats>0
	update [table]
	set avaliblity=1 where table_id=@tid
	Insert into [reservation](table_id,bill_id )values(@tid,@bid)
	Select * from [reservation] where bill_id=@bid
end
if(@name='Delivery')
begin
	select @br_id=branch_id 
	from bill , manager 
	where bill_id=@bid and bill.manager_id=manager.manager_id
	set @del_id=0
	select top 1 @del_id=deliveryman_id
	from deliveryman
	where branch_id=@br_id and [avaliblity]=0
	
	if(@del_id!=0)
	begin
	print @del_id
	update deliveryman
	set [avaliblity]=1
	where deliveryman_id=@del_id
	Insert into delivery( deliveryman_id,bill_id,delivery_address) values(@del_id,@bid,N'H#67 Sandha Lahore')
	select* from delivery where bill_id=@bid
	print'Insertion Done'
	end
	else
	print'No Deliveryman available please order later'
end
end
go

--6 for cashier insertion
create trigger cashier_insertion
on cashier
instead of insert
as begin
declare @cname varchar(20)
declare @cid int
declare @password varchar(20)
declare @num varchar(11)
declare @add varchar(40)
declare @branchid int
select @cid=cashier_id from inserted  
select @branchid=branch_id from inserted
select @cname=cashier_name from inserted 
select @password=cashier_password from inserted 
select @num=phone_no from inserted
select @add=[address] from inserted
if not exists (select cashier_id from cashier where cashier_id=@cid
				union
			   select cashier_id from cashier where cashier_name=@cname and phone_no=@num and [address]=@add )
begin 
insert into [cashier](cashier_id ,cashier_password ,cashier_name ,phone_no ,[address],branch_id)values(@cid,@password,@cname,@num,@add,@branchid)
print' Insertion Successful'
end
else
print'This cashier already exists'
end
go

---------------------------------------------PROCEDURES--------------------------------------------------------

--Cashier
create procedure show_cashiers
@mid int
as begin
declare @id int 
select @id=branch_id from manager where manager_id=@mid
select cashier_name as Name ,[cashier_password] as Password ,[phone_no] as [Phone no],[address] as Address from cashier where branch_id=@id
end
go


create procedure add_cashier
@cashier_name varchar(20),
@password varchar(20)=NULL,
@phone_no varchar(11)=NULL,
@managerid int=NULL,
@address varchar(50)=NULL,
@message varchar(50)=NULL output
as begin
declare @id int
declare @branchid int

if not exists(select  cashier_id  from cashier where cashier_name=@cashier_name)
	begin
		select @branchid=branch_id from manager where manager_id=@managerid
		select @id=max(cashier_id)+1
		from cashier
		insert into [cashier](cashier_id ,cashier_name,cashier_password ,branch_id,phone_no ,address)values(@id ,@cashier_name,@password,@branchid,@phone_no ,@address)
		if exists(select* from cashier where cashier_id=@id)
		begin
		set @message='INSERTION SUCCESSFULL!'
		end
		else
		begin
		set @message='INSERTION UNSUCCESSFULL!'
		end
	end
else 
	begin
		set @message='Cashier already exists!'
	end
end
go

--DeliveryMan
create procedure show_deliveryman
@mid int
as begin
declare @id int 
select @id=branch_id from manager where manager_id=@mid
select [deliveryman_name] AS Name, [delivereyman_password] as Password, [area] as Area, [avaliblity] as Avalibility from deliveryman where branch_id=@id
end
go


create procedure add_deliveryman
@deliveryman_name varchar(20),
@password varchar(20)=NULL,
@managerid int=NULL,
@area varchar(50)=NULL,
@message varchar(50)=NULL output
as begin
declare @id int
declare @branchid int

if not exists(select  deliveryman_id  from deliveryman where deliveryman_name=@deliveryman_name)
	begin
		select @branchid=branch_id from manager where manager_id=@managerid
		select @id=max(deliveryman_id)+1
		from deliveryman
		insert into [deliveryman](deliveryman_id ,deliveryman_name,delivereyman_password ,branch_id,[avaliblity],area)values(@id ,@deliveryman_name,@password,@branchid,0 ,@area)
		if exists(select* from deliveryman where deliveryman_id=@id)
		begin
		set @message='INSERTION SUCCESSFULL!'
		end
		else
		begin
		set @message='INSERTION UNSUCCESSFULL!'
		end
	end
else 
	begin
		set @message='deliveryman already exists!'
	end
end
go


--Customer
create procedure add_customer
@customer_name varchar(20)=NULL,
@password varchar(20)=NULL,
@phone_no varchar(11),
@address varchar(50)=NULL
as begin
declare @id int
if not exists(select  customer_id  from customer where customer_name=@customer_name)
	begin
		select @id=max(customer_id)+1
		from customer
		insert into [customer](customer_id ,customer_password,customer_name ,phone_no ,address)values(@id ,@password,@customer_name ,@phone_no ,@address)
	end
else 
	begin
		print'This customer already exists in database'
		select * from customer where customer_name=@customer_name and address=@address
	end
end
go



alter procedure Sign_Up 
@username varchar(20),
@password varchar(20),
@address varchar(50)=NULL,
@phone varchar(11)=NUll,
@message varchar(50) output
AS
BEGIN


if exists (Select customer_id from customer where customer_name=@username)
begin
	set @message='User already exists'
end
else
begin
	execute add_customer @customer_name=@username,@password=@password , @address=@address, @phone_no=@phone
	set @message='Successfully Registered!'
end
END
go

execute Sign_Up 'waseem','wasi123','48 Ishrat Town Lahore','03049898078'," "

create procedure showdishes
as
begin
select item.item_name,item.price 
from item join item_and_type on item.item_id=item_and_type.item_id join itemtype on item_and_type.itemtype_id=itemtype.itemtype_id
where itemtype_name='dishes'
end
go


create procedure showbeverages
as
begin
select item.item_name,item.price 
from item join item_and_type on item.item_id=item_and_type.item_id join itemtype on item_and_type.itemtype_id=itemtype.itemtype_id
where itemtype_name='beverages'
end
go


create procedure showtoppinges
as
begin
select item.item_name,item.price 
from item join item_and_type on item.item_id=item_and_type.item_id join itemtype on item_and_type.itemtype_id=itemtype.itemtype_id
where itemtype_name='toppinges'
end
go


create procedure showdeserts
as
begin
select item.item_name,item.price 
from item join item_and_type on item.item_id=item_and_type.item_id join itemtype on item_and_type.itemtype_id=itemtype.itemtype_id
where itemtype_name='deserts'
end
go


create procedure showdeals
as
begin
	declare @i int
	declare @j int
	declare @id int
	SELECT @i=count(itemtype.itemtype_id) FROM itemtype WHERE itemtype_name!='beverages' AND itemtype_name!='toppinges' and itemtype_name!='dishes' and itemtype_name!='deserts'
	while(@i>0)
	begin
		select @id=a.id
		from(
			SELECT top (@i) itemtype.itemtype_id as id
			FROM itemtype 
			WHERE itemtype_name!='beverages' AND itemtype_name!='toppinges' and itemtype_name!='dishes' and itemtype_name!='deserts'
			) as a

		select item.item_name,quantity,item.price
		from item join item_and_type on item.item_id=item_and_type.item_id
		where item_and_type.itemtype_id=@id
		set @i=@i-1
	end

end
go


create procedure bill_info
@mid int
as
begin
	select bill.bill_id,bill.customer_id,customer.customer_name, item.item_id, item_name, quantity,item.price
	from item join [order] on  item.item_id=[order].item_id 
		join bill on bill.bill_id=[order].bill_id 
		join customer on customer.customer_id=bill.bill_id
	where bill.manager_id=@mid
end
go


create procedure get_branch
as
begin
	select [address] from branch
end
go


create procedure order_reservation
@username varchar(20),
@password varchar(20),
@branch varchar(50),
@cname varchar(20)=NULL,
@itemname varchar(20)=NULL , 
@quantity int=NULL, 
@ordertype varchar(20)=NULL,
@tid int output,
@message varchar(50) output,
@seats int
as 
BEGIN
declare @cid int
declare @bill_id int=NULL
declare @mid int
declare @cashid int
declare @brid int
declare @membership varchar(20)
declare @discount int
	declare @id int,@itemid int, @ordertypeid int
	
	Select @cid=customer_id
	from customer 
	where customer_name=@username and customer.customer_password=@password
	if exists(select* from customer where customer_id=@cid)
	begin
		select top 1 @tid=table_id from [table] where avaliblity=0 and seats=@seats
		if exists(select * from [table] where table_id=@tid)
		begin
			update [table]
			set avaliblity=1 where table_id=@tid

			--billid
			select @bill_id=max(bill_id)+1
			from bill
			--branchid
			select @brid=branch_id
			from branch
			where [address]=@branch
			--managerid
			select @mid=manager_id
			from manager
			where branch_id=@brid
			--cashierid
			select @cashid=cashier_id
			from cashier
			where cashier_name=@cname
			--discount
			select @membership=membership_name
			from customer join membership on customer.customer_id=membership.customer_id join membershiptype on membership.membership_id=membershiptype.membership_id
			where customer.customer_id=@cid
			if(@membership='Regular')begin 
			set @discount=10
			end
			if(@membership='VIP')begin 
			set @discount=20
			end
			if(@membership='VVIP')begin 
			set @discount=30
			end
			insert into [bill](bill_id ,[time],discount,cashier_id,manager_id,customer_id,status )values(@bill_id,GETDATE(),@discount,@cashid,@mid, @cid,'pending')
			select @id=max(order_id)+1
			from [order]
			select @itemid=item_id
			from item
			where item_name=@itemname
			select @ordertypeid=ordertype_id
			from ordertype
			where ordertype_name=@ordertype
			if exists(select* from bill where bill_id=@bill_id)
			begin
				insert into [order](order_id, item_id, quantity, bill_id, ordertype_id)values(@id, @itemid, @quantity, @bill_id, @ordertypeid)
			end
			Insert into [reservation](table_id,bill_id )values(@tid,@bill_id)
			set @message='Order Successfull! Thank You'
		end
		else
		begin
			set @message='No table is available with given number seats'
		end
	end
	else
	begin
		set @message='INVALID username or password!'
	end
end
go


create procedure stafflogin
@type varchar(20),
@username varchar(20),
@password varchar(20)
as begin
	if(@type='MANAGER')
	begin
		if exists (select [manager_id] from manager where [manager_name]=@username and [manager_password]=@password)
		begin
			select sum([manager_id]) from manager where [manager_name]=@username and [manager_password]=@password
		end
		else 
		begin 
			select [manager_id]-1 from manager where [manager_id]=1 
		end
	end
	else if(@type='CASHIER')
	begin 
		if exists (select [cashier_id] from cashier where [cashier_name]=@username and [cashier_password]=@password)
		begin
		select sum([cashier_id]) from cashier where [cashier_name]=@username and [cashier_password]=@password
		end
		else 
		begin 
			select [cashier_id]-1 from cashier where [cashier_id]=1 
		end
	end
	else if (@type='DELIVERYMAN')
	begin
		if exists (select [deliveryman_id] from deliveryman where [deliveryman_name]=@username and [delivereyman_password]=@password)
		begin
		select sum([deliveryman_id]) from deliveryman where [deliveryman_name]=@username and [delivereyman_password]=@password
		end
		else 
		begin 
			select [deliveryman_id]-1 from deliveryman where [deliveryman_id]=1 
		end
	end
end
go

execute stafflogin 'MANAGER','Song Joong Ki',abcd123
select * from manager

create procedure delivery_detail 
@id int
as
begin
	
	select delivery.delivery_address
	from delivery join deliveryman on delivery.deliveryman_id=deliveryman.deliveryman_id join bill on bill.bill_id=delivery.bill_id
	where  delivery.deliveryman_id=@id and status='pending'
end
go 
 
execute delivery_detail 2

create procedure mark_paid
@id int
as begin
declare @bid int
select @bid=bill_id
	from delivery join deliveryman on delivery.deliveryman_id=@id 
update bill
set status='paid'
where bill_id=@bid
end
go

execute mark_paid 1
select * from bill

CREATE TYPE [usertable] AS TABLE(
	itemname VARCHAR(20),
	quantity INT 
);  


create procedure o_delivery
@username varchar(20)=NULL,
@password varchar(20)=NULL,
@branch varchar(50)=NULL,
@chid varchar(20)=NULL,
@address varchar(50)=NULL
as begin
declare @id int,@cid int,@bill_id int,@brid int,@mid int,@did int
declare @membership varchar(20)
declare @discount int
	
	Select @cid=customer_id
	from customer 
	where customer_name=@username and customer.customer_password=@password
	if exists(select* from customer where customer_id=@cid)
	begin
	--billid
	select @bill_id=max(bill_id)+1
	from bill
	--branchid
	select @brid=branch_id
	from branch
	where [address]=@branch
	--managerid
	select @mid=manager_id
	from manager
	where branch_id=@brid
	--discount
	select @membership=membership_name
	from customer join membership on customer.customer_id=membership.customer_id join membershiptype on membership.membership_id=membershiptype.membership_id
	where customer.customer_id=@cid
	if(@membership='Regular')begin 
	set @discount=10
	end
	if(@membership='VIP')begin 
	set @discount=20
	end
	if(@membership='VVIP')begin 
	set @discount=30
	end
	insert into [bill](bill_id ,[time],discount,cashier_id,manager_id,customer_id,status )values(@bill_id,GETDATE(),@discount,@chid,@mid, @cid,'pending');
	if(@address!=NULL)
	begin
		select @did=deliveryman_id
		from deliveryman
		where branch_id=@brid and avaliblity=0;
		insert into [delivery](deliveryman_id,bill_id,delivery_address) values(@did,@bill_id,@address)
		
	end
	Select bill_id from bill where bill_id=@bill_id
	end 
	else
	begin
	Select bill_id-1 from bill where bill_id=1
	end
end
go

execute o_delivery Ali,123456,N'3225 Brown Street, Walnut Creek, California',2,'Street 10 ,Clifornia'
select * from bill

create procedure addorder
@itemname varchar(20),
@quantity int,
@bill_id int,
@otid int
as begin
declare @itemid int,@id int
select @itemid=item_id
from item where item_name=@itemname
select @id=max(order_id)+1
	from [order]
insert into [order](order_id, item_id, quantity, bill_id, ordertype_id)values(@id, @itemid, @quantity, @bill_id, @otid)
end
go

execute addorder cocktail,2,2,1
select * from [order]