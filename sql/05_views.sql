CREATE VIEW contas_pagas AS
SELECT 
    cr.id AS "ID da Conta",
    cr.data_vencimento AS "Data de Vencimento",
    cr.valor AS "Valor da Conta",
    c.nome AS "Nome do Cliente",
    c.cpf AS "CPF do Cliente"
FROM cliente c
JOIN conta_receber cr 
ON cr.cliente_id = c.id
WHERE cr.situacao = 3;

SELECT * FROM contas_pagas;