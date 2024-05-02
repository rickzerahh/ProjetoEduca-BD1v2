INSERT INTO Livro (ISBN, ano_lancamento, edicao, titulo_livro, editora, qtd_venda, qtd_emprestimo, autor, valor_livro, Livro_TIPO, fk_Biblioteca_ID_biblioteca)
VALUES 
('978-0133594140', '2014-08-01', 1, 'Database Systems: The Complete Book', 'Pearson', 200, 100, 'Hector Garcia-Molina, Jeffrey D. Ullman, Jennifer Widom', 59.99, 1, 'BIB008'),
('978-0321197849', '2003-07-01', 1, 'Introduction to the Theory of Computation', 'Cengage Learning', 150, 75, 'Michael Sipser', 89.99, 1, 'BIB009'),
('978-0262531962', '2002-08-01', 1, 'Design Patterns: Elements of Reusable Object-Oriented Software', 'MIT Press', 180, 90, 'Erich Gamma, Richard Helm, Ralph Johnson, John Vlissides', 49.99, 1, 'BIB010'),
('978-1491901533', '2014-07-01', 1, 'Python for Data Analysis', 'O\'Reilly Media', 220, 110, 'Wes McKinney', 39.99, 1, 'BIB011'),
('978-0262033848', '2016-11-11', 1, 'Database Internals: A Deep Dive into How Distributed Data Systems Work', 'O\'Reilly Media', 190, 95, 'Alex Petrov', 45.99, 1, 'BIB012');

INSERT INTO Biblioteca (telefone_biblioteca, ID_biblioteca)
VALUE 
(123456789, 'BIB001');

INSERT INTO Autor (ID_autor, dataNascimento_autor, sexo, nacionalidade, nome_autor)
VALUES 
(1, '1965-07-31', 'mulher', 'britânico', 'J.K. Rowling'),
(2, '1971-02-17', 'homem', 'americano', 'Jeff Kinney'),
(3, '1965-12-21', 'mulher', 'americano', 'Suzanne Collins'),
(4, '1947-09-21', 'homem', 'americano', 'Stephen King'),
(5, '1982-06-08', 'mulher', 'americano', 'Veronica Roth');


INSERT INTO Aluno (matricula_aluno, nome_aluno, email_aluno, endereco_aluno)
VALUES 
(123456789, 'João Silva', 'joao.123456789@unicap.br', 'Rua A, 123'),
(987654321, 'Maria Santos', 'maria.987654321@unicap.br', 'Av. B, 456'),
(555555555, 'Pedro Souza', 'pedro.555555555@unicap.br', 'Praça C, 789'),
(999999999, 'Ana Oliveira', 'ana.999999999@unicap.br', 'Rua D, 321'),
(111111111, 'Lucas Pereira', 'lucas.111111111@unicap.br', 'Av. E, 654');

INSERT INTO Disciplina (ID_disciplina, nome_disciplina)
VALUES 
('CSC001', 'Introdução à Ciência da Computação'),
('CSC002', 'Estrutura de Dados'),
('CSC003', 'Algoritmos e Complexidade'),
('CSC004', 'Banco de Dados'),
('CSC005', 'Sistemas Operacionais');

INSERT INTO Curso (ID_curso, nome_curso)
VALUES 
('CS001', 'Ciência da Computação'),
('ENG001', 'Engenharia Civil'),
('ADM001', 'Administração'),
('MED001', 'Medicina'),
('ART001', 'Arquitetura');

INSERT INTO Professor (ID_professor, nome_professor, especializacao_professor, telefone_professor)
VALUES 
('PROF001', 'Carlos Santos', 'calculo', 123456789),
('PROF002', 'Ana Oliveira', 'estrutura de dados', 987654321),
('PROF003', 'Maria Silva', 'inteligência artificial', 555555555),
('PROF004', 'Pedro Souza', 'algebra linear', 999999999),
('PROF005', 'Lucas Pereira', 'redes de computadores', 111111111);

INSERT INTO Pedido (ID_pedido, data_pedido)
VALUES 
('PED001', '2024-04-25'),
('PED002', '2024-04-26'),
('PED003', '2024-04-27'),
('PED004', '2024-04-28'),
('PED005', '2024-04-29');

INSERT INTO Cliente (ID_cliente)
VALUES 
('CLI001'),
('CLI002'),
('CLI003'),
('CLI004'),
('CLI005');

INSERT INTO Pagamento (forma_pagamento, valor_total, data_pagamento, ID_pagamento, ID_pedido, fk_Cliente_ID_cliente)
VALUES 
('pix', 150.00, '2024-04-25', 'PGT001', 'PED001', 'CLI001'),
('cartao de credito', 200.00, '2024-04-26', 'PGT002', 'PED002', 'CLI002'),
('pix', 100.00, '2024-04-27', 'PGT003', 'PED003', 'CLI003'),
('boleto', 75.00, '2024-04-28', 'PGT004', 'PED004', 'CLI004'),
('cartao de credito', 120.00, '2024-04-29', 'PGT005', 'PED005', 'CLI005');

INSERT INTO Funcionario (especializacao_funcionario, ID_funcionario, nome_funcionario, telefone_funcionario)
VALUES 
('bibliotecaria', 'FUNC001', 'Ana Silva', 123456789),
('segurança', 'FUNC002', 'Pedro Oliveira', 987654321),
('zeladora', 'FUNC003', 'Maria Souza', 555555555),
('segurança', 'FUNC004', 'Lucas Pereira', 999999999),
('bibliotecario', 'FUNC005', 'João Santos', 111111111);

INSERT INTO Nao_Aluno (nome_pessoa, email_pessoa, cpf_pessoa, endereco_pessoa)
VALUES 
('Rafael Pereira', 'rafael@email.com', 12345678901, 'Rua A, 123'),
('Juliana Oliveira', 'juliana@email.com', 98765432101, 'Av. B, 456'),
('Fernanda Silva', 'fernanda@email.com', 55555555501, 'Praça C, 789'),
('Roberto Souza', 'roberto@email.com', 99999999901, 'Rua D, 321'),
('Mariana Santos', 'mariana@email.com', 11111111101, 'Av. E, 654');
