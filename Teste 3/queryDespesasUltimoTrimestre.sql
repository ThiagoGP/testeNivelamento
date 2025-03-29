WITH ranking AS (
    SELECT 
        o.razao_social,
        SUM(d.vl_saldo_final) AS total_despesas,
        ROW_NUMBER() OVER (ORDER BY SUM(d.vl_saldo_final) DESC) AS ranking
    FROM demonstracoes_contabeis d
    JOIN operadoras_ativas o ON d.reg_ans = o.registro_ans
    WHERE d.descricao = 'EVENTOS/ SINISTROS CONHECIDOS OU AVISADOS  DE ASSISTÊNCIA A SAÚDE MEDICO HOSPITALAR '
    AND DATE(d.data) = '2024-10-01'
    GROUP BY o.razao_social
)
SELECT ranking, razao_social  AS operadora, total_despesas
FROM ranking
WHERE ranking <= 10
ORDER BY ranking;