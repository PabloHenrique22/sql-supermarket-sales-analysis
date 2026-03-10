-- Receita total por cidade

SELECT
    city,
    SUM(total) AS total_sales
FROM supermarket_sales
GROUP BY city
ORDER BY total_sales DESC;

-- Método de pagamento mais utilizado

SELECT
    payment,
    COUNT(*) AS total_transactions
FROM supermarket_sales
GROUP BY payment
ORDER BY total_transactions DESC;
