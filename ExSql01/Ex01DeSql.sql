-- 3-A
insert into funcionario values('999','Roberto Santos', 4500,  '1972-06-21', 'Rua Benjamin', 34, NULL, 'Vila Maria', 'Santo André', 'SP', 1, 'M',1);
-- faltando o dnumero --

select * from funcionario;

-- 3-A
insert into departamento values('Producao',1);
-- faltando o cpfgerente
-- ja existe um dnumero 1

-- 3-C
insert into departamento(DNOME, DNUMERO, CPFGERENTE) values('Producao', 10, '999');	

-- 3-D 
delete from funcionario where cpf = '999';
-- nao deletou porq o funcionario de cpf 999 e um gerente

-- 3-E 
update funcionario set dnumero = 20 where cpf = '999';
-- nao funciona pois nao a o valor 20 na tabela departamento

-- 4.Insira o departamento ‘Ensino’, com código 2;
insert into departamento values('Ensino',2);
-- faltando cpf

-- 5. Insira o departamento ‘RH’, com código 3;
insert into departamento values('RH',3);
-- faltando cpf 

-- 6. Indique o funcionário 1234 para a gerência do Ensino;
update departamento set cpfgerente = '1234' where dnome = 'Ensino';
-- erro pois nao existe no departamento a gerenciade Ensino

-- 7. Indique o funcionário 6668 para a gerência do RH;
update departamento set cpfgerente = '6668' where dnome = 'RH';
-- erro pois nao existe no departamento a gerenciade RH

-- 8. Aloque os funcionários 1234, 9998 e 9879 no projeto ‘Reorganização’
insert into atribuicao (cpf, projnumero, horas) values('1234', 5, 4),('9998', 5, 4),
('9879', 5, 4);

--  9. Dê um aumento de 10% para todos os funcionários que trabalhem no projeto 4
update funcionario set salario = salario * 1.10 where cpf in (
    select CPF from atribuicao where projnumero = 4);
    







