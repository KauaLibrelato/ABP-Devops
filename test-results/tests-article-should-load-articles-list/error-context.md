# Test info

- Name: should load articles list
- Location: C:\Users\oziel.240016\Downloads\ABP-Devops\tests\article.spec.ts:3:5

# Error details

```
Error: page.goto: net::ERR_CONNECTION_REFUSED at http://localhost:1337/admin
Call log:
  - navigating to "http://localhost:1337/admin", waiting until "load"

    at C:\Users\oziel.240016\Downloads\ABP-Devops\tests\article.spec.ts:4:14
```

# Test source

```ts
   1 | import { test, expect } from '@playwright/test';
   2 |
   3 | test('should load articles list', async ({ page }) => {
>  4 |   await page.goto('http://localhost:1337/admin');
     |              ^ Error: page.goto: net::ERR_CONNECTION_REFUSED at http://localhost:1337/admin
   5 |   await page.fill('input[name=email]', 'admin@satc.edu.br');
   6 |   await page.fill('input[name=password]', 'welcomeToStrapi123');
   7 |   await page.click('button[type=submit]');
   8 |   await page.waitForURL('**/admin');
   9 |
  10 |   await page.goto('http://localhost:1337/admin/content-manager/collectionType/api::article.article');
  11 |   await expect(page).toHaveURL(/.*article.*/);
  12 | });
  13 |
```