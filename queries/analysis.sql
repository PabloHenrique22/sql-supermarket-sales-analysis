-- Faturamento Geral

SELECT
SUM(total) AS total_revenue
FROM supermarket_sales;

-- Receita total por cidade

SELECT
    city,
    SUM(total) AS total_sales
FROM supermarket_sales
GROUP BY city
ORDER BY total_sales DESC;

-- Receita por linha de produto

SELECT
product_line,
SUM(total) AS revenue
FROM supermarket_sales
GROUP BY product_line
ORDER BY revenue DESC;

-- Quantidade de produtos vendidos

SELECT
product_line,
SUM(quantity) AS items_sold
FROM supermarket_sales
GROUP BY product_line
ORDER BY items_sold DESC;

-- Método de pagamento mais utilizado

SELECT
    payment,
    COUNT(*) AS total_transactions
FROM supermarket_sales
GROUP BY payment
ORDER BY total_transactions DESC;

-- Ticket médio

SELECT
ROUND(AVG(total),2) AS average_ticket
FROM supermarket_sales;

-- Ticket médio por cidade

SELECT
city,
ROUND(AVG(total),2) AS average_ticket
FROM supermarket_sales
GROUP BY city
ORDER BY average_ticket DESC;

-- Receita por gênero

SELECT
gender,
SUM(total) AS revenue
FROM supermarket_sales
GROUP BY gender;

-- Ranking de cidades (Window Function)

SELECT
city,
SUM(total) AS revenue,
RANK() OVER (ORDER BY SUM(total) DESC) AS ranking
FROM supermarket_sales
GROUP BY city;

-- Produtos mais vendidos

SELECT
product_line,
SUM(quantity) AS total_items
FROM supermarket_sales
GROUP BY product_line
ORDER BY total_items DESC;

