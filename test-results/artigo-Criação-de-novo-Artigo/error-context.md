# Test info

- Name: Criação de novo Artigo
- Location: C:\Users\kaua.285321\Documents\ABP-Devops\tests\playwright\artigo.spec.ts:3:5

# Error details

```
Error: page.click: Target page, context or browser has been closed
Call log:
  - waiting for locator('text=Article')

    at C:\Users\kaua.285321\Documents\ABP-Devops\tests\playwright\artigo.spec.ts:13:14
```

# Test source

```ts
   1 | import { expect, test } from "@playwright/test";
   2 |
   3 | test("Criação de novo Artigo", async ({ page }) => {
   4 |   await page.goto("http://localhost:1337/admin");
   5 |
   6 |   await page.fill('input[name="email"]', "admin@satc.edu.br");
   7 |   await page.fill('input[name="password"]', "welcomeToStrapi123");
   8 |   await page.click('button[type="submit"]');
   9 |
  10 |   await page.waitForSelector("text=Content Manager");
  11 |
  12 |   // Vai para a collection Article
> 13 |   await page.click("text=Article");
     |              ^ Error: page.click: Target page, context or browser has been closed
  14 |
  15 |   // Cria novo artigo
  16 |   await page.click("text=Create new entry");
  17 |
  18 |   // Preenche os campos
  19 |   await page.fill(
  20 |     'input[placeholder="e.g. My amazing blog post"]',
  21 |     "Artigo Playwright"
  22 |   );
  23 |   await page.fill(
  24 |     'textarea[placeholder="e.g. Once upon a time..."]',
  25 |     "Esse é um artigo de teste automatizado"
  26 |   );
  27 |
  28 |   // Salva
  29 |   await page.click("text=Save");
  30 |
  31 |   await expect(page.locator("text=Entry created")).toBeVisible();
  32 | });
  33 |
```