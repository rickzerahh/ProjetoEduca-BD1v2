/* logico: */

CREATE TABLE Livro (
    ISBN VARCHAR PRIMARY KEY,
    ano_lancamento DATE,
    edicao INT,
    titulo_livro INT,
    editora INT,
    qtd_venda DOUBLE,
    qtd_emprestimo DOUBLE,
    autor INT,
    valor_livro DOUBLE,
    Livro_TIPO INT,
    fk_Biblioteca_ID_biblioteca VARCHAR
);

CREATE TABLE Biblioteca (
    telefone_biblioteca DOUBLE,
    ID_biblioteca VARCHAR PRIMARY KEY
);

CREATE TABLE Autor (
    ID_autor INT PRIMARY KEY,
    dataNascimento_autor DATE,
    sexo INT,
    nacionalidade INT,
    nome_autor INT
);

CREATE TABLE Aluno (
    matricula_aluno DOUBLE PRIMARY KEY,
    nome_aluno INT,
    email_aluno VARCHAR,
    endereco_aluno VARCHAR
);

CREATE TABLE Disciplina (
    ID_disciplina VARCHAR PRIMARY KEY,
    nome_disciplina INT
);

CREATE TABLE Curso (
    ID_curso VARCHAR PRIMARY KEY,
    nome_curso INT
);

CREATE TABLE Professor (
    ID_professor VARCHAR PRIMARY KEY,
    nome_professor INT,
    especializacao_professor INT,
    telefone_professor DOUBLE
);

CREATE TABLE Pedido (
    ID_pedido VARCHAR PRIMARY KEY,
    data_pedido DATE
);

CREATE TABLE Cliente (
    ID_cliente VARCHAR PRIMARY KEY
);

CREATE TABLE Pagamento (
    forma_pagamento INT,
    valor_total DOUBLE,
    data_pagamento DATE,
    ID_pagamento VARCHAR PRIMARY KEY,
    ID_pedido VARCHAR,
    fk_Cliente_ID_cliente VARCHAR
);

CREATE TABLE Funcionario (
    especializacao_funcionario INT,
    ID_funcionario VARCHAR PRIMARY KEY,
    nome_funcionario INT,
    telefone_funcionario DOUBLE
);

CREATE TABLE Nao_Aluno (
    nome_pessoa INT,
    email_pessoa VARCHAR,
    cpf_pessoa DOUBLE PRIMARY KEY,
    endereco_pessoa VARCHAR
);

CREATE TABLE escreve (
    fk_Livro_ISBN VARCHAR,
    fk_Autor_ID_autor INT
);

CREATE TABLE Compra (
    fk_Pedido_ID_pedido VARCHAR,
    fk_Livro_ISBN VARCHAR
);

CREATE TABLE NotaAlunoDisciplina (
    fk_Aluno_matricula_aluno DOUBLE,
    fk_Disciplina_ID_disciplina VARCHAR,
    periodo DOUBLE PRIMARY KEY,
    nota DOUBLE
);

CREATE TABLE Contem (
    fk_Curso_ID_curso VARCHAR,
    fk_Disciplina_ID_disciplina VARCHAR
);

CREATE TABLE Ensina (
    fk_Disciplina_ID_disciplina VARCHAR,
    fk_Professor_ID_professor VARCHAR
);

CREATE TABLE Realiza (
    fk_Cliente_ID_cliente VARCHAR,
    fk_Pedido_ID_pedido VARCHAR
);

CREATE TABLE Trabalha (
    fk_Funcionario_ID_funcionario VARCHAR,
    fk_Biblioteca_ID_biblioteca VARCHAR
);

CREATE TABLE Para_emprestimo (
    fk_Livro_ISBN VARCHAR,
    fk_Aluno_matricula_aluno DOUBLE,
    data_retirada DATE,
    data_devolucao DATE
);

CREATE TABLE torna_se (
    fk_Cliente_ID_cliente VARCHAR,
    fk_Nao_Aluno_cpf_pessoa DOUBLE
);

CREATE TABLE transforma_em (
    fk_Aluno_matricula_aluno DOUBLE,
    fk_Cliente_ID_cliente VARCHAR
);
 
ALTER TABLE Livro ADD CONSTRAINT FK_Livro_2
    FOREIGN KEY (fk_Biblioteca_ID_biblioteca)
    REFERENCES Biblioteca (ID_biblioteca)
    ON DELETE CASCADE;
 
ALTER TABLE Pagamento ADD CONSTRAINT FK_Pagamento_2
    FOREIGN KEY (fk_Cliente_ID_cliente)
    REFERENCES Cliente (ID_cliente)
    ON DELETE RESTRICT;
 
ALTER TABLE escreve ADD CONSTRAINT FK_escreve_1
    FOREIGN KEY (fk_Livro_ISBN)
    REFERENCES Livro (ISBN)
    ON DELETE SET NULL;
 
ALTER TABLE escreve ADD CONSTRAINT FK_escreve_2
    FOREIGN KEY (fk_Autor_ID_autor)
    REFERENCES Autor (ID_autor)
    ON DELETE SET NULL;
 
ALTER TABLE Compra ADD CONSTRAINT FK_Compra_1
    FOREIGN KEY (fk_Pedido_ID_pedido)
    REFERENCES Pedido (ID_pedido)
    ON DELETE RESTRICT;
 
ALTER TABLE Compra ADD CONSTRAINT FK_Compra_2
    FOREIGN KEY (fk_Livro_ISBN)
    REFERENCES Livro (ISBN)
    ON DELETE SET NULL;
 
ALTER TABLE NotaAlunoDisciplina ADD CONSTRAINT FK_NotaAlunoDisciplina_2
    FOREIGN KEY (fk_Aluno_matricula_aluno)
    REFERENCES Aluno (matricula_aluno)
    ON DELETE SET NULL;
 
ALTER TABLE NotaAlunoDisciplina ADD CONSTRAINT FK_NotaAlunoDisciplina_3
    FOREIGN KEY (fk_Disciplina_ID_disciplina)
    REFERENCES Disciplina (ID_disciplina)
    ON DELETE SET NULL;
 
ALTER TABLE Contem ADD CONSTRAINT FK_Contem_1
    FOREIGN KEY (fk_Curso_ID_curso)
    REFERENCES Curso (ID_curso)
    ON DELETE RESTRICT;
 
ALTER TABLE Contem ADD CONSTRAINT FK_Contem_2
    FOREIGN KEY (fk_Disciplina_ID_disciplina)
    REFERENCES Disciplina (ID_disciplina)
    ON DELETE SET NULL;
 
ALTER TABLE Ensina ADD CONSTRAINT FK_Ensina_1
    FOREIGN KEY (fk_Disciplina_ID_disciplina)
    REFERENCES Disciplina (ID_disciplina)
    ON DELETE SET NULL;
 
ALTER TABLE Ensina ADD CONSTRAINT FK_Ensina_2
    FOREIGN KEY (fk_Professor_ID_professor)
    REFERENCES Professor (ID_professor)
    ON DELETE SET NULL;
 
ALTER TABLE Realiza ADD CONSTRAINT FK_Realiza_1
    FOREIGN KEY (fk_Cliente_ID_cliente)
    REFERENCES Cliente (ID_cliente)
    ON DELETE RESTRICT;
 
ALTER TABLE Realiza ADD CONSTRAINT FK_Realiza_2
    FOREIGN KEY (fk_Pedido_ID_pedido)
    REFERENCES Pedido (ID_pedido)
    ON DELETE SET NULL;
 
ALTER TABLE Trabalha ADD CONSTRAINT FK_Trabalha_1
    FOREIGN KEY (fk_Funcionario_ID_funcionario)
    REFERENCES Funcionario (ID_funcionario)
    ON DELETE SET NULL;
 
ALTER TABLE Trabalha ADD CONSTRAINT FK_Trabalha_2
    FOREIGN KEY (fk_Biblioteca_ID_biblioteca)
    REFERENCES Biblioteca (ID_biblioteca)
    ON DELETE SET NULL;
 
ALTER TABLE Para_emprestimo ADD CONSTRAINT FK_Para_emprestimo_1
    FOREIGN KEY (fk_Livro_ISBN)
    REFERENCES Livro (ISBN)
    ON DELETE SET NULL;
 
ALTER TABLE Para_emprestimo ADD CONSTRAINT FK_Para_emprestimo_2
    FOREIGN KEY (fk_Aluno_matricula_aluno)
    REFERENCES Aluno (matricula_aluno)
    ON DELETE SET NULL;
 
ALTER TABLE torna_se ADD CONSTRAINT FK_torna_se_1
    FOREIGN KEY (fk_Cliente_ID_cliente)
    REFERENCES Cliente (ID_cliente)
    ON DELETE SET NULL;
 
ALTER TABLE torna_se ADD CONSTRAINT FK_torna_se_2
    FOREIGN KEY (fk_Nao_Aluno_cpf_pessoa)
    REFERENCES Nao_Aluno (cpf_pessoa)
    ON DELETE SET NULL;
 
ALTER TABLE transforma_em ADD CONSTRAINT FK_transforma_em_1
    FOREIGN KEY (fk_Aluno_matricula_aluno)
    REFERENCES Aluno (matricula_aluno)
    ON DELETE SET NULL;
 
ALTER TABLE transforma_em ADD CONSTRAINT FK_transforma_em_2
    FOREIGN KEY (fk_Cliente_ID_cliente)
    REFERENCES Cliente (ID_cliente)
    ON DELETE SET NULL;