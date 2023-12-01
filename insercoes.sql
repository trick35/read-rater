-- Inserindo dados na tabela `editora`
INSERT INTO `editora` (`nome`, `cnpj`, `descricao`) VALUES
('Editora Nacional', '12345678901234', 'Uma renomada editora nacional focada em literatura brasileira.'),
('Editora Internacional', '56789012345678', 'Editora que traz traduções de best-sellers mundiais.'),
('Editora Cultural', '98765432109876', 'Dedicada a obras clássicas e culturais.'),
('Editora Infantil', '11223344556677', 'Especializada em livros para crianças.'),
('Editora Acadêmica', '99887766554433', 'Publicações acadêmicas e científicas.'),
('Editora de Poesia', '66554433221100', 'Focada em obras poéticas e líricas.'),
('Editora de Ficção Científica', '77889900112233', 'Explorando mundos futuristas e ficção científica.'),
('Editora de História Real', '33445566778899', 'Narrativas baseadas em eventos históricos.'),
('Editora de Autoajuda', '00112233445566', 'Livros para o desenvolvimento pessoal.'),
('Editora de Romance Histórico', '55667788990011', 'Romances ambientados em épocas passadas.');

-- Inserindo dados na tabela `livro`
INSERT INTO `livro` (`nome`, `sinopse`, `numeroPaginas`, `isbn`, `dataPublicacao`, `editora_id`) VALUES
('Memórias de um Sertanejo', 'A vida de um vaqueiro nordestino durante o século XX.', 320, '9781234567890', '2005-05-15', 1),
('Código das Sombras', 'Um thriller que envolve intrigas políticas e espionagem internacional.', 480, '9782345678901', '2018-10-22', 2),
('A Árvore da Vida', 'Uma saga familiar que atravessa gerações.', 400, '9783456789012', '2010-07-08', 3),
('Aventuras no País das Maravilhas', 'Clássico da literatura infantil reimaginado.', 150, '9784567890123', '2015-03-12', 4),
('Ciência e Sociedade', 'Um estudo profundo sobre a interação entre ciência e cultura.', 280, '9785678901234', '2019-11-30', 5),
('Poemas de Amor', 'Coleção de poesias românticas e emocionantes.', 120, '9786789012345', '2013-02-14', 6),
('Viagem Interplanetária', 'Explorando mundos distantes e tecnologias futuristas.', 350, '9787890123456', '2021-06-25', 7),
('Grandes Batalhas da História', 'Relatos detalhados de batalhas que moldaram o curso da humanidade.', 420, '9788901234567', '2008-09-18', 8),
('Caminho para o Sucesso', 'Guia prático para alcançar metas e conquistar objetivos.', 200, '9789012345678', '2017-04-03', 9),
('Romance na Corte', 'História de amor ambientada em uma corte histórica.', 280, '9780123456789', '2014-08-20', 10);

-- Inserindo dados na tabela `genero`
INSERT INTO `genero` (`nome`, `descricao`) VALUES
('Romance', 'Histórias centradas em relacionamentos e emoções.'),
('Suspense', 'Narrativas cheias de mistério e tensão.'),
('Ficção Científica', 'Exploração de futuros possíveis e tecnologias avançadas.'),
('História', 'Relatos baseados em eventos históricos e biografias.'),
('Infantil', 'Livros voltados para crianças e jovens leitores.'),
('Acadêmico', 'Publicações científicas e acadêmicas.'),
('Poesia', 'Expressão lírica e artística através de poemas.'),
('Autoajuda', 'Livros para o desenvolvimento pessoal e motivação.'),
('Aventura', 'Narrativas emocionantes e cheias de ação.'),
('Fantasia', 'Mundos imaginários e elementos fantásticos.');

-- Inserindo dados na tabela `usuario`
INSERT INTO `usuario` (`nome`, `usuario`, `email`, `senha`) VALUES
('Ana Silva', 'ana_silva', 'ana.silva@email.com', 'senha123'),
('Carlos Oliveira', 'carlos123', 'carlos.oliveira@email.com', 'senha456'),
('Maria Souza', 'maria_souza', 'maria.souza@email.com', 'senha789'),
('Pedro Santos', 'pedro.santos', 'pedro.santos@email.com', 'senhaabc'),
('Laura Lima', 'laura_lima', 'laura.lima@email.com', 'senhadef'),
('Lucas Pereira', 'lucas123', 'lucas.pereira@email.com', 'senhaghi'),
('Isabel Silva', 'isabel_silva', 'isabel.silva@email.com', 'senha456'),
('Rafael Oliveira', 'rafael.o', 'rafael.oliveira@email.com', 'senha789'),
('Gabriela Souza', 'gabi_souza', 'gabriela.souza@email.com', 'senhaabc'),
('João Lima', 'joao.l', 'joao.lima@email.com', 'senhadef');

-- Inserindo dados na tabela `autor`
INSERT INTO `autor` (`nome`, `biografia`) VALUES
('José da Silva', 'Autor premiado com obras que retratam a cultura brasileira.'),
('Elena Martins', 'Escritora internacional com ênfase em suspense e mistério.'),
('Carlos Oliveira', 'Autor de ficção científica apaixonado por tecnologia.'),
('Ana Souza', 'Autora infantil que encanta crianças com suas histórias.'),
('Prof. Marcelo Santos', 'Pesquisador renomado na área de ciências sociais.'),
('Laura Lima', 'Poetisa premiada por sua expressão artística única.'),
('Dr. Roberto Pereira', 'Especialista em viagens interplanetárias e exploração espacial.'),
('Historiadora Maria Oliveira', 'Pesquisadora dedicada a revelar os segredos do passado.'),
('Coach Patrícia Santos', 'Especialista em autoajuda e desenvolvimento pessoal.'),
('Rafaela Silva', 'Autora de romances históricos ambientados em diversas eras.');

-- Inserindo dados na tabela `avaliacao`
INSERT INTO `avaliacao` (`nota`, `dataAvaliacao`, `comentario`, `usuario_id`, `livro_id`) VALUES
(4, '2022-03-01', 'Uma leitura envolvente, mas o final poderia ser mais surpreendente.', 1, 1),
(5, '2022-03-02', 'Intrigante do início ao fim, recomendo fortemente!', 2, 2),
(3, '2022-03-03', 'História cativante, mas a narrativa poderia ser mais ágil.', 3, 3),
(4, '2022-03-04', 'Perfeito para crianças, meu filho adorou!', 4, 4),
(5, '2022-03-05', 'Análise profunda e bem fundamentada. Recomendo para acadêmicos.', 5, 5),
(4, '2022-03-06', 'Poemas emocionantes, tocaram meu coração.', 6, 6),
(5, '2022-03-07', 'Uma viagem incrível pelos confins do universo!', 7, 7),
(4, '2022-03-08', 'Detalhes impressionantes das grandes batalhas da história.', 8, 8),
(4, '2022-03-09', 'Dicas práticas para alcançar metas. Inspirador!', 9, 9),
(5, '2022-03-10', 'Romance histórico encantador. Mal posso esperar pelo próximo!', 10, 10);

-- Inserindo dados na tabela `livro_genero`
INSERT INTO `livro_genero` (`livro_id`, `genero_id`) VALUES
(1, 1), (1, 3), -- Memórias de um Sertanejo pertence aos gêneros Romance e Ficção Científica
(2, 2), (2, 8), -- Código das Sombras pertence aos gêneros Suspense e Aventura
(3, 1), (3, 4), -- A Árvore da Vida pertence aos gêneros Romance e Infantil
(4, 4),         -- Aventuras no País das Maravilhas pertence ao gênero Infantil
(5, 5),         -- Ciência e Sociedade pertence ao gênero História
(6, 6),         -- Poemas de Amor pertence ao gênero Poesia
(7, 3), (7, 9), -- Viagem Interplanetária pertence aos gêneros Ficção Científica e Fantasia
(8, 4),         -- Grandes Batalhas da História pertence ao gênero História
(9, 8),         -- Caminho para o Sucesso pertence ao gênero Autoajuda
(10, 1);        -- Romance na Corte pertence ao gênero Romance

-- Inserindo dados na tabela `autor_genero`
INSERT INTO `autor_genero` (`autor_id`, `genero_id`) VALUES
(1, 1), (1, 3),  -- José da Silva escreve nos gêneros Romance e Ficção Científica
(2, 2), (2, 8),  -- Elena Martins escreve nos gêneros Suspense e Aventura
(3, 1), (3, 3),  -- Carlos Oliveira escreve nos gêneros Romance e Ficção Científica
(4, 4),          -- Ana Souza escreve no gênero Infantil
(5, 5),          -- Prof. Marcelo Santos escreve no gênero História
(6, 6),          -- Laura Lima escreve no gênero Poesia
(7, 3), (7, 9),  -- Dr. Roberto Pereira escreve nos gêneros Ficção Científica e Fantasia
(8, 4),          -- Historiadora Maria Oliveira escreve no gênero História
(9, 8),          -- Coach Patrícia Santos escreve no gênero Autoajuda
(10, 1);         -- Rafaela Silva escreve no gênero Romance

-- Inserindo dados na tabela `autor_livro`
INSERT INTO `autor_livro` (`autor_id`, `livro_id`) VALUES
(1, 1),   -- José da Silva escreveu Memórias de um Sertanejo
(2, 2),   -- Elena Martins escreveu Código das Sombras
(3, 3),   -- Carlos Oliveira escreveu A Árvore da Vida
(4, 4),   -- Ana Souza escreveu Aventuras no País das Maravilhas
(5, 5),   -- Prof. Marcelo Santos escreveu Ciência e Sociedade
(6, 6),   -- Laura Lima escreveu Poemas de Amor
(7, 7),   -- Dr. Roberto Pereira escreveu Viagem Interplanetária
(8, 8),   -- Historiadora Maria Oliveira escreveu Grandes Batalhas da História
(9, 9),   -- Coach Patrícia Santos escreveu Caminho para o Sucesso
(10, 10); -- Rafaela Silva escreveu Romance na Corte
