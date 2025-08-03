# Banco de Dados - Locadora de Veículos Fictícia 

Esse projeto foi criado para organizar e armazenar os dados de uma locadora de veículos. O modelo foi desenvolvido com base em regras de negócio conforme informado no pitch inicial da solicitação.

Tecnologias utilizadas: SQL e Draw.io

--- 

# Modelo MER

<img width="1096" height="715" alt="image" src="https://github.com/user-attachments/assets/2f09b71e-e165-4cb8-867e-43f0b9a21a67" />

---

# Funcionalidades

- Cadastro de clientes
- Cadastro de veículos com status (disponível, alugado, manutenção)
- Registro de locações com data de retirada e devolução
- Controle de pagamentos e formas de pagamento
- Relacionamento entre cliente, veículo, locação e pagamento

---

# Pitch Inicial

Uma Locadora de Veículos necessita controlar os dados de seus clientes, veículos, locações, pagamentos e manutenções. Para isso, contratou um profissional de Banco de Dados para modelar o sistema que armazenará todas as informações de forma organizada e segura.

As regras de negócio são:

- Cliente – Deverão ser armazenados os seguintes dados: identificação do cliente, CPF, nome, telefone, e-mail e endereço completo.
- Veículo – Deverão ser armazenados os seguintes dados: identificação do veículo, modelo, marca, ano, placa, valor da diária e estado (disponível, alugado ou manutenção).
- Locação – Deverão ser armazenados os seguintes dados: identificação da locação, cliente responsável, pagamento associado, data de início e data de término da locação.
- LocaçãoVeículo – Deverão ser armazenados os seguintes dados: identificação da locação e do(s) veículo(s) associado(s), permitindo que uma locação envolva mais de um veículo.
- Pagamento – Deverão ser armazenados os seguintes dados: identificação do pagamento, forma (cartão, pix ou dinheiro), data do pagamento, valor total e estado (pago ou pendente).
- Manutenção – Deverão ser armazenados os seguintes dados: identificação da manutenção, veículo relacionado, descrição do serviço, data da manutenção e custo.
- Um cliente pode realizar uma ou várias locações.
- Uma locação está vinculada a um ou vários veículos (através da entidade associativa LocacaoVeiculo).
- Cada locação possui um pagamento.
- Um veículo pode participar de várias locações ao longo do tempo.
- Um veículo pode ter uma ou várias manutenções registradas.
