

-- CREATE THE TABLES AND TIPES

CREATE TABLE IF NOT EXISTS funcionario (
    funcionario_id SERIAL PRIMARY KEY,
    cpf VARCHAR(12) NOT NULL,
    nome_completo  TEXT NOT NULL
);

CREATE TYPE TIPO_HABILITACAO AS ENUM ('A', 'B', 'C', 'D', 'E');

CREATE TABLE IF NOT EXISTS cliente ( 
    cliente_id SERIAL PRIMARY KEY,
    cpf VARCHAR(12) NOT NULL UNIQUE,
    rg  VARCHAR(9) NOT NULL,
    cnh VARCHAR(11) NOT NULL,
    nome_completo TEXT NOT NULL,
    habilitacao  TIPO_HABILITACAO  NOT NULL    
);

CREATE TYPE TIPO_CAMBIO AS ENUM ('AUTOMATICO', 'MANUAL');

CREATE TABLE IF NOT EXISTS veiculo ( 
    veiculo_id SERIAL PRIMARY KEY,
    placa VARCHAR(7) NOT NULL UNIQUE,
    marca TEXT NOT NULL,
    cor TEXT NOT NULL,
    tipo_habilitacao TIPO_HABILITACAO NOT NULL,
    tipo_cambio TIPO_CAMBIO NOT NULL
);

CREATE TYPE STATUS_CONTRATO AS ENUM ('EM_ANDAMENTO', 'FINALIZADO');


CREATE TABLE IF NOT EXISTS contrato_aluguel ( 
 aluguel_id SERIAL PRIMARY KEY,
placa_veiculo VARCHAR(7) NOT NULL,
cpf_cliente VARCHAR(12) NOT NULL,
funcionario INTEGER NOT NULL,
data_inicio  timestamp with time zone NOT NULL,
data_fim  timestamp with time zone NOT NULL,
status_contrato STATUS_CONTRATO NOT NULL,
valor NUMERIC(10,2) NOT NULL,
FOREIGN KEY (placa_veiculo) REFERENCES veiculo (placa),
FOREIGN KEY (cpf_cliente) REFERENCES cliente (cpf),
FOREIGN KEY (funcionario) REFERENCES funcionario (funcionario_id) 
);

------------------------------------------------------------------------------------------