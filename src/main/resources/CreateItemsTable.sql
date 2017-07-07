create table items(
  id            bigserial  primary key not null,
  name          text not null,
  length        double precision not null,
  breadth       double precision not null,
  height        double precision not null,
  weight        double precision not null,
  is_fragile    boolean not null,
  this_side_up  boolean not null
);

create table vehicles(
  id            bigserial primary key not null,
  name          text not null,
  length        double precision not null,
  breadth       double precision not null,
  height        double precision not null,
  capacity      double precision not null
);

create table orders(
  id            bigserial primary key not null,
  item_id       bigint not null references items(id),
  item_qty      bigint not null,
  vehicle_id    bigint not null references vehicles(id)
);

insert into items (name, length, breadth, height, weight, is_fragile, this_side_up) values
  ('TV',158.5,20,89,30708,true,false),
  ('Fridge',95.8,92,200,138000,false,false),
  ('Microwave',60.1,47,33.6,19518,true,false),
  ('Washing Machine',80.8,85.3,117.47,121109,false,true);


insert into vehicles (name, length, breadth, height, capacity) values
  ('Big truck',244,975,244,15000000),
  ('Medium Truck',229,533,229,9000000),
  ('Small Truck',183,427,168,3000000);

