const { Given, When, Then } = require("@cucumber/cucumber");

Given("I have a calculator", async function () {
  await browser.url("http://juliemr.github.io/protractor-demo/");
  await browser.pause(2000);
});

When(
  /^I enter ([^"]*) and ([^"]*) and choose ([^"]*) and press button$/,
  async function (first_num, second_num, math) {
    const input_1 = await browser.$("/html/body/div/div/form/input[1]");
    await input_1.setValue(first_num);
    await browser.pause(1000);
    const input_2 = await browser.$("/html/body/div/div/form/input[2]");
    await input_2.setValue(second_num);
    await browser.pause(1000);
    const m = await browser.$("/html/body/div/div/form/select");
    await m.selectByVisibleText(math);
    //await browser.pause(2000);
    const b = await browser.$("//*[@id='gobutton']");
    await b.click();
    await browser.pause(2000);
  }
);

Then(/^the result should be ([^"]*)$/, async function (total) {
  const el = await browser.$("/html/body/div/div/form/h2");
  const res = await el.getText();
  await expect(res).toEqual(total);
});
