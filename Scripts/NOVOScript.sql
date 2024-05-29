
use `pavbanconovo`;

-- Tabela de Produtos
CREATE TABLE Produto (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    quantidade_estoque VARCHAR(10),
    preco DECIMAL(10, 2),
    unidade VARCHAR(20),
    id_fornecedor INT,
    id_tipo INT,
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor(id_fornecedor),
    FOREIGN KEY (id_tipo) REFERENCES Tipo(id_tipo)
);

-- Tabela de Clientes 
CREATE TABLE Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cpf_cnpj VARCHAR(20),
    logradouro VARCHAR(100),
    numero VARCHAR(10),
    complemento VARCHAR(100),
    bairro VARCHAR(50),
    cidade VARCHAR(50),
    estado VARCHAR(50),
    cep VARCHAR(20),
    telefone VARCHAR(20),
    email VARCHAR(100)
);


-- Tabela de Fornecedores
CREATE TABLE Fornecedor (
    id_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cpf_cnpj VARCHAR(20),
    logradouro VARCHAR(100),
    numero VARCHAR(10),
    complemento VARCHAR(100),
    bairro VARCHAR(50),
    cidade VARCHAR(50),
    estado VARCHAR(50),
    cep VARCHAR(20),
    telefone VARCHAR(20),
    email VARCHAR(100)
);



-- Tabela de Formas de Pagamento
CREATE TABLE FormaPagamento (
    id_forma_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50)
);

-- Tabela de Vendas
CREATE TABLE Venda (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    data DATE,
    hora TIME,
    id_cliente INT,
    id_itemVenda INT,
    total_venda DECIMAL(10, 2),
    situacao_venda VARCHAR(20),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);



-- Tabela de Itens de Venda
CREATE TABLE ItemVenda (
    id_itemVenda INT AUTO_INCREMENT PRIMARY KEY,
    id_venda INT,
    numeroItem INT,
    id_produto INT,
    quantidade VARCHAR(10),
    valor_unitario DECIMAL(10, 2),
    total_item DECIMAL(10, 2),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto),
    FOREIGN KEY (id_venda) REFERENCES venda(id_venda)
);



-- Tabela de Formas de Pagamento de Vendas
CREATE TABLE FormaPagamentoVenda (
	id_formapagamentovenda INT AUTO_INCREMENT PRIMARY KEY,
    id_venda INT,
    id_forma_pagamento INT,
    valor DECIMAL(10, 2),
    FOREIGN KEY (id_venda) REFERENCES Venda(id_venda),
    FOREIGN KEY (id_forma_pagamento) REFERENCES FormaPagamento(id_forma_pagamento)
);


-- Tabela de Compras
CREATE TABLE Compra (
    id_compra INT AUTO_INCREMENT PRIMARY KEY,
    data DATE,
    hora TIME,
    id_fornecedor INT,
    total_compra DECIMAL(10, 2),
    situacao_compra VARCHAR(20),
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor(id_fornecedor)
);


-- Tabela de Itens de Compra
CREATE TABLE ItemCompra (
    id_itemcompra INT AUTO_INCREMENT PRIMARY KEY,
    id_compra INT,
    numeroItem INT,
    id_produto INT,
    quantidade VARCHAR(10),
    valor_unitario DECIMAL(10, 2),
    total_item DECIMAL(10, 2),
    FOREIGN KEY (id_compra) REFERENCES Compra(id_compra),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);

-- Tabela de Contas a Receber
CREATE TABLE Conta_Receber (
    id_conta_receber INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(200),
    id_cliente INT,
    data_lancamento DATE,
    data_vencimento DATE,
    valor DECIMAL(10, 2),
    recebido BOOLEAN,
    data_recebimento DATE,
    valor_recebimento DECIMAL(10, 2),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

-- Tabela de Contas a Pagar
CREATE TABLE Conta_Pagar (
    id_conta_pagar INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(200),
    id_fornecedor INT,
    data_lancamento DATE,
    data_vencimento DATE,
    valor DECIMAL(10, 2),
    pago BOOLEAN,
    data_pagamento DATE,
    valor_pagamento DECIMAL(10, 2),
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor(id_fornecedor)
);


-- Tabela de Caixa
CREATE TABLE Caixa (
    id_caixa INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    saldo DECIMAL(10, 2)
);



-- Tabela de Movimento de Caixa
CREATE TABLE MovimentoCaixa (
    id_movimento_caixa INT AUTO_INCREMENT PRIMARY KEY,
    id_caixa INT,
    id_compra INT,
    id_venda INT,
    data_movimento DATE,
    hora_movimento TIME,
    descricao VARCHAR(200),
    tipo_movimento VARCHAR(20),
    valor DECIMAL(10, 2),
    FOREIGN KEY (id_caixa) REFERENCES Caixa(id_caixa),
    FOREIGN KEY (id_compra) REFERENCES Compra(id_compra),
    FOREIGN KEY (id_venda) REFERENCES Venda(id_venda)
);



-- Tabela de Tipos
CREATE TABLE Tipo (
    id_tipo INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100)
);


CREATE TABLE ProdutoFornecedor (
    id_produtoFornecedor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    quantidade_estoque VARCHAR(10),
    preco DECIMAL(10, 2),
    unidade VARCHAR(20),
    id_fornecedor INT,
    id_tipo INT,
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor(id_fornecedor),
    FOREIGN KEY (id_tipo) REFERENCES Tipo(id_tipo)
);


CREATE TABLE FormaPagamentoCompra (
	id_formapagamentocompra INT AUTO_INCREMENT PRIMARY KEY,
    id_compra INT,
    id_forma_pagamento INT,
    valor DECIMAL(10, 2),
    FOREIGN KEY (id_compra) REFERENCES Compra(id_compra),
    FOREIGN KEY (id_forma_pagamento) REFERENCES FormaPagamento(id_forma_pagamento)
);






