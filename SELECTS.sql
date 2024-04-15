SELECT Sabor AS Pizza, tbl_pizzayollos.Nome AS Pizzayollo FROM tbl_pizzas
INNER JOIN tbl_pizzayollos 
ON tbl_pizzas.Id_Pizzayollo = tbl_pizzayollos.Id_Pizzayollo;

SELECT Ingredientes, Sabor AS Pizza FROM tbl_pizzas;

SELECT Sabor AS Pizza, tbl_pizzayollos.Nome AS Pizzayollo, tbl_receitas.Instrucoes AS Instruções FROM tbl_pizzas 
INNER JOIN tbl_pizzayollos
ON tbl_pizzas.Id_Pizzayollo = tbl_pizzayollos.Id_Pizzayollo
INNER JOIN tbl_receitas
ON tbl_pizzas.Id_Receita = tbl_receitas.Id_Receita;