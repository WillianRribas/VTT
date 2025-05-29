set search_path = trabalho;

-- A. Desenvolver um script que insira no mínimo 5 registros em cada uma das tabelas 
-- Insere dados válidos nas colunas de suas respectivas tabelas;

INSERT INTO Conta (codigo, nome, data_nascimento, email, senha, apelido, foto, ultimo_acesso)
VALUES
	(1, 'João', '1990-01-01', 'joao@email.com', 'senha123', 'Jão', pg_read_binary_file('imagem.jpg')::bytea, '2023-11-13'),
	(2, 'Pedro', '1995-07-15', 'pedro@email.com', 'senha123', 'Pe', pg_read_binary_file('imagem.jpg')::bytea, '2022-07-25'),
	(3, 'Carlos', '2004-05-03', 'carlos@email.com', 'senha123', 'Carlinhos', pg_read_binary_file('imagem.jpg')::bytea, '2021-10-12'),
	(4, 'José', '2007-11-22', 'jose@email.com', 'senha123', 'Zé', pg_read_binary_file('imagem.jpg')::bytea, '2020-12-05'),
	(5, 'Maria', '2002-09-10', 'maria@email.com', 'senha123', 'M', pg_read_binary_file('imagem.jpg')::bytea, '2022-03-18');

INSERT INTO Raca (codigo_raca, nome_raca, foto_raca, bonus_raca)
VALUES
    (1, 'Humano', pg_read_binary_file('imagem.jpg')::bytea, 3),
    (2, 'Anão', pg_read_binary_file('imagem.jpg')::bytea, 3),
    (3, 'Elfo', pg_read_binary_file('imagem.jpg')::bytea, 3),
	(4, 'Halfling', pg_read_binary_file('imagem.jpg')::bytea, 3),
    (5, 'Meio-Orc', pg_read_binary_file('imagem.jpg')::bytea, 3),
	(6, 'Espírito', pg_read_binary_file('imagem.jpg')::bytea, 2),
    (7, 'Dragão Ancião', pg_read_binary_file('imagem.jpg')::bytea, 6),
    (8, 'Elemental', pg_read_binary_file('imagem.jpg')::bytea, 3),
	(9, 'Ciborgue', pg_read_binary_file('imagem.jpg')::bytea, 4),
	(10, 'Lich', pg_read_binary_file('imagem.jpg')::bytea, 5);
	
INSERT INTO Classe (codigo_classe, nome_classe, foto_classe, bonus_classe)
VALUES
    (1, 'Bárbaro', pg_read_binary_file('imagem.jpg')::bytea, 1),
    (2, 'Mago', pg_read_binary_file('imagem.jpg')::bytea, 1),
    (3, 'Clérigo', pg_read_binary_file('imagem.jpg')::bytea, 1),
    (4, 'Ladino', pg_read_binary_file('imagem.jpg')::bytea, 1),
    (5, 'Paladino', pg_read_binary_file('imagem.jpg')::bytea, 1);

INSERT INTO Personagem (codigo_personagem, nome_personagem, altura, peso, raca_personagem, classe_personagem, habilidade_personagem, foto_personagem, descricao_personagem)
VALUES
    (1, 'Elandra Mistwood', 1.75, 70.5, 4, 2, 3, pg_read_binary_file('imagem.jpg')::bytea, 'Elandra, uma elfa nobre de longos cabelos prateados, é conhecida por sua habilidade mágica excepcional com a natureza. Criada nas florestas de Mistwood, ela carrega a responsabilidade de proteger os segredos antigos da sua terra natal. Com um arco elegante e uma conexão única com os animais, Elandra é a guardiã dos equilíbrios naturais.'),
    (2, 'Thorne Ironheart', 1.80, 75.0, 3, 1, 4, pg_read_binary_file('imagem.jpg')::bytea, 'Thorne é um anão destemido e hábil ferreiro, cujo coração é forjado em aço. Com uma barba robusta e uma grande força física, ele é conhecido por suas habilidades em combate e por criar armas lendárias. Seu martelo, chamado "Corazza", é tão temido quanto respeitado nas forjas de Ironpeak, sua terra natal nas montanhas.'),
	(3, 'Seraphina Shadowbane', 1.78, 75.5, 2, 5, 2, pg_read_binary_file('imagem.jpg')::bytea, 'Nascida nas sombras, Seraphina é uma ladina astuta e ágil. Com olhos penetrantes e uma destreza incomparável, ela se move pelas cidades e florestas como uma sombra. Seu passado misterioso esconde segredos profundos, e ela é uma mestre na arte da furtividade, sempre um passo à frente de seus inimigos.'),
    (4, 'Kael Stormrider', 1.62, 68.9, 1, 3, 5, pg_read_binary_file('imagem.jpg')::bytea, 'Kael é um guerreiro destemido dos vastos mares, com cabelos selvagens e olhos que refletem a fúria da tempestade. Capitão do navio "Tempestade Eterna", ele busca tesouros perdidos e enfrenta criaturas do abismo marinho. Seu coração está na busca pela lendária Ilha da Eternidade, onde dizem que os deuses ocultaram um tesouro incomensurável.'),
	(5, 'Lyra Emberblade', 1.90, 82.3, 5, 1, 1, pg_read_binary_file('imagem.jpg')::bytea, 'Lyra, uma feiticeira com um toque de rebeldia, manipula as chamas com maestria. Seu cajado, incrustado com gemas ardentes, canaliza o fogo que ela usa para proteger os inocentes ou desafiar aqueles que ameaçam a paz. Com um passado marcado por tragédias, Lyra busca redenção através do controle das chamas que um dia a consumiram.'),
    (6, 'Gandor Dornblade', 1.85, 90.5, 4, 1, 3, pg_read_binary_file('imagem.jpg')::bytea, 'Gandor, o guerreiro destemido, brande a lendária espada "Cortadora de Destinos". Com olhos decididos e um coração corajoso, ele enfrenta inúmeras batalhas em nome da justiça, sempre buscando proteger os inocentes de ameaças terríveis.'),
    (7, 'Lyria Shadowcaster', 1.72, 65.2, 1, 3, 1, pg_read_binary_file('imagem.jpg')::bytea, 'Lyria, a feiticeira das sombras, é envolta em mistério e magia. Seus olhos brilham com a intensidade da lua cheia, e ela comanda as sombras para desencadear poderes mágicos insondáveis. Sua busca por conhecimento a leva a lugares perigosos e revelações extraordinárias.'),
    (8, 'Thrain Stoneheart', 1.78, 80.0, 5, 5, 4, pg_read_binary_file('imagem.jpg')::bytea, 'Thrain, o anão ferreiro, forja com habilidade as armas que se tornam lendárias nas profundezas das montanhas. Movido pela busca de segredos escondidos, ele explora túneis escuros em busca de conhecimentos há muito esquecidos.'),
    (9, 'Elowen Moonshade', 1.65, 55.8, 5, 2, 2, pg_read_binary_file('imagem.jpg')::bytea, 'Elowen, a elfa arqueira, desliza silenciosamente pelas sombras da floresta com sua flecha sempre certeira. Seu vínculo com a natureza a torna uma defensora feroz da fauna e da flora, e ela é conhecida por sua agilidade e destreza impressionantes.'),
    (10, 'Zephyr Stormwing', 1.92, 78.4, 1, 3, 2, pg_read_binary_file('imagem.jpg')::bytea, 'Zephyr, o aventureiro dos céus, surca os ares com asas mágicas. Seu coração anseia pela liberdade dos ventos, e ele explora terras distantes em busca de novas maravilhas e desafios. Seu olhar está sempre para o horizonte, pronto para a próxima aventura.');
	
INSERT INTO Inimigo (codigo_inimigo, nome_inimigo, raca_inimigo, classe_inimigo, habilidade_inimigo, tipo_inimigo, foto_inimigo)
VALUES
    (1, 'Sombra Espectral', 6, NULL, 2, 'Morto-vivo', pg_read_binary_file('imagem.jpg')::bytea),
    (2, 'Dragão de Fogo', 7, NULL, 6, 'Dragão', pg_read_binary_file('imagem.jpg')::bytea),
    (3, 'Necromante Negro', 1, 2, 8, 'Humanoide', pg_read_binary_file('imagem.jpg')::bytea),
    (4, 'Elemental da Tempestade', 8, NULL, 1, 'Elemental', pg_read_binary_file('imagem.jpg')::bytea),
    (5, 'Ciborgue Renegado', 9, NULL, 3, 'Construto', pg_read_binary_file('imagem.jpg')::bytea),
    (6, 'Lich Maligno', 10, 2, 4, 'Morto-vivo', pg_read_binary_file('imagem.jpg')::bytea),
    (7, 'Dragão de Gelo', 7, NULL, 7, 'Dragão', pg_read_binary_file('imagem.jpg')::bytea),
    (8, 'Feiticeiro das Sombras', 3, 2, 5, 'Humanoide', pg_read_binary_file('imagem.jpg')::bytea),
    (9, 'Elemental da Rocha', 8, NULL, 9, 'Elemental', pg_read_binary_file('imagem.jpg')::bytea),
    (10, 'Androide Assassino', 9, NULL, 10, 'Construto', pg_read_binary_file('imagem.jpg')::bytea);
	
INSERT INTO Habilidade (codigo_habilidade, nome_habilidade, descricao_habilidade, penalidade_habilidade, icone_habilidade, bonus_habilidade)
VALUES
    (1, 'Ataque Poderoso', 'Desfira golpes poderosos, mas sacrifique precisão.', -5, pg_read_binary_file('imagem.jpg')::bytea, 2),
    (2, 'Esquiva Sobrenatural', 'Habilidade de esquivar-se com agilidade sobrenatural.', 0, pg_read_binary_file('imagem.jpg')::bytea, 3),
    (3, 'Bola de Fogo', 'Conjure uma esfera de fogo para explodir nos inimigos.', 0, pg_read_binary_file('imagem.jpg')::bytea, 5),
    (4, 'Furtividade', 'Mova-se nas sombras sem ser detectado.', 0, pg_read_binary_file('imagem.jpg')::bytea, 2),
    (5, 'Cura Rápida', 'Cure ferimentos de forma rápida e eficaz.', 0, pg_read_binary_file('imagem.jpg')::bytea, 4),
    (6, 'Ataque Rápido', 'Permite ataques mais rápidos e precisos.', -2, pg_read_binary_file('imagem.jpg')::bytea, 2),
    (7, 'Defesa Poderosa', 'Aumenta a resistência a ataques inimigos.', 0, pg_read_binary_file('imagem.jpg')::bytea, 1),
    (8, 'Magia Elemental', 'Domina o poder dos elementos em feitiços.', 0, pg_read_binary_file('imagem.jpg')::bytea, 3),
    (9, 'Invisibilidade', 'Torna-se invisível aos olhos dos inimigos.', 0, pg_read_binary_file('imagem.jpg')::bytea, 4),
    (10, 'Curar Ferimentos', 'Recupera pontos de vida perdidos.', 0, pg_read_binary_file('imagem.jpg')::bytea, 5);

	
INSERT INTO Chat (codigo_chat, altura, largura, posicao_horizontal, posicao_vertical)
VALUES
    (1, 10, 8, 100, 50),
    (2, 8, 6, 80, 40),
    (3, 12, 9, 120, 60),
    (4, 9, 7, 90, 45),
    (5, 11, 8, 110, 55);

INSERT INTO Sistema (codigo_sistema, nome_sistema, edicao, ano_lancamento)
VALUES
    (1, 'Dungeons & Dragons', 5.0, 2014),
    (2, 'Pathfinder', 2.0, 2012),
    (3, 'Call of Cthulhu', 7.0, 2018),
    (4, 'Shadowrun', 6.0, 2015),
    (5, 'Star Wars: Edge of the Empire', 3.0, 2013);

INSERT INTO Aventura (codigo_aventura, nome_aventura, descricao_aventura, capa)
VALUES
    (1, 'O Resgate do Prisioneiro', 'Uma emocionante busca para resgatar um aliado cativo.', pg_read_binary_file('imagem.jpg')::bytea),
    (2, 'As Sombras do Passado', 'Uma aventura repleta de mistérios e segredos ocultos.', pg_read_binary_file('imagem.jpg')::bytea),
	(3, 'Invasão Alienígena', 'Os céus se abrem, e uma invasão alienígena ameaça a existência da humanidade. Será o último confronto?', pg_read_binary_file('imagem.jpg')::bytea),
    (4, 'A Queda da Cidade', 'Testemunhe o colapso de uma cidade diante de uma invasão terrível.', NULL),
    (5, 'O Artefato Perdido', 'Embarque em uma jornada para encontrar um artefato de poder inimaginável.', pg_read_binary_file('imagem.jpg')::bytea),
	(6, 'O Labirinto Perdido', 'Uma jornada épica para encontrar o lendário Labirinto Perdido e desvendar seus segredos.', NULL),
    (7, 'A Revolta dos Robôs', 'Uma história futurista onde máquinas se rebelam contra seus criadores.', pg_read_binary_file('imagem.jpg')::bytea);

INSERT INTO Mapa (codigo_mapa, nome_mapa, terreno, clima, descricao, imagem)
VALUES
    (1, 'Floresta Sombria', 'Floresta', 'Chuvoso', 'Uma floresta densa e misteriosa, assombrada por sombras antigas.', pg_read_binary_file('imagem.jpg')::bytea),
    (2, 'Deserto Ardente', 'Deserto', 'Ensolarado', 'Um vasto deserto onde o sol queima e as dunas se estendem até o horizonte.', pg_read_binary_file('imagem.jpg')::bytea),
    (3, 'Cidade Abandonada', 'Urbano', 'Nevoeiro', 'Uma cidade outrora próspera, agora abandonada e envolta em nevoeiro perpétuo.', pg_read_binary_file('imagem.jpg')::bytea),
    (4, 'Montanhas Geladas', 'Montanha', 'Gélido', 'Cadeias de montanhas cobertas de gelo, desafiando até os aventureiros mais corajosos.', pg_read_binary_file('imagem.jpg')::bytea),
    (5, 'Planície Serena', 'Planície', 'Nublado', 'Amplas planícies onde a tranquilidade reina e a natureza floresce.', pg_read_binary_file('imagem.jpg')::bytea);

INSERT INTO Mestre (codigo_mestre, apelido_mestre)
VALUES
    (1, 'ShadowMaster'),
    (2, 'DungeonKeeper'),
    (3, 'CthulhuOverlord'),
    (4, 'TechMaster'),
    (5, 'GalacticStoryteller');

INSERT INTO Dado (codigo_dado, quantidade_faces)
VALUES
    (1, 4),
    (2, 6),
    (3, 8),
    (4, 10),
    (5, 12),
	(6, 20),
	(7, 100);

INSERT INTO Rolar (codigo_rolagem, codigo_dado, codigo_personagem, resultado)
VALUES
    (1, 1, 1, 1),
    (2, 2, 2, 15),
    (3, 3, 3, 17),
    (4, 4, 4, 20),
    (5, 5, 5, 6);

INSERT INTO EnviarMensagem (codigo_mensagem, codigo_personagem, codigo_chat, texto)
VALUES
    (1, 1, 1, 'Olá, aventureiros! Vamos começar a jornada.'),
    (2, 2, 1, 'Estou ansioso para explorar o desconhecido.'),
    (3, 3, 2, 'Alguém já enfrentou um Elemental da Tempestade antes?'),
    (4, 4, 2, 'Precisamos de um plano antes de entrar na Cidade Abandonada.'),
    (5, 5, 3, 'GalacticStoryteller, prepare-se para uma aventura intergaláctica!');