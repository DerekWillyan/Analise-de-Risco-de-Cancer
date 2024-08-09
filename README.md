# Análise de Risco de Câncer

Este projeto realiza uma análise detalhada dos riscos de desenvolvimento e mortalidade para diferentes tipos de câncer, utilizando uma base de dados abrangente. O objetivo é identificar quais tipos de câncer apresentam o maior e menor risco para ambos os gêneros, oferecendo insights valiosos para pesquisadores e profissionais de saúde.

## 📊 Análises Realizadas

1. **Risco de Desenvolvimento:**
   - Identificação dos tipos de câncer com o maior e menor risco de desenvolvimento para homens e mulheres.

2. **Risco de Mortalidade:**
   - Identificação dos tipos de câncer com o maior e menor risco de mortalidade para ambos os gêneros.

## 🚀 Como Usar

1. **Clone o Repositório:**
   ```bash
   git clone https://github.com/DerekWillyan/Analise-de-Risco-de-Cancer.git
   cd Analise-de-Risco-de-Cancer
   ```

2. **Configuração do Ambiente:**
   Certifique-se de ter um ambiente SQL configurado para executar as consultas.

3. **Executando as Consultas:**
   - Utilize as consultas SQL fornecidas nos arquivos `queries.sql` para obter os dados necessários.
   - Execute as consultas no seu banco de dados SQL para gerar os resultados.

4. **Visualização:**
   - Importe os dados para uma ferramenta de visualização de dados, como Grafana, para criar e visualizar os dashboards.

## 📂 Arquivos Incluídos

- **`queries.sql`**: Contém as consultas SQL usadas para classificar e identificar os riscos de desenvolvimento e mortalidade.
- **`dashboard_screenshot.png`**: Print do dashboard mostrando a visualização dos dados (adicione o arquivo conforme necessário).

## 🛠 Tecnologias Utilizadas

- **SQL**: Para consultas e análise dos dados.
- **Grafana**: Para visualização dos dados (opcional).

## 📈 Exemplos de Consultas SQL

### Maior e Menor Risco de Desenvolvimento

```sql
(
    SELECT
        `Cancer Type`,
        ROUND(`Male Risk Development Percentage` * 100, 2) AS `Male Development Risk (%)`,
        ROUND(`Female Risk Development Percentage` * 100, 2) AS `Female Development Risk (%)`,
        'Highest Risk' AS `Risk Category`
    FROM
        CancerRisk
    ORDER BY
        `Male Risk Development Percentage` DESC,
        `Female Risk Development Percentage` DESC
    LIMIT 1
)
UNION
(
    SELECT
        `Cancer Type`,
        ROUND(`Male Risk Development Percentage` * 100, 2) AS `Male Development Risk (%)`,
        ROUND(`Female Risk Development Percentage` * 100, 2) AS `Female Development Risk (%)`,
        'Lowest Risk' AS `Risk Category`
    FROM
        CancerRisk
    ORDER BY
        `Male Risk Development Percentage` ASC,
        `Female Risk Development Percentage` ASC
    LIMIT 1
);
```

### Maior e Menor Risco de Mortalidade

```sql
(
    SELECT
        `Cancer Type`,
        ROUND(`Male Risk Dying Percentage` * 100, 2) AS `Male Mortality Risk (%)`,
        ROUND(`Female Risk Dying Percentage` * 100, 2) AS `Female Mortality Risk (%)`,
        'Highest Risk' AS `Risk Category`
    FROM
        CancerRisk
    ORDER BY
        `Male Risk Dying Percentage` DESC,
        `Female Risk Dying Percentage` DESC
    LIMIT 1
)
UNION
(
    SELECT
        `Cancer Type`,
        ROUND(`Male Risk Dying Percentage` * 100, 2) AS `Male Mortality Risk (%)`,
        ROUND(`Female Risk Dying Percentage` * 100, 2) AS `Female Mortality Risk (%)`,
        'Lowest Risk' AS `Risk Category`
    FROM
        CancerRisk
    ORDER BY
        `Male Risk Dying Percentage` ASC,
        `Female Risk Dying Percentage` ASC
    LIMIT 1
);
```

## 📜 Licença

Este projeto está licenciado sob a [MIT License](LICENSE).

## 📞 Contato

Se você tiver alguma dúvida ou sugestão, sinta-se à vontade para entrar em contato!
