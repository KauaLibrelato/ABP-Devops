import { expect, test } from "@playwright/test";

test("should load articles list", async ({ page }) => {
  await page.goto("http://localhost:1337/admin");
  await page.fill("input[name=email]", "admin@satc.edu.br");
  await page.fill("input[name=password]", "welcomeToStrapi123");
  await page.click("button[type=submit]");

  await page.goto(
    "http://localhost:1337/admin/content-manager/collectionType/api::article.article"
  );
  await expect(page).toHaveURL(/.*article.*/);
});
