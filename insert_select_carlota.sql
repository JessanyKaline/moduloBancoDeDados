-- Inserir cores disponíveis
INSERT INTO Cores (cor) VALUES ('branco'), ('preto'), ('prata');

-- Inserir versao de veículos
INSERT INTO Versao (versao) VALUES ('hatch'), ('sedam compacto'), ('sedam médio'), ('SUV');

-- Inserir montadora de veículos
INSERT INTO Montadora (montadora) VALUES ('fiat'), ('ford');

-- Inserir um carro
INSERT INTO Carro (modelo_carro, id_cor, id_versao, id_montadora) VALUES ('Economico', 2, 1, 1);

-- Inserir um cliente
INSERT INTO Cliente (nome, cpf) VALUES ('José Santos', '123.456.789-01');

-- Inserir Unidades
INSERT INTO Unidades (nome) VALUES ('SP'), ('BA'), ('RJ');

-- Locar um carro para um cliente
INSERT INTO Locacao ( id_cliente, data_locacao, data_devolucao, id_unid_locacao, id_unid_devolucao, id_carro, km_inicial, km_final,)
VALUES (1,'2023-01-01', '2023-01-02', 1, 1, 3, 850, 1110);

-- Select para verificar se um cliente já alugou um carro
SELECT * FROM Locacao WHERE id_cliente = 1;

-- Select para verificar se um carro está disponível para locação
SELECT * FROM Locacao WHERE id_carro = 2 AND data_devolucao IS NULL;

-- Select para obter o histórico de locação de um carro
SELECT * FROM Locacao_Historico WHERE id_carro = 1;

-- Select para obter a quilometragem atual de um carro
SELECT id_carro, km_final FROM Locacao WHERE id_carro = 1 AND data_devolucao IS NOT NULL;

-- Select para verificar onde um carro foi locado e devolvido
SELECT id_carro, id_unid_locacao, id_unid_devolucao FROM Locacao WHERE id_carro = 1 AND data_devolucao IS NOT NULL;

