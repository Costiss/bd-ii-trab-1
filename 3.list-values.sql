
SELECT * FROM funcionario;


SELECT * FROM cliente;


SELECT * FROM veiculo;


SELECT * FROM contrato_aluguel;



SELECT contrato.*, veiculo.*
FROM contrato_aluguel contrato
JOIN veiculo ON contrato.placa_veiculo = veiculo.placa;

SELECT contrato.*, cliente.nome_completo AS nome_cliente, funcionario.nome_completo AS nome_funcionario
FROM contrato_aluguel contrato
JOIN cliente ON contrato.cpf_cliente = cliente.cpf
JOIN funcionario ON contrato.funcionario = funcionario.funcionario_id;