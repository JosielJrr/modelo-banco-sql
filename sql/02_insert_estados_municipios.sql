INSERT INTO estado (nome, uf) VALUES
('Acre', 'AC'),
('Alagoas', 'AL'),
('Amapá', 'AP'),
('Amazonas', 'AM'),
('Bahia', 'BA'),
('Ceará', 'CE'),
('Distrito Federal', 'DF'),
('Espírito Santo', 'ES'),
('Goiás', 'GO'),
('Maranhão', 'MA'),
('Mato Grosso', 'MT'),
('Mato Grosso do Sul', 'MS'),
('Minas Gerais', 'MG'),
('Pará', 'PA'),
('Paraíba', 'PB'),
('Paraná', 'PR'),
('Pernambuco', 'PE'),
('Piauí', 'PI'),
('Rio de Janeiro', 'RJ'),
('Rio Grande do Norte', 'RN'),
('Rio Grande do Sul', 'RS'),
('Rondônia', 'RO'),
('Roraima', 'RR'),
('Santa Catarina', 'SC'),
('São Paulo', 'SP'),
('Sergipe', 'SE'),
('Tocantins', 'TO');

INSERT INTO municipio (nome, cod_IBGE, estado_id) VALUES 
('Rio Branco', 1200401, 1),          -- Acre
('Maceió', 2704302, 2),              -- Alagoas
('Macapá', 1600303, 3),              -- Amapá
('Manaus', 1302603, 4),              -- Amazonas
('Salvador', 2927408, 5),            -- Bahia
('Fortaleza', 2304400, 6),           -- Ceará
('Brasília', 5300108, 7),            -- Distrito Federal
('Vitória', 3205309, 8),             -- Espírito Santo
('Goiânia', 5208707, 9),             -- Goiás
('São Luís', 2111300, 10),           -- Maranhão
('Cuiabá', 5103403, 11),             -- Mato Grosso
('Campo Grande', 5002704, 12),       -- Mato Grosso do Sul
('Belo Horizonte', 3106200, 13),     -- Minas Gerais
('Belém', 1501402, 14),              -- Pará
('João Pessoa', 2507507, 15),        -- Paraíba
('Curitiba', 4106902, 16),           -- Paraná
('Recife', 2611606, 17),             -- Pernambuco
('Teresina', 2211001, 18),           -- Piauí
('Rio de Janeiro', 3304557, 19),     -- Rio de Janeiro
('Natal', 2408102, 20),              -- Rio Grande do Norte
('Porto Alegre', 4314902, 21),       -- Rio Grande do Sul
('Porto Velho', 1100205, 22),        -- Rondônia
('Boa Vista', 1400100, 23),          -- Roraima
('Florianópolis', 4205407, 24),      -- Santa Catarina
('São Paulo', 3550308, 25),          -- São Paulo
('Aracaju', 2800308, 26),            -- Sergipe
('Palmas', 1721000, 27);             -- Tocantins