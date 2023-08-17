USE Exercicio_1_2;

SELECT 
    Cliente.Nome AS Cliente,
    Aluguel.Dataretirada AS Retirada,
    Modelo.Nome AS NomeModelo
FROM 
    Cliente
LEFT JOIN 
    Aluguel ON Cliente.IdAluguel = Aluguel.IdAluguel
LEFT JOIN 
    Veiculo ON Aluguel.IdVeiculo = Veiculo.IdVeiculo;