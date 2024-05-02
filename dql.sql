SELECT livro.Titulo_livro
FROM para_emprestimo 
JOIN aluno ON emprestimo.fk_aluno_matricula = aluno.matricula
JOIN livro ON para_emprestimo.livro_ISBN = livro.ISBN
WHERE aluno.Nome_aluno = 'Nome do Aluno',

SELECT Quant_para_emprestimo FROM livro

SELECT Nota FROM NotaAlunoDisciplina
JOIN aluno ON Nota.fk_Aluno_Matricula_aluno = aluno.matricula
JOIN disciplina ON notas.fk_Disciplina_ID_disciplina = disciplina.ID
WHERE aluno.Nome_ALuno = 'Nome do Aluno' AND disciplina.Nome_Disciplina= 'Nome da Disciplina';

