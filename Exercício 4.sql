create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria (
id int primary key not null auto_increment,
especies_carne enum ('aves', 'bovina', 'suina')
);

create table if not exists tb_produto (
id_carne int (11) primary key auto_increment,
tipo_carne varchar(45),
peso_carne varchar (45),
preco_carne double (5,2),
id int,
FOREIGN KEY (id) REFERENCES tb_categoria (id)
);

insert into tb_categoria (id, especies_carne) values (1,'bovina'), (2,'aves'), (3,'bovino'), 
(4,'suino'), (5,'suino'), (6,'bovino'), (7,'bovino'), (8,'aves');

insert into tb_produto ( tipo_carne, peso_carne, preco_carne) values ('contra filé', '2 kilos', 51.00),('asinha', '1,5 kilos', 15.00),
('picanha', '1 kilos', 55.00), ('linguiça', '2,5 kilos', 14.00), ('linguiça calabresa', '2 kilos', 15.00), ('fígado', '3 kilos', 8.00),
('músculo', '2 kilos', 16.00), ('peito de frango', '2 kilos', 13.00);

select * from tb_categoria;
select * from tb_produto;
select * from tb_produto where preco_carne >50;
select * from tb_produto where preco_carne >3 && 60;
select * from tb_produto where tipo_carne like '%c%';
select * from tb_categoria, tb_produto where especies_carne like '%bovina$';

SELECT * FROM tb_categoria
INNER JOIN tb_produto
ON tb_categoria.id = tb_produto.id_carne;

truncate tb_categoria;
truncate tb_produto;