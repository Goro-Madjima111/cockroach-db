-- Создание таблицы "Табак"
CREATE TABLE tobacco (
    id SERIAL PRIMARY KEY,
    sort VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL,
    company VARCHAR(50) NOT NULL
);

-- Создание таблицы "Сигареты"
CREATE TABLE cigarettes (
    id SERIAL PRIMARY KEY,
    name_cigarettes VARCHAR(50) NOT NULL,
    brand VARCHAR(50) NOT NULL,
    paper VARCHAR(50) NOT NULL,
    no_of_buttons INT NOT NULL,
    quantity_per_pack INT NOT NULL,
    cost DECIMAL NOT null CHECK (cost >= 0),
    filter_cigarettes BOOLEAN,
    id_cigarettes INT,
    FOREIGN KEY (id_cigarettes) REFERENCES tobacco(id)
);

-- Создание таблицы "Сотрудники"
CREATE TABLE employee (
    id SERIAL PRIMARY KEY,
    name_employee VARCHAR(50) NOT NULL,
    last_name_employee VARCHAR(50) NOT NULL,
    native_land_employee VARCHAR(50),
    position_employee VARCHAR(50) NOT NULL,
    labor_book INT NOT NULL,
    salary INT NOT NULL
);

-- Создание таблицы "Потребители"
CREATE TABLE store (
    id SERIAL PRIMARY KEY,
    name_store VARCHAR(50) NOT NULL,
    address VARCHAR(50),
    OPF VARCHAR(50) NOT NULL,
    INN INT NOT NULL
);

-- Создание таблицы "Заказы"
CREATE TABLE orders (
    id INT NOT NULL,
    date_orders DATE,
    no_of_packs INT NOT NULL,
    id_store INT,
    FOREIGN KEY (id_store) REFERENCES store(id),
    id_cigarettes INT,
    FOREIGN KEY (id_cigarettes) REFERENCES cigarettes(id),
    id_employee INT,
    FOREIGN KEY (id_employee) REFERENCES employee(id)
);