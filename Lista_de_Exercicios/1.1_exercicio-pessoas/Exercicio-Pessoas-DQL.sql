USE Exercicio_1_1;
---INSERT/ CARGA DE DADOS INICIAIS


insert into Pessoa(Nome,CNH) values
	('Pedro','88640118053'),
	('Gabriel','18915668499'),
	('J��o','29745778114'),
	('Guilherme','44323980660'),
	('Kelvin','05092784216')

insert into Email(IdPessoa,Endereco) values
	(2,'gabriel@gabriel.com'),
	(3,'joao@joao.com'),
	(1,'pedro@pedro.com'),
	(5,'kelvin@kelvin.com'),
	(4,'guilherme@guilherme.com')

insert into Telefone(IdPessoa,Numero) values
	(5,'5509225242857'),
	(1,'55092939371151'),
	(3,'5504322758271'),
	(4,'5582039618933'),
	(2,'5515935346802')

select * from Pessoa;
select * from Email;
select * from Telefone;

--Usando Join

SELECT 
    Pessoa.Nome AS Cliente,
    Email.Endereco AS Email,
    Telefone.Numero AS Telefone
FROM 
    Pessoa
LEFT JOIN 
    Email ON Pessoa.IdPessoa = Email.IdPessoa
LEFT JOIN 
    Telefone ON Pessoa.IdPessoa = Telefone.IdPessoa;

--Jun�ao sem Join

--Desendete -> decresente
--Seleciona (Atributo) da (Tabela) orderna Por (atributo) ASC|DESC.
select Pessoa.Nome,Pessoa.CNH,Email.Endereco,Telefone.Numero
from Pessoa,Email,Telefone 
where Pessoa.IdPessoa = Email.IdPessoa AND Pessoa.IdPessoa = Telefone.IdPessoa 
order by Nome Desc
