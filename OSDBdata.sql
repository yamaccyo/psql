DROP TABLE packedsales CASCADE;
DROP TABLE sales CASCADE;
DROP TABLE employee CASCADE;
DROP TABLE customer CASCADE;
DROP TABLE product CASCADE;
DROP TABLE department CASCADE;
DROP TABLE nextsalary CASCADE;
DROP TABLE account CASCADE;

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  ����e�[�u��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
CREATE TABLE packedsales (
    psales_no           INTEGER    PRIMARY KEY  -- ����NO
  , psales_date         DATE                    -- ������t
  , emp_id              INTEGER                 -- �S����ID
  , cust_id             INTEGER                 -- �ڋqID
  , cust_address        VARCHAR(40)             -- �͂���Z��
  , cust_tel            VARCHAR(20)             -- �͂���d�b�ԍ�
  , delivery_date       DATE                    -- �͂��\���
  , delivery_time       TIME                    -- �͂��\�莞��
  , total               NUMERIC(9,2)            -- ���㍇�v���z
  , carriage            NUMERIC(9,2)            -- ����
  , excise              NUMERIC(9,2)            -- ����Ŋz
);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  ���㖾�׃e�[�u��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
CREATE TABLE sales (
    sales_no            INTEGER                       -- ���㖾��NO
  , psales_no           INTEGER                       -- ����NO
  , prod_id             INTEGER                       -- ���iID
  , quantity            NUMERIC(9,2)                  -- ����
  , price               NUMERIC(9,2)                  -- ����
  , PRIMARY KEY(sales_no, psales_no)
);                                      

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �S���҃e�[�u��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
CREATE TABLE employee (
    emp_id              INTEGER       PRIMARY KEY   -- �S����ID
  , dept_id             INTEGER                     -- ����ID
  , emp_name            VARCHAR(20)                 -- �S���Җ�
  , birthday            DATE                        -- ���N����
  , hiredate            DATE                        -- ���ДN����
  , gender              INTEGER                     -- ���� �i 1:�j  2:�� �j
  , sal                 NUMERIC(9,2)                -- ���^�z
  , comm                NUMERIC(7,2)                -- �R�~�b�V����
);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  ����e�[�u��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
CREATE TABLE department (
    dept_id             INTEGER       PRIMARY KEY     -- ����ID
  , dept_name           VARCHAR(20)                   -- ���喼
  , loc                 VARCHAR(32)                   -- �ꏊ
  , mgr_id              INTEGER                       -- �Ǘ���ID
  , adept_id            INTEGER                       -- �Ǘ�����ID
);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �ڋq�e�[�u��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
CREATE TABLE customer (
    cust_id             INTEGER       PRIMARY KEY     -- �ڋqID
  , cust_name           VARCHAR(20)                   -- �ڋq��
  , address             VARCHAR(40)                   -- �Z��
  , tel                 VARCHAR(20)                   -- �d�b�ԍ�
  , fax                 VARCHAR(20)                   -- FAX�ԍ�
);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  ���i�e�[�u��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
CREATE TABLE product (
    prod_id             INTEGER        PRIMARY KEY    -- ���iID
  , prod_name           VARCHAR(20)                   -- ���i��
  , model_no            VARCHAR(20)                   -- �^��
  , cost                NUMERIC(9,2)                  -- �W���P��
  , discount            NUMERIC(9,2)                  -- ���E������
);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �ڋq�e�[�u��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
TRUNCATE customer;
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(1,'��� �O','�a�̎R���a�̎R�s','073-123-XXXX','073-123-XXXX');
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(2,'���� �G','�����s���c��','03-3158-XXXX','03-3258-XXXX');
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(3,'�k�� �_��','���{���s�k��','06-1234-XXXX','06-1234-XXXX');
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(4,'�i�� ���v','�����s�a�J��','03-3124-XXXX','03-0124-XXXX');
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(5,'�֍� �C��','���{�򍲖�s','0724-99-XXXX','0724-99-XXXX');
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(6,'�ؓc ����','�����s������','03-3333-XXXX',NULL);
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(7,'�Ћ� ��','�����s�V�h��','03-1111-XXXX','03-1111-XXXX');
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(8,'�c�� ���q','�����s�i���','03-2222-XXXX','03-2222-XXXX');
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(9,'���� �a�v','�����s�ڍ��扺�ڍ�','03-3333-XXXX','03-3333-XXXX');
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(10,'�R�� ����','�����s��c��','03-4444-XXXX','03-4444-XXXX');
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(11,'���� ���v','�_�ސ쌧���s','044-505-XXXX','044-505-XXXX');
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(12,'�΋� �����Y','�D�y�s������','011-555-XXXX',NULL);
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(13,'�ēc �b���q','�����s�`��Ճm��','03-3987-XXXX','03-3987-XXXX');
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(14,'���c ����','�����s���c���蒬','03-3975-XXXX','03-3975-XXXX');
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(15,'���� ���F','�����s����','03-3123-XXXX','03-3123-XXXX');
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(16,'���� �a�`','���m�����C�s','0560-448-XXXX','0560-448-XXXX');
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(17,'���� ���','���{���s�嗄��','06-6777-XXXX','06-6777-XXXX');
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(18,'���c �ǎq','�����s�a�J��','03-3698-XXXX',NULL);
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(19,'�g�c ����','�_�ސ쌧���s','044-888-XXXX','044-888-XXXX');
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(20,'���c ���v','�����s������','03-3578-XXXX',NULL);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  ���i�e�[�u��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
TRUNCATE product;
INSERT INTO product(prod_id,prod_name,model_no,cost,discount)
VALUES(101,'�e���r','A1111',25000,0.7);
INSERT INTO product(prod_id,prod_name,model_no,cost,discount)
VALUES(102,'�r�f�I','B2222',12000,0.8);
INSERT INTO product(prod_id,prod_name,model_no,cost,discount)
VALUES(103,'MD�v���[���[','C3333',23500,0.8);
INSERT INTO product(prod_id,prod_name,model_no,cost,discount)
VALUES(104,'�X�e���I','D4444',56000,0.7);
INSERT INTO product(prod_id,prod_name,model_no,cost,discount)
VALUES(105,'�f�W�^���J����','E5555',18600,0.8);
INSERT INTO product(prod_id,prod_name,model_no,cost,discount)
VALUES(106,'�v�����^','F6666',23500,0.8);
INSERT INTO product(prod_id,prod_name,model_no,cost,discount)
VALUES(107,'�d�C�V�F�[�o�[','G7777',13800,NULL);
INSERT INTO product(prod_id,prod_name,model_no,cost,discount)
VALUES(108,'�z�C�[���}�E�X','H8888',8500,NULL);
INSERT INTO product(prod_id,prod_name,model_no,cost,discount)
VALUES(109,'�A�C����','I9999',10000,0.8);
INSERT INTO product(prod_id,prod_name,model_no,cost,discount)
VALUES(110,'�����R��','J0000',5800,NULL);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �S���҃e�[�u��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
TRUNCATE employee;
INSERT INTO employee(emp_id,dept_id,emp_name,birthday,hiredate,gender,sal,comm)
VALUES(1,10,'�H�� �͗m','1978/10/10','1990/12/17',1,800,100);
INSERT INTO employee(emp_id,dept_id,emp_name,birthday,hiredate,gender,sal,comm)
VALUES(2,10,'���{ ����q','1975/05/20','1991/02/20',2,1600,10);
INSERT INTO employee(emp_id,dept_id,emp_name,birthday,hiredate,gender,sal,comm)
VALUES(3,20,'���� �O�]','1974/06/01','1991/02/22',2,1250,NULL);
INSERT INTO employee(emp_id,dept_id,emp_name,birthday,hiredate,gender,sal,comm)
VALUES(4,20,'���� �G�a','1970/09/13','1991/04/02',1,2975,NULL);
INSERT INTO employee(emp_id,dept_id,emp_name,birthday,hiredate,gender,sal,comm)
VALUES(5,30,'���� �b���q','1985/03/16','2008/09/28',2,1250,10);
INSERT INTO employee(emp_id,dept_id,emp_name,birthday,hiredate,gender,sal,comm)
VALUES(6,30,'���c �ޏ��q','1983/12/24','2007/05/01',2,2850,10);
INSERT INTO employee(emp_id,dept_id,emp_name,birthday,hiredate,gender,sal,comm)
VALUES(7,30,'��� ���u','1971/10/17','2000/11/15',1,2450,10);
INSERT INTO employee(emp_id,dept_id,emp_name,birthday,hiredate,gender,sal,comm)
VALUES(8,40,'���� ���ߎq','1986/12/14','2008/12/03',2,3000,NULL);
INSERT INTO employee(emp_id,dept_id,emp_name,birthday,hiredate,gender,sal,comm)
VALUES(9,40,'��{ ���O','1978/04/02','2004/12/18',1,5000,NULL);
INSERT INTO employee(emp_id,dept_id,emp_name,birthday,hiredate,gender,sal,comm)
VALUES(10,40,'�H�� �V��','1990/02/10','1999/04/01',1,1500,NULL);
INSERT INTO employee(emp_id,dept_id,emp_name,birthday,hiredate,gender,sal,comm)
VALUES(11,90,'�ї� �����Y','1970/12/31','1990/04/01',1,8000,NULL);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  ����e�[�u��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
TRUNCATE department;
INSERT INTO department(dept_id,dept_name,loc,mgr_id,adept_id)
VALUES(10,'�c�ƕ�','�����s���c��',1,30);
INSERT INTO department(dept_id,dept_name,loc,mgr_id,adept_id)
VALUES(20,'�J����','�����s�`��',3,30);
INSERT INTO department(dept_id,dept_name,loc,mgr_id,adept_id)
VALUES(30,'��敔','�����s������',5,40);
INSERT INTO department(dept_id,dept_name,loc,mgr_id,adept_id)
VALUES(40,'�Ǘ���','�����s�䓌��',8,40);
INSERT INTO department(dept_id,dept_name,loc,mgr_id,adept_id)
VALUES(50,'������','�����s��c��',NULL,50);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  ����e�[�u��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
TRUNCATE packedsales;
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(1001,'2001/07/13',1,1,'�a�̎R���a�̎R�s','073-123-XXXX','2001/07/18','10:00',90000,0,3000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(1002,'2001/07/14',1,2,'���{���s','06-6123-XXXX','2001/07/19','10:00',20000,0,1000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(1003,'2001/07/18',2,3,'�����s�`��ԍ�2����','03-3123-XXXX','2001/07/20','10:00',85000,0,4250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(1004,'2001/07/18',2,4,'�����s��������3����','03-3123-XXXX','2001/07/21','10:00',180000,0,3000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(1005,'2001/07/18',3,5,'�����s���c���蒬','03-3123-XXXX','2001/07/22','10:00',25000,0,1250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(1006,'2001/07/18',3,6,'�����s�i��搼�ܔ��cXXX-XX','03-3123-XXXX','2001/07/23','10:00',30000,0,1500);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(1007,'2001/07/18',4,7,'�����s�䓌�扺�JX-X-X','03-3123-XXXX','2001/07/24','10:00',40000,0,2000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(1008,'2001/07/18',4,8,'���s�嗄��嗄��','06-6123-XXXX','2001/07/25','10:00',10000,0,500);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(1009,'2001/07/18',5,9,'�����s�a�J��L��XX-X','03-3123-XXXX','2001/07/26','10:00',45000,0,2250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(1010,'2001/07/18',5,10,'�����s��������{��','03-3123-XXXX','2001/07/27','10:00',6000,0,300);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�S�N�V��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(1,'1994/07/13',1,1,'�a�̎R���a�̎R�s','073-123-XXXX','1994/07/18','10:00',60000,0,3000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(2,'1994/07/14',1,2,'���{���s','06-6123-XXXX','1994/07/19','10:00',60000,0,1000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(3,'1994/07/18',2,3,'�����s�`��ԍ�2����','03-3123-XXXX','1994/07/20','10:00',85000,0,4250);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�S�N�W��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(4,'1994/08/18',2,4,'�����s��������3����','03-3123-XXXX','1994/08/21','10:00',120000,0,3000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(5,'1994/08/18',3,5,'�����s���c���蒬','03-3123-XXXX','1994/08/22','10:00',25000,0,1250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(6,'1994/08/18',3,6,'�����s�i��搼�ܔ��cXXX-XX','03-3123-XXXX','1994/08/23','10:00',30000,0,1500);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�S�N�X��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(7,'1994/09/18',4,7,'�����s�䓌�扺�JX-X-X','03-3123-XXXX','1994/09/24','10:00',60000,0,2000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(8,'1994/09/18',4,8,'���s�嗄��嗄��','06-6123-XXXX','1994/09/25','10:00',10000,0,500);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(9,'1994/09/18',5,9,'�����s�a�J��L��XX-X','03-3123-XXXX','1994/09/26','10:00',45000,0,2250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(10,'1994/09/18',5,10,'�����s��������{��','03-3123-XXXX','1994/09/27','10:00',24000,0,300);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�S�N�P�O��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(111,'1994/10/13',1,1,'�a�̎R���a�̎R�s','073-123-XXXX','1994/10/18','10:00',60000,0,3000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(112,'1994/10/14',1,2,'���{���s','06-6123-XXXX','1994/10/19','10:00',20000,0,1000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�S�N�P�P��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(113,'1994/11/18',2,3,'�����s�`��ԍ�2����','03-3123-XXXX','1994/11/20','10:00',85000,0,4250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(114,'1994/11/18',2,4,'�����s��������3����','03-3123-XXXX','1994/11/21','10:00',60000,0,3000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�S�N�P�Q��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(115,'1994/12/18',3,5,'�����s���c���蒬','03-3123-XXXX','1994/12/22','10:00',25000,0,1250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(116,'1994/12/18',3,6,'�����s�i��搼�ܔ��cXXX-XX','03-3123-XXXX','1994/12/23','10:00',30000,0,1500);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�T�N�P��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(217,'1995/01/18',4,7,'�����s�䓌�扺�JX-X-X','03-3123-XXXX','1995/01/24','10:00',40000,0,2000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(218,'1995/01/18',4,8,'���s�嗄��嗄��','06-6123-XXXX','1995/01/25','10:00',10000,0,500);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�T�N�S��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(219,'1995/04/18',5,9,'�����s�a�J��L��XX-X','03-3123-XXXX','1995/04/26','10:00',60000,0,2250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(220,'1995/04/18',5,10,'�����s��������{��','03-3123-XXXX','1995/04/27','10:00',6000,0,300);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�T�N�X��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(221,'1995/09/13',1,1,'�a�̎R���a�̎R�s','073-123-XXXX','1995/09/18','10:00',60000,0,3000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(222,'1995/09/14',1,2,'���{���s','06-6123-XXXX','1995/09/19','10:00',20000,0,1000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�T�N�P�Q��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(223,'1995/12/18',2,3,'�����s�`��ԍ�2����','03-3123-XXXX','1995/12/20','10:00',85000,0,4250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(224,'1995/12/18',2,4,'�����s��������3����','03-3123-XXXX','1995/12/21','10:00',120000,0,3000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�U�N�R��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(325,'1996/03/18',3,5,'�����s���c���蒬','03-3123-XXXX','1996/03/22','10:00',25000,0,1250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(326,'1996/03/18',3,6,'�����s�i��搼�ܔ��cXXX-XX','03-3123-XXXX','1996/03/23','10:00',30000,0,1500);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�U�N�V��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(327,'1996/07/18',4,7,'�����s�䓌�扺�JX-X-X','03-3123-XXXX','1996/07/24','10:00',40000,0,2000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(328,'1996/07/18',4,8,'���s�嗄��嗄��','06-6123-XXXX','1996/07/25','10:00',10000,0,500);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�U�N�P�O��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(329,'1996/10/18',5,9,'�����s�a�J��L��XX-X','03-3123-XXXX','1996/10/26','10:00',45000,0,2250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(330,'1996/10/18',5,10,'�����s��������{��','03-3123-XXXX','1996/10/27','10:00',6000,0,300);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�V�N�Q��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(431,'1997/02/13',1,1,'�a�̎R���a�̎R�s','073-123-XXXX','1997/02/18','10:00',60000,0,3000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(432,'1997/02/14',1,2,'���{���s','06-6123-XXXX','1997/02/19','10:00',20000,0,1000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�V�N�T��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(433,'1997/05/18',2,3,'�����s�`��ԍ�2����','03-3123-XXXX','1997/05/20','10:00',115000,0,4250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(434,'1997/05/18',2,4,'�����s��������3����','03-3123-XXXX','1997/05/21','10:00',60000,0,3000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�V�N�W��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(435,'1997/08/18',3,5,'�����s���c���蒬','03-3123-XXXX','1997/08/22','10:00',25000,0,1250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(436,'1997/08/18',3,6,'�����s�i��搼�ܔ��cXXX-XX','03-3123-XXXX','1997/08/23','10:00',30000,0,1500);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�V�N�P�P��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(437,'1997/11/18',4,7,'�����s�䓌�扺�JX-X-X','03-3123-XXXX','1997/11/24','10:00',40000,0,2000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(438,'1997/11/18',4,8,'���s�嗄��嗄��','06-6123-XXXX','1997/11/25','10:00',10000,0,500);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�W�N�R��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(541,'1998/03/13',1,1,'�a�̎R���a�̎R�s','073-123-XXXX','1998/03/18','10:00',120000,0,3000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(542,'1998/03/14',1,2,'���{���s','06-6123-XXXX','1998/03/19','10:00',20000,0,1000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�W�N�V��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(543,'1998/07/18',2,3,'�����s�`��ԍ�2����','03-3123-XXXX','1998/07/20','10:00',85000,0,4250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(544,'1998/07/18',2,4,'�����s��������3����','03-3123-XXXX','1998/07/21','10:00',60000,0,3000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(545,'1998/07/18',3,5,'�����s���c���蒬','03-3123-XXXX','1998/07/22','10:00',25000,0,1250);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�W�N�P�O��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(547,'1998/10/18',4,7,'�����s�䓌�扺�JX-X-X','03-3123-XXXX','1998/10/24','10:00',40000,0,2000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(548,'1998/10/18',4,8,'���s�嗄��嗄��','06-6123-XXXX','1998/10/25','10:00',10000,0,500);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�X�N�R��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(653,'1999/03/18',2,3,'�����s�`��ԍ�2����','03-3123-XXXX','1999/03/20','10:00',85000,0,4250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(654,'1999/03/18',2,4,'�����s��������3����','03-3123-XXXX','1999/03/21','10:00',60000,0,3000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(655,'1999/03/18',3,5,'�����s���c���蒬','03-3123-XXXX','1999/03/22','10:00',75000,0,1250);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�X�N�U��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(656,'1999/06/18',3,6,'�����s�i��搼�ܔ��cXXX-XX','03-3123-XXXX','1999/06/23','10:00',30000,0,1500);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(657,'1999/06/18',4,7,'�����s�䓌�扺�JX-X-X','03-3123-XXXX','1999/06/24','10:00',40000,0,2000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�X�N�X��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(658,'1999/09/18',4,8,'���s�嗄��嗄��','06-6123-XXXX','1999/09/25','10:00',10000,0,500);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(659,'1999/09/18',5,9,'�����s�a�J��L��XX-X','03-3123-XXXX','1999/09/26','10:00',45000,0,2250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(660,'1999/09/18',5,10,'�����s��������{��','03-3123-XXXX','1999/09/27','10:00',6000,0,300);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �Q�O�O�O�N�P��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(771,'2000/01/13',1,1,'�a�̎R���a�̎R�s','073-123-XXXX','2000/01/18','10:00',90000,0,3000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(772,'2000/01/14',1,2,'���{���s','06-6123-XXXX','2000/01/19','10:00',20000,0,1000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(773,'2000/01/18',2,3,'�����s�`��ԍ�2����','03-3123-XXXX','2000/01/20','10:00',85000,0,4250);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �Q�O�O�O�N�T��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(774,'2000/05/18',2,4,'�����s��������3����','03-3123-XXXX','2000/05/21','10:00',60000,0,3000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(775,'2000/05/18',3,5,'�����s���c���蒬','03-3123-XXXX','2000/05/22','10:00',25000,0,1250);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �Q�O�O�O�N�V��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(776,'2000/07/18',3,6,'�����s�i��搼�ܔ��cXXX-XX','03-3123-XXXX','2000/07/23','10:00',30000,0,1500);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(777,'2000/07/18',4,7,'�����s�䓌�扺�JX-X-X','03-3123-XXXX','2000/07/24','10:00',40000,0,2000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �Q�O�O�O�N�X��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(778,'2000/09/18',4,8,'���s�嗄��嗄��','06-6123-XXXX','2000/09/25','10:00',10000,0,500);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(779,'2000/09/18',5,9,'�����s�a�J��L��XX-X','03-3123-XXXX','2000/09/26','10:00',45000,0,2250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(780,'2000/09/18',5,10,'�����s��������{��','03-3123-XXXX','2000/09/27','10:00',30000,0,300);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �Q�O�O�O�N�P�Q��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(781,'2000/12/13',1,1,'�a�̎R���a�̎R�s','073-123-XXXX','2000/12/18','10:00',60000,0,3000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(782,'2000/12/14',1,2,'���{���s','06-6123-XXXX','2000/12/19','10:00',20000,0,1000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �Q�O�O�P�N�P��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(883,'2001/01/18',2,3,'�����s�`��ԍ�2����','03-3123-XXXX','2001/01/20','10:00',85000,0,4250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(884,'2001/01/18',2,4,'�����s��������3����','03-3123-XXXX','2001/01/21','10:00',60000,0,3000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �Q�O�O�P�N�R��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(885,'2001/03/18',3,5,'�����s���c���蒬','03-3123-XXXX','2001/03/22','10:00',50000,0,1250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(886,'2001/03/18',3,6,'�����s�i��搼�ܔ��cXXX-XX','03-3123-XXXX','2001/03/23','10:00',30000,0,1500);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �Q�O�O�P�N�T��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(887,'2001/05/18',4,7,'�����s�䓌�扺�JX-X-X','03-3123-XXXX','2001/05/24','10:00',40000,0,2000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(888,'2001/05/18',4,8,'���s�嗄��嗄��','06-6123-XXXX','2001/05/25','10:00',10000,0,500);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(889,'2001/05/18',5,9,'�����s�a�J��L��XX-X','03-3123-XXXX','2001/05/26','10:00',45000,0,2250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(890,'2001/05/18',5,10,'�����s��������{��','03-3123-XXXX','2001/05/27','10:00',6000,0,300);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  ���㖾�׃e�[�u��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
TRUNCATE sales;
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,1001,101,2,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,1001,103,1,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,1002,102,1,20000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,1003,103,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,1003,105,1,25000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(3,1003,106,1,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,1004,104,3,60000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,1005,105,1,25000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,1006,106,1,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,1007,102,1,20000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,1007,106,1,20000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,1008,108,1,10000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,1009,106,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,1009,109,1,15000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,1010,110,1,6000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�S�N�V��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,1,101,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,1,103,1,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,2,102,3,20000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,3,103,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,3,105,1,25000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(3,3,106,1,30000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�S�N�W��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,4,104,2,60000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,5,105,1,25000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,6,106,1,30000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�S�N�X��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,7,102,1,20000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,7,106,2,20000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,8,108,1,10000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,9,106,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,9,109,1,15000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,10,110,4,6000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�S�N�P�O��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,111,101,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,111,103,1,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,112,102,1,20000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�S�N�P�P��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,113,103,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,113,105,1,25000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(3,113,106,1,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,114,104,1,60000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�S�N�P�Q��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,115,105,1,25000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,116,106,1,30000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�T�N�P��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,217,102,1,20000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,217,106,1,20000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,218,108,1,10000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�T�N�S��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,219,106,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,219,109,2,15000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,220,110,1,6000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�T�N�X��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,221,101,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,221,103,1,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,222,102,1,20000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�T�N�P�Q��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,223,103,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,223,105,1,25000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(3,223,106,1,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,224,104,2,60000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�U�N�R��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,325,105,1,25000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,326,106,1,30000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�U�N�V��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,327,102,1,20000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,327,106,1,20000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,328,108,1,10000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�U�N�P�O��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,329,106,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,329,109,1,15000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,330,110,1,6000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�V�N�Q��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,431,101,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,431,103,1,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,432,102,1,20000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�V�N�T��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,433,103,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,433,105,1,25000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(3,433,106,2,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,434,104,1,60000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�V�N�W��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,435,105,1,25000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,436,106,1,30000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�V�N�P�P��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,437,102,1,20000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,437,106,1,20000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,438,108,1,10000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�W�N�R��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,541,101,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,541,103,3,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,542,102,1,20000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�W�N�V��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,543,103,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,543,105,1,25000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(3,543,106,1,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,544,104,1,60000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,545,105,1,25000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�W�N�P�O��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,547,102,1,20000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,547,106,1,20000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,548,108,1,10000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�X�N�R��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,653,103,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,653,105,1,25000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(3,653,106,1,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,654,104,1,60000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,655,105,3,25000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�X�N�U��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,656,106,1,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,657,102,1,20000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,657,106,1,20000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �P�X�X�X�N�X��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,658,108,1,10000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,659,106,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,659,109,1,15000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,660,110,1,6000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �Q�O�O�O�N�P��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,771,101,2,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,771,103,1,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,772,102,1,20000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,773,103,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,773,105,1,25000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(3,773,106,1,30000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �Q�O�O�O�N�T��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,774,104,1,60000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,775,105,1,25000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �Q�O�O�O�N�V��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,776,106,1,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,777,102,1,20000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,777,106,1,20000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �Q�O�O�O�N�X��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,778,108,1,10000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,779,106,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,779,109,1,15000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,780,110,5,6000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �Q�O�O�O�N�P�Q��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,781,101,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,781,103,1,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,782,102,1,20000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �Q�O�O�P�N�P��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,883,103,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,883,105,1,25000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(3,883,106,1,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,884,104,1,60000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �Q�O�O�P�N�R��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,885,105,2,25000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,886,106,1,30000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �Q�O�O�P�N�T��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,887,102,1,20000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,887,106,1,20000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,888,108,1,10000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,889,106,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,889,109,1,15000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,890,110,1,6000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -
UPDATE packedsales SET carriage = 100 
    where cust_tel NOT like '03%'
;    

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  ���N���^�e�[�u��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
CREATE TABLE nextsalary (
      emp_id    INTEGER PRIMARY KEY
    , current   NUMERIC(9, 2)
    , next      NUMERIC(9, 2)
);
INSERT INTO nextsalary VALUES( 1,  800.00, 1000.00);
INSERT INTO nextsalary VALUES( 2, 1600.00,    0.00);
INSERT INTO nextsalary VALUES( 3, 1250.00);
INSERT INTO nextsalary VALUES( 4, 2975.00);
INSERT INTO nextsalary VALUES( 5, 1250.00,    0.00);
INSERT INTO nextsalary VALUES( 6, 2850.00);
INSERT INTO nextsalary VALUES( 7, 2450.00, 2500.00);
INSERT INTO nextsalary VALUES( 8, 3000.00, 2500.00);
INSERT INTO nextsalary VALUES( 9, 5000.00);
INSERT INTO nextsalary VALUES(10, 1500.00,    0.00);
INSERT INTO nextsalary VALUES(11, 8000.00, 6000.00);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  �����e�[�u��
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
CREATE TABLE account(emp_id INTEGER, balance INTEGER);
INSERT INTO account VALUES(6, 1000);
INSERT INTO account VALUES(8, 1000);
-- SELECT * FROM account;