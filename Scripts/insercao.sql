use `pavbanconovo`;


INSERT INTO Produto (nome, quantidade_estoque, preco, unidade, id_fornecedor, id_tipo) 
VALUES 
('Arroz Integral', '50', '7.99', 'kg', 1, 1),
('Notebook HP', '20', '3499.99', 'unidade', 2, 2),
('Camiseta Branca', '30', '19.99', 'unidade', 3, 3),
('Shampoo Anticaspa', '40', '12.50', 'unidade', 4, 4),
('Feijão Preto', '60', '6.50', 'kg', 5, 1),
('Smartphone Samsung', '15', '1599.99', 'unidade', 6, 2),
('Calça Jeans', '25', '49.99', 'unidade', 7, 3),
('Protetor Solar FPS 50', '35', '29.90', 'unidade', 8, 4),
('Açúcar Mascavo', '45', '8.50', 'kg', 9, 1),
('Secador de Cabelo', '10', '89.99', 'unidade', 10, 2),
('Macarrão Espaguete', '120', 2.99, 'Kg', 4, 1),
('Azeite de Oliva Extra Virgem', '40', 15.90, 'Litro', 5, 1),
('Ovos Brancos', '200', 0.50, 'Unidade', 6, 1),
('Frango Congelado', '60', 9.99, 'Kg', 7, 1),
('Batata Inglesa', '70', 2.00, 'Kg', 8, 1),
('Tomate', '90', 3.50, 'Kg', 9, 1),
('Banana Prata', '150', 2.99, 'Kg', 10, 1),
('Notebook Dell Inspiron 15', '10', 3500.00, 'Unidade', 2, 2),
('Smart TV LG 55 Polegadas', '5', 2500.00, 'Unidade', 3, 2),
('Fone de Ouvido Bluetooth JBL', '30', 150.00, 'Unidade', 6, 2),
('Carregador Portátil Xiaomi', '40', 50.00, 'Unidade', 6, 2),
('Câmera Digital Canon EOS Rebel T7', '8', 1500.00, 'Unidade', 2, 2),
('Console de Videogame PlayStation 5', '3', 4500.00, 'Unidade', 2, 2),
('Roteador Wi-Fi TP-Link Archer C6', '15', 200.00, 'Unidade', 6, 2),
('Impressora Multifuncional Epson EcoTank', '7', 800.00, 'Unidade', 6, 2),
('Mouse Gamer Logitech G502', '25', 100.00, 'Unidade', 6, 2),
('Camiseta Básica Preta', '80', 20.00, 'Unidade', 9, 3),
('Calça Jeans Masculina', '40', 80.00, 'Unidade', 7, 3),
('Vestido Floral', '30', 60.00, 'Unidade', 9, 3),
('Tênis Nike Air Max', '25', 200.00, 'Unidade', 9, 3),
('Blusa de Frio', '50', 70.00, 'Unidade', 9, 3),
('Bermuda Jeans', '35', 50.00, 'Unidade', 7, 3),
('Saia Midi Plissada', '20', 45.00, 'Unidade', 9, 3),
('Camisa Social Masculina', '15', 100.00, 'Unidade', 9, 3),
('Jaqueta de Couro', '10', 150.00, 'Unidade', 9, 3),
('Legging Fitness', '60', 30.00, 'Unidade', 7, 3),
('Shampoo Pantene 3 em 1', '50', 15.00, 'Litro', 8, 4),
('Protetor Solar Neutrogena FPS 50', '30', 40.00, 'Unidade', 8, 4),
('Batom Ruby Woo da MAC', '20', 50.00, 'Unidade', 8, 4),
('Creme Hidratante Nivea Soft', '70', 20.00, 'Unidade', 8, 4);


INSERT INTO Fornecedor (nome, cpf_cnpj, logradouro, numero, complemento, bairro, cidade, estado, cep, telefone, email) 
VALUES 
('Distribuidora ABC', '012.345.678/0001-01', 'Rua das Indústrias', '200', '', 'Industrial', 'São Paulo', 'SP', '23456-789', '(11) 7777-7777', 'contato@distribuidora.com'),
('Tecnosmart LTDA', '987.654.321/0001-01', 'Avenida Tecnológica', '300', '', 'Tecnopark', 'Rio de Janeiro', 'RJ', '34567-890', '(21) 6666-6666', 'contato@tecnosmart.com'),
('VestBem Comércio', '222.333.444/0001-01', 'Rua da Moda', '400', '', 'Fashion', 'Belo Horizonte', 'MG', '45678-901', '(31) 8888-8888', 'contato@vestbem.com'),
('Beleza e Estilo Ltda', '333.444.555/0001-01', 'Avenida das Belezas', '500', '', 'Beauty', 'Salvador', 'BA', '56789-012', '(71) 9999-9999', 'contato@beleza.com'),
('Cereais do Brasil', '444.555.666/0001-01', 'Rua dos Cereais', '600', '', 'Grãos', 'Curitiba', 'PR', '67890-123', '(41) 3333-3333', 'contato@cereais.com'),
('CellTech Solutions', '555.666.777/0001-01', 'Avenida das Tecnologias', '700', '', 'Tecno', 'Recife', 'PE', '78901-234', '(81) 2222-2222', 'contato@celltech.com'),
('Jeans Wear Ltda', '666.777.888/0001-01', 'Rua do Jeans', '800', '', 'Denim', 'Fortaleza', 'CE', '90123-456', '(85) 5555-5555', 'contato@jeanswear.com'),
('Sun Beauty Supply', '777.888.999/0001-01', 'Avenida do Sol', '900', '', 'Sun', 'Goiânia', 'GO', '12345-678', '(62) 7777-7777', 'contato@sunbeauty.com'),
('Fashion Trends', '888.999.000/0001-01', 'Rua da Moda', '1000', '', 'Trend', 'Porto Alegre', 'RS', '23456-789', '(51) 1111-1111', 'contato@fashiontrends.com'),
('BeautyStyle', '999.000.111/0001-01', 'Avenida da Beleza', '1100', '', 'Style', 'Manaus', 'AM', '34567-890', '(92) 9999-9999', 'contato@beautystyle.com');


INSERT INTO Cliente (nome, cpf_cnpj, logradouro, numero, complemento, bairro, cidade, estado, cep, telefone, email) 
VALUES 
('Maria Silva', '123.456.789-10', 'Rua das Flores', '100', 'Apto 101', 'Centro', 'São Paulo', 'SP', '12345-678', '(11) 99999-9999', 'maria@email.com'),
('João Santos', '987.654.321-10', 'Avenida Principal', '500', '', 'Bela Vista', 'Rio de Janeiro', 'RJ', '98765-432', '(21) 88888-8888', 'joao@email.com'),
('Ana Oliveira', '111.222.333-44', 'Rua dos Girassóis', '200', '', 'Jardim', 'Belo Horizonte', 'MG', '34567-890', '(31) 7777-7777', 'ana@email.com'),
('Pedro Souza', '555.666.777-88', 'Avenida das Palmeiras', '300', 'Apto 102', 'Praia', 'Salvador', 'BA', '45678-901', '(71) 6666-6666', 'pedro@email.com'),
('Fernanda Lima', '999.888.777-66', 'Rua das Margaridas', '150', '', 'Vila', 'Curitiba', 'PR', '54321-098', '(41) 5555-5555', 'fernanda@email.com'),
('Ricardo Costa', '333.222.111-00', 'Avenida dos Coqueiros', '400', 'Casa 2', 'Coqueiral', 'Recife', 'PE', '65432-109', '(81) 4444-4444', 'ricardo@email.com'),
('Camila Oliveira', '777.888.999-11', 'Rua das Acácias', '50', '', 'Floresta', 'Fortaleza', 'CE', '21098-765', '(85) 3333-3333', 'camila@email.com'),
('Lucas Almeida', '123.987.654-32', 'Avenida dos Flamboyants', '250', 'Bloco A', 'Flamboyant', 'Goiânia', 'GO', '87654-321', '(62) 2222-2222', 'lucas@email.com'),
('Juliana Pereira', '987.654.321-09', 'Rua das Orquídeas', '75', '', 'Orquidário', 'Porto Alegre', 'RS', '09876-543', '(51) 8888-8888', 'juliana@email.com'),
('Marcos Santos', '345.678.901-23', 'Avenida das Violetas', '120', 'Casa 3', 'Violeta', 'Manaus', 'AM', '23456-789', '(92) 7777-7777', 'marcos@email.com');




INSERT INTO FormaPagamento (nome) 
VALUES 
('Dinheiro'),
('Debito'),
('Crediario');




