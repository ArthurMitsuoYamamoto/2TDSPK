create table País (id_país number primary key,
                    nome varchar2(30));
                    
create table estado (id_estado number primary key,
                        nome   varchar2(30),
                        id_pais number);
                        
alter table estado add constraint fk_estado 
foreign key (id_pais) references pais (id_pais);

create table cidade (id_cidade number,
                    nome varchar2(30),
                     id_cidade number);
                    
                    
alter table cidade add constraint fk_cidade
foreign key (id_estado) references cidade (id_estado);

create table bairro (id_bairro number,
                    nome varchar2(30),
                    id_cidade number);
ALTER TABLE BAIRRO ADD CONSTRAINT FK_BAIRRO
FOREIGN KEY (ID_CIDADE) REFERENCES CIDADE (ID_CIDADE);

CREATE TABLE ENDERECO_CLIENTE (ID_CLIENTE NUMBER,
                                NOME VARCHAR2(100),
                                CEP VARCHAR2(12),
                                ID_BAIRRO NUMBER);

ALTER TABLE ENDERECO_CLIENTE ADD CONSTRAINT FK_END_CLIENTE
FOREIGN KEY (ID_BAIRRO) REFERENCES BAIRRO (ID_BAIRRO);
                    

                    