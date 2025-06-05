# Test info

- Name: Criação de nova Categoria
- Location: C:\Users\kaua.285321\Documents\ABP-Devops\tests\playwright\categoria.spec.ts:3:5

# Error details

```
Error: page.click: Target page, context or browser has been closed
Call log:
  - waiting for locator('text=Categoria')

    at C:\Users\kaua.285321\Documents\ABP-Devops\tests\playwright\categoria.spec.ts:14:14
```

# Test source

```ts
   1 | import { expect, test } from "@playwright/test";
   2 |
   3 | test("Criação de nova Categoria", async ({ page }) => {
   4 |   await page.goto("http://localhost:1337/admin");
   5 |
   6 |   await page.fill('input[name="email"]', "admin@satc.edu.br");
   7 |   await page.fill('input[name="password"]', "welcomeToStrapi123");
   8 |   await page.click('button[type="submit"]');
   9 |
  10 |   // Espera até o painel carregar
  11 |   await page.waitForSelector("text=Content Manager");
  12 |
  13 |   // Vai para a collection Categoria
> 14 |   await page.click("text=Categoria");
     |              ^ Error: page.click: Target page, context or browser has been closed
  15 |
  16 |   // Cria nova entrada
  17 |   await page.click("text=Create new entry");
  18 |
  19 |   // Preenche o campo de nome
  20 |   await page.fill(
  21 |     'input[placeholder="e.g. Tecnologia"]',
  22 |     "Categoria Teste Playwright"
  23 |   );
  24 |
  25 |   // Salva
  26 |   await page.click("text=Save");
  27 |
  28 |   // Verifica mensagem de sucesso
  29 |   await expect(page.locator("text=Entry created")).toBeVisible();
  30 | });
  31 |
```