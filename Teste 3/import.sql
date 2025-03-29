LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Relatorio_cadop.csv'
INTO TABLE operadoras_ativas
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(registro_ans, cnpj, razao_social, nome_fantasia, modalidade, logradouro, numero, complemento, bairro, cidade, uf, cep, ddd, telefone, fax, endereco_eletronico, representante, cargo_representante, @regiao_comercializacao, data_registro_ans)
SET regiao_comercializacao = NULLIF(@regiao_comercializacao, '');


LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/1T2023.csv"
INTO TABLE demonstracoes_contabeis
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(data, reg_ans, cd_conta_contabil, descricao, 
  @vl_saldo_inicial, @vl_saldo_final)
SET 
  vl_saldo_inicial = REPLACE(@vl_saldo_inicial, ',', '.'),
  vl_saldo_final = REPLACE(@vl_saldo_final, ',', '.');
  
LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/2t2023.csv"
INTO TABLE demonstracoes_contabeis
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(data, reg_ans, cd_conta_contabil, descricao, 
  @vl_saldo_inicial, @vl_saldo_final)
SET 
  vl_saldo_inicial = REPLACE(@vl_saldo_inicial, ',', '.'),
  vl_saldo_final = REPLACE(@vl_saldo_final, ',', '.');
  
LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/3T2023.csv"
INTO TABLE demonstracoes_contabeis
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(data, reg_ans, cd_conta_contabil, descricao, 
  @vl_saldo_inicial, @vl_saldo_final)
SET 
  vl_saldo_inicial = REPLACE(@vl_saldo_inicial, ',', '.'),
  vl_saldo_final = REPLACE(@vl_saldo_final, ',', '.');

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/4T2023.csv"
INTO TABLE demonstracoes_contabeis
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@data, reg_ans, cd_conta_contabil, descricao, 
  @vl_saldo_inicial, @vl_saldo_final)
SET 
  data = STR_TO_DATE(@data, '%d/%m/%Y'),
  vl_saldo_inicial = REPLACE(@vl_saldo_inicial, ',', '.'),
  vl_saldo_final = REPLACE(@vl_saldo_final, ',', '.');

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/1T2024.csv"
INTO TABLE demonstracoes_contabeis
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(data, reg_ans, cd_conta_contabil, descricao, 
  @vl_saldo_inicial, @vl_saldo_final)
SET 
  vl_saldo_inicial = REPLACE(@vl_saldo_inicial, ',', '.'),
  vl_saldo_final = REPLACE(@vl_saldo_final, ',', '.');
  
LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/2T2024.csv"
INTO TABLE demonstracoes_contabeis
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(data, reg_ans, cd_conta_contabil, descricao, 
  @vl_saldo_inicial, @vl_saldo_final)
SET 
  vl_saldo_inicial = REPLACE(@vl_saldo_inicial, ',', '.'),
  vl_saldo_final = REPLACE(@vl_saldo_final, ',', '.');
  
LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/3T2024.csv"
INTO TABLE demonstracoes_contabeis
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(data, reg_ans, cd_conta_contabil, descricao, 
  @vl_saldo_inicial, @vl_saldo_final)
SET 
  vl_saldo_inicial = REPLACE(@vl_saldo_inicial, ',', '.'),
  vl_saldo_final = REPLACE(@vl_saldo_final, ',', '.');
  
LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/4T2024.csv"
INTO TABLE demonstracoes_contabeis
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(data, reg_ans, cd_conta_contabil, descricao, 
  @vl_saldo_inicial, @vl_saldo_final)
SET 
  vl_saldo_inicial = REPLACE(@vl_saldo_inicial, ',', '.'),
  vl_saldo_final = REPLACE(@vl_saldo_final, ',', '.');