

CREATE OR REPLACE FUNCTION search_contracts_by_status(p_status_contrato STATUS_CONTRATO)
RETURNS TABLE (
    aluguel_id INT,
    placa_veiculo VARCHAR(7),
    cpf_cliente VARCHAR(12),
    funcionario INT,
    data_inicio TIMESTAMP WITH TIME ZONE,
    data_fim TIMESTAMP WITH TIME ZONE,
    status_contrato STATUS_CONTRATO,
    valor NUMERIC(10, 2)
) AS $$ BEGIN
    RETURN QUERY
    SELECT *
    FROM contrato_aluguel c
    WHERE c.status_contrato = p_status_contrato;
END $$ LANGUAGE plpgsql;

SELECT * FROM search_contracts_by_status('EM_ANDAMENTO');