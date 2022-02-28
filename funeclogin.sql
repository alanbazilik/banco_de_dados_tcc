Create TABLE usuario(
nome_usuario varchar(80),
senha_usuario varchar(80)
);
Create TABLE fornecedor(
codigo_fornecedor serial primary key,	
nome_empresa varchar(80),
razao_social varchar(80),	
Rg varchar(80),
cpf varchar(80),
endereco varchar(80),
bairro varchar(80),
cep varchar(80),
estado varchar(80),
cidade varchar(80),
telefone varchar(80),
celular varchar(80),
fk_fornecedor int	
);
Create TABLE Cliente(
codigo_cliente serial primary key,	
nome_cliente varchar(80),
Rg varchar(80),
cpf varchar(80),
endereco varchar(80),
bairro varchar(80),
cep varchar(80),
estado varchar(80),
cidade varchar(80),
telefone varchar(80),
celular varchar(80),
fk_cliente int	
);
Create TABLE funcionario_1(
codigo_funcionario serial primary key,	
nome_funcionario varchar(80),
setor_1 varchar(80), 
Rg varchar(80),
cpf varchar(80),
endereco varchar(80),
bairro varchar(80),
cep varchar(80),
estado varchar(80),
cidade varchar(80),
telefone varchar(80),
celular varchar(80),
fk_funcionario1 int	
);
Create TABLE funcionario_2(
codigo_funcionario_2 serial primary key,	
nome_funcionario_2 varchar(80),
setor_2 varchar(80), 
Rg varchar(80),
cpf varchar(80),
endereco varchar(80),
bairro varchar(80),
cep varchar(80),
estado varchar(80),
cidade varchar(80),
telefone varchar(80),
celular varchar(80),
fk_funcionario2 int	
);
Create TABLE Compras(
cod_barras_C serial primary key,
produto varchar(80),
quantidade varchar(80),
valor varchar(80),
fk_compras int,
 Constraint funcionario1_fk foreign key (fk_funcionario1) 
   references funcionario_2(codigo_funcionario)
);
Create TABLE Vendas(
cod_barras_v serial primary key,
produto varchar(80),
quantidade varchar(80),
valor varchar(80),
fk_Vendas int,
  Constraint Cliente_fk foreign key (fk_cliente) 
   references Cliente(codigo_cliente),
	  Constraint funcionario2_fk foreign key (fk_funcionario2) 
   references funcionario_2(codigo_funcionario_2)
);
Create TABLE produto(
cod_barras serial primary key,
produto varchar(80),
quantidade varchar(80),
valor varchar(80),
fk_produto int,	
 Constraint fornecedor_fk foreign key (fk_fornecedor) 
   references funcionario_2(codigo_fornecedor)
);
Create TABLE Estoques(
cod_barra serial primary key,
produto varchar(80),
quantidade varchar(80),
valor varchar(80),	
 Constraint compras_fk foreign key (fk_compras) 
   references Compras(cod_barras_C),
	 Constraint vendas_fk foreign key (fk_Vendas) 
   references Vendas(cod_barras_V)
);




