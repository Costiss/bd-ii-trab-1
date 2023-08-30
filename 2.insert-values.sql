INSERT INTO funcionario (cpf, nome_completo)
VALUES ('82067533037', 'Funcionario');


INSERT INTO cliente (cpf, rg, cnh, nome_completo, habilitacao)
VALUES ('32435384084', '283845351', '30040067391', 'Cliente legal', 'B');


INSERT INTO veiculo (placa, marca, cor, tipo_habilitacao, tipo_cambio)
VALUES ('ABC1234', 'Toyota', 'Azul', 'B', 'AUTOMATICO');


INSERT INTO contrato_aluguel (placa_veiculo, cpf_cliente, funcionario, data_inicio, data_fim, status_contrato, valor)
VALUES ('ABC1234', '32435384084', 1, '2023-08-01', '2023-08-30', 'EM_ANDAMENTO', 500.00);

------------------------------------------------------------------------------------------------------------------------------
 

INSERT INTO cliente (cpf, rg, cnh, nome_completo, habilitacao)
VALUES ('78784775076', '103854228', '75235778056', 'Cliente chato', 'D');


INSERT INTO veiculo (placa, marca, cor, tipo_habilitacao, tipo_cambio)
VALUES ('CCC1234', 'Mercedes', 'Prata', 'D', 'AUTOMATICO');


INSERT INTO contrato_aluguel (placa_veiculo, cpf_cliente, funcionario, data_inicio, data_fim, status_contrato, valor)
VALUES ('CCC1234', '78784775076', 1, '2023-08-01', '2023-08-10', 'FINALIZADO', 2000.00);


------------------------------------------------------------------------------------------------------------------------------
 
INSERT INTO funcionario (cpf, nome_completo)
VALUES ('01068452099', 'Funcionario');


INSERT INTO cliente (cpf, rg, cnh, nome_completo, habilitacao)
VALUES ('87161686075', '454840238', '66998694324', 'Cliente neutro', 'A');


INSERT INTO veiculo (placa, marca, cor, tipo_habilitacao, tipo_cambio)
VALUES ('AAA1234', 'Volkswagen', 'Verde', 'A', 'MANUAL');


INSERT INTO contrato_aluguel (placa_veiculo, cpf_cliente, funcionario, data_inicio, data_fim, status_contrato, valor)
VALUES ('AAA1234', '87161686075', 2, '2023-08-15', '2023-08-16', 'FINALIZADO', 100.00);