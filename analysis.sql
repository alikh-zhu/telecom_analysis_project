-- Общ кол-во клиентов
SELECT COUNT(*) AS total_customers
FROM customers;

-- Отток по типу контракта
SELECT Contract,
       COUNT(*) AS total,
       SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned
FROM customers
GROUP BY Contract;
