CREATE DATABASE loja;
USE loja;

CREATE TABLE estado (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    uf CHAR(2) NOT NULL
);

CREATE TABLE municipio (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(80) NOT NULL,
    cod_IBGE INT NOT NULL,
	estado_id INT NOT NULL,

    CONSTRAINT fk_municipio_estado -- define o nome da chave estrangeira
    FOREIGN KEY (estado_id) 
        REFERENCES estado(id)
        ON DELETE RESTRICT   -- bloqueia exclusão do estado se houver município relacionado
        ON UPDATE RESTRICT   -- bloqueia alteração do id do estado se houver vínculo
);

CREATE TABLE cliente (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(80) NOT NULL,
    cpf CHAR(11) NOT NULL,
    celular CHAR(11),
    end_logradouro VARCHAR(100) NOT NULL,
    end_numero VARCHAR(10) NOT NULL,
    end_municipio INT NOT NULL,
    end_cep CHAR(8),
    municipio_id INT NOT NULL,
    CONSTRAINT fk_cliente_municipio FOREIGN KEY (municipio_id)
        REFERENCES municipio (id)
        ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE conta_receber (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fatura_venda_id INT,
    data_conta DATE NOT NULL,
    data_vencimento DATE NOT NULL,
    valor DECIMAL(18 , 2 ) NOT NULL,
    situacao ENUM('1', '2', '3') NOT NULL,   -- representa o status da conta (1=registrada, 2=cancelada, 3=paga)
    cliente_id INT NOT NULL,
    CONSTRAINT fk_conta_receber_cliente FOREIGN KEY (cliente_id)
        REFERENCES cliente (id)
        ON DELETE RESTRICT ON UPDATE RESTRICT
);