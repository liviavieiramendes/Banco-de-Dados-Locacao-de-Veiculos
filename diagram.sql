create database Locadora; 
use Locadora; 

create table Cliente ( 
idCliente int not null, 
CPF varchar(20) not null, 
    nome varchar(50) not null, 
    telefone varchar(20) not null, 
    email varchar(50) not null, 
    endereco varchar(100) not null, 
    primary key (idCliente) 
); 

create table Veiculo ( 
idVeiculo int not null, 
    modelo varchar(50) not null, 
    marca varchar(50) not null, 
    ano int not null, 
    placa varchar(10) not null, 
    valorDiaria decimal (7,2) not null, 
    estado enum ('Disponível', 'Alugado', 'Manutenção') not null, 
    primary key (idVeiculo) 
); 

create table Pagamento ( 
idPagamento int not null, 
    forma enum ('Cartão', 'Pix', 'Dinheiro') not null, 
    dataPagamento date not null, 
    valorTotal decimal (7,2) not null, 
    estado enum ('Pago', 'Pendente') not null, 
    primary key (idPagamento) 
); 

create table Manutencao ( 
idManutencao int not null, 
    idVeiculo int not null, 
    descricao varchar(100) not null, 
    dataManutencao date not null, 
    custo decimal (7,2) not null, 
    primary key (idManutencao), 
    foreign key (idVeiculo) references Veiculo (idVeiculo) 
); 

create table Locacao ( 
idLocacao int not null, 
    idCliente int not null, 
    idPagamento int not null, 
    dataInicio date not null, 
    dataFim date not null, 
    primary key (idLocacao), 
    foreign key (idCliente) references Cliente (idCliente), 
    foreign key (idPagamento) references Pagamento (idPagamento) 
); 

create table LocacaoVeiculo ( 
idLocacao int not null, 
    idVeiculo int not null, 
    primary key (idLocacao, idVeiculo), 
    foreign key (idLocacao) references Locacao (idLocacao), 
    foreign key (idVeiculo) references Veiculo (idVeiculo) 
); 

insert into Cliente (idCliente, CPF, nome, telefone, email, endereco) values 
    (1,'123.456.789-10', 'Amanda', '(11) 4545-5555', 'amanda@email.com', 'Avenida Sete de Setembro, 3050, Curitiba - PR'), 
    (2,'123.456.789-11', 'Bruno', '(11) 5555-3333', 'bruno@email.com','Avenida Brasil, 1234, Brasília - DF'), 
    (3,'123.456.789-12', 'Cristina', '(11) 2222-0000', 'cristina@email.com','Avenida Buenos Aires, 250, São Luiz - MA'), 
    (4,'123.456.789-13', 'Daniel', '(11) 2222-0000', 'daniel@email.com','Av. Presidente Carlos Luz, 3001, Belo Horizonte - MG'), 
    (5,'123.456.789-14', 'Maisa', '(11) 4002-8922', 'maisa@email.com','Avenida das Comunicações, 1147, Osasco/SP'), 
    (6,'123.456.789-15', 'Fernando', '(11) 1972-1976', 'fernando@email.com','Avenida José Caballero, 261, Santo André - SP'); 
select * from Cliente; 

insert into Veiculo (idVeiculo, modelo, marca, ano, placa, valorDiaria, estado) values 
    (1, 'HB20', 'Hyundai', 2022, 'HYU-2B20', 160, 'Disponível'), 
    (2, 'HR-V', 'Honda', 2023, 'HON-3H23', 220, 'Alugado'), 
    (3, 'Civic', 'Honda', 2021, 'CIV-1C21', 200, 'Manutenção'), 
    (4, 'F-Pace', 'Jaguar', 2022, 'JAG-4F22', 450, 'Disponível'), 
    (5, 'Fox', 'Volkswagen', 2020, 'VWX-5F20', 140, 'Alugado'); 
select * from Veiculo; 

insert into Pagamento (idPagamento, forma, dataPagamento, valorTotal, estado) values 
    (1, 'Pix', '2025-06-20', 480.00, 'Pago'), 
    (2, 'Cartão', '2025-06-21', 1800.00, 'Pago'), 
    (3, 'Dinheiro', '2025-06-22', 400.00, 'Pendente'), 
    (4, 'Cartão', '2025-06-22', 160.00, 'Pendente'), 
    (5, 'Pix', '2025-06-23', 980.00, 'Pendente'), 
    (6, 'Dinheiro', '2025-06-23', 1100.00, 'Pago'); 
select * from Pagamento; 

insert into Manutencao (idManutencao, idVeiculo, descricao, dataManutencao, custo) values 
    (1, 3, 'Revisão completa dos freios', '2025-06-20', 350), 
    (2, 1, 'Troca de óleo e filtros', '2025-06-01', 250), 
    (3, 2, 'Revisão do sistema elétrico', '2025-05-25', 400), 
    (4, 4, 'Alinhamento e balanceamento', '2025-06-15', 180), 
    (5, 3, 'Troca de pneus', '2025-06-20', 800),
    (6, 5, 'Troca de pastilhas de freio', '2025-06-30', 320); 
select * from Manutencao; 

insert into Locacao (idLocacao, idCliente, idPagamento, dataInicio, dataFim) values 
    (1, 1, 1, '2025-06-17', '2025-06-20'), 
    (2, 2, 2, '2025-06-18', '2025-06-23'), 
    (3, 3, 6, '2025-06-20', '2025-06-23'), 
    (4, 4, 3, '2025-07-01', '2025-07-03'), 
    (5, 5, 4, '2025-07-05', '2025-07-10'), 
    (6, 6, 5, '2025-07-08', '2025-07-13'); 
select * from Locacao; 

insert into LocacaoVeiculo (idLocacao, idVeiculo) values 
    (1, 1), 
    (2, 2), 
    (3, 4),
    (4, 3), 
    (5, 5), 
    (6, 1); 
select * from LocacaoVeiculo; 
