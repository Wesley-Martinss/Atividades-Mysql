insert into departamento values (6, 'marketing', null);

insert into deptolocal (dnumero, nomelocal)
values 
(6, 'são paulo');

select * from deptolocal;

update departamento set cpfgerente = '6668' where dnumero = 6;
select * from funcionario; 

insert into projeto values('call center', 'são paulo', 6),('call center', 'rio de janeiro', 6),
('call center', 'campinas', 6);
select * from projeto;

insert into funcionario (cpf, nome, salario, datanasc, rua, numero, compl, bairro, cidade, estado, cep, sexo, dnumero)
values 
('2001', 'marcos almeida', 2000, '1990-01-15', 'rua alfa', 10, null, 'centro', 'são paulo', 'sp', '01000-000', 'm', 6),
('2002', 'patrícia costa', 2100, '1991-02-20', 'rua beta', 20, null, 'zona sul', 'rio de janeiro', 'rj', '20000-000', 'f', 6),
('2003', 'carlos oliveira', 2200, '1992-03-25', 'rua gama', 30, null, 'centro', 'campinas', 'sp', '13000-000', 'm', 6),
('2004', 'fernanda lima', 2300, '1993-04-10', 'rua delta', 40, null, 'vila mariana', 'são paulo', 'sp', '01100-000', 'f', 6),
('2005', 'bruno rocha', 2400, '1994-05-05', 'rua épsilon', 50, null, 'lapa', 'são paulo', 'sp', '01200-000', 'm', 6);
select * from funcionario;


insert into atribuicao values ('2001', 7, 4),('2002', 8, 4),('2003', 9, 4),
('2004', 7, 4),('2005', 8, 4);
select * from atribuicao;
