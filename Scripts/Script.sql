-- Tabela de Produtos
CREATE TABLE Produto (
    id_produto INT PRIMARY KEY,
    nome VARCHAR(100),
    quantidade_estoque VARCHAR(10),
    preco VARCHAR(20),
    unidade VARCHAR(20),
    id_fornecedor INT,
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor(id_fornecedor)
);

-- Tabela de Clientes
CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY,
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
    id_fornecedor INT PRIMARY KEY,
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
    id_forma_pagamento INT PRIMARY KEY,
    nome VARCHAR(50)
);

-- Tabela de Vendas
CREATE TABLE Venda (
    id_venda INT PRIMARY KEY,
    data VARCHAR(10),
    hora VARCHAR(8),
    id_cliente INT,
    total_venda VARCHAR(20),
    situacao_venda VARCHAR(20),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

-- Tabela de Itens de Venda
CREATE TABLE ItemVenda (
    id_venda INT,
    numeroItem INT,
    id_produto INT,
    quantidade VARCHAR(10),
    valor_unitario VARCHAR(20),
    total_item VARCHAR(20),
    PRIMARY KEY (id_venda, numeroItem),
    FOREIGN KEY (id_venda) REFERENCES Venda(id_venda),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);

-- Tabela de Formas de Pagamento de Vendas
CREATE TABLE FormaPagamentoVenda (
    id_venda INT,
    id_forma_pagamento INT,
    valor VARCHAR(20),
    FOREIGN KEY (id_venda) REFERENCES Venda(id_venda),
    FOREIGN KEY (id_forma_pagamento) REFERENCES FormaPagamento(id_forma_pagamento)
);

-- Tabela de Compras
CREATE TABLE Compra (
    id_compra INT PRIMARY KEY,
    data VARCHAR(10),
    hora VARCHAR(8),
    id_fornecedor INT,
    total_compra VARCHAR(20),
    situacao_compra VARCHAR(20),
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor(id_fornecedor)
);

-- Tabela de Itens de Compra
CREATE TABLE ItemCompra (
    id_compra INT,
    numeroItem INT,
    id_produto INT,
    quantidade VARCHAR(10),
    valor_unitario VARCHAR(20),
    total_item VARCHAR(20),
    PRIMARY KEY (id_compra, numeroItem),
    FOREIGN KEY (id_compra) REFERENCES Compra(id_compra),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);

-- Tabela de Contas a Receber
CREATE TABLE Conta_Receber (
    id_conta_receber INT PRIMARY KEY,
    descricao VARCHAR(200),
    id_cliente INT,
    data_lancamento VARCHAR(10),
    data_vencimento VARCHAR(10),
    valor VARCHAR(20),
    recebido VARCHAR(5),
    data_recebimento VARCHAR(10),
    valor_recebimento VARCHAR(20),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

-- Tabela de Contas a Pagar
CREATE TABLE Conta_Pagar (
    id_conta_pagar INT PRIMARY KEY,
    descricao VARCHAR(200),
    id_fornecedor INT,
    data_lancamento VARCHAR(10),
    data_vencimento VARCHAR(10),
    valor VARCHAR(20),
    pago VARCHAR(5),
    data_pagamento VARCHAR(10),
    valor_pagamento VARCHAR(20),
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor(id_fornecedor)
);

-- Tabela de Caixa
CREATE TABLE Caixa (
    id_caixa INT PRIMARY KEY,
    nome VARCHAR(100),
    saldo VARCHAR(20)
);

-- Tabela de Movimento de Caixa
CREATE TABLE MovimentoCaixa (
    id_movimento_caixa INT PRIMARY KEY,
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

